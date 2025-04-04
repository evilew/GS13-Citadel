/datum/round_event_control/pirates
	name = "Space Pirates"
	typepath = /datum/round_event/pirates
	weight = 8
	max_occurrences = 0 //GS13 - no antags, thanks
	min_players = 20
	earliest_start = 50 MINUTES
	dynamic_should_hijack = TRUE
	category = EVENT_CATEGORY_INVASION
	description = "The crew will either pay up, or face a pirate assault."

#define PIRATES_ROGUES "Rogues"
// #define PIRATES_SILVERSCALES "Silverscales"
// #define PIRATES_DUTCHMAN "Flying Dutchman"

/datum/round_event_control/pirates/preRunEvent()
	if (!SSmapping.empty_space)
		return EVENT_CANT_RUN

	return ..()

/datum/round_event/pirates/start()
	send_pirate_threat()

/proc/send_pirate_threat()
	var/pirate_type = PIRATES_ROGUES //pick(PIRATES_ROGUES, PIRATES_SILVERSCALES, PIRATES_DUTCHMAN)
	var/datum/comm_message/threat_msg = new
	var/payoff = 0
	var/payoff_min = 10000 //documented this time
	var/ship_template
	var/ship_name = "Space Privateers Association"
	var/initial_send_time = world.time
	var/response_max_time = 2 MINUTES
	switch(pirate_type)
		if(PIRATES_ROGUES)
			ship_name = pick(strings(PIRATE_NAMES_FILE, "rogue_names"))
		// if(PIRATES_SILVERSCALES)
		// 	ship_name = pick(strings(PIRATE_NAMES_FILE, "silverscale_names"))
		// if(PIRATES_DUTCHMAN)
		// 	ship_name = "Flying Dutchman"

	priority_announce("Incoming subspace communication. Secure channel opened at all communication consoles.", "Incoming Message", SSstation.announcer.get_rand_report_sound(), has_important_message = TRUE)
	var/datum/bank_account/D = SSeconomy.get_dep_account(ACCOUNT_CAR)
	if(D)
		payoff = max(payoff_min, FLOOR(D.account_balance * 0.80, 1000))
	switch(pirate_type)
		if(PIRATES_ROGUES)
			ship_template = /datum/map_template/shuttle/pirate/default
			threat_msg.title = "Sector protection offer"
			threat_msg.content = "Hey, pal, this is the [ship_name]. Can't help but notice you're rocking a wild and crazy shuttle there with NO INSURANCE! Crazy. What if something happened to it, huh?! We've done a quick evaluation on your rates in this sector and we're offering [payoff] to cover for your shuttle in case of any disaster."
			threat_msg.possible_answers = list("Purchase Insurance.","Reject Offer.")
		// if(PIRATES_SILVERSCALES)
		// 	ship_template = /datum/map_template/shuttle/pirate/silverscale
		// 	threat_msg.title = "Tribute to high society"
		// 	threat_msg.content = "This is the [ship_name]. The Silver Scales wish for some tribute from your plebeian lizards. [payoff] credits should do the trick."
		// 	threat_msg.possible_answers = list("We'll pay.","Tribute? Really? Go away.")
		// if(PIRATES_DUTCHMAN)
		// 	ship_template = /datum/map_template/shuttle/pirate/dutchman
		// 	threat_msg.title = "Business proposition"
		// 	threat_msg.content = "Ahoy! This be the [ship_name]. Cough up [payoff] credits or you'll walk the plank."
		// 	threat_msg.possible_answers = list("We'll pay.","We will not be extorted.")
	threat_msg.answer_callback = CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(pirates_answered), threat_msg, payoff, ship_name, initial_send_time, response_max_time, ship_template)
	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(spawn_pirates), threat_msg, ship_template, FALSE), response_max_time)
	SScommunications.send_message(threat_msg,unique = TRUE)

/proc/pirates_answered(datum/comm_message/threat_msg, payoff, ship_name, initial_send_time, response_max_time, ship_template)
	if(world.time > initial_send_time + response_max_time)
		priority_announce("Too late to beg for mercy!",sender_override = ship_name, has_important_message = TRUE)
		return
	if(threat_msg && threat_msg.answered == 1)
		var/datum/bank_account/D = SSeconomy.get_dep_account(ACCOUNT_CAR)
		if(D)
			if(D.adjust_money(-payoff))
				priority_announce("Thanks for the credits, landlubbers.",sender_override = ship_name, has_important_message = TRUE)
				return
			else
				priority_announce("Trying to cheat us? You'll regret this!",sender_override = ship_name, has_important_message = TRUE)
				spawn_pirates(threat_msg, ship_template, TRUE)

/proc/spawn_pirates(datum/comm_message/threat_msg, ship_template, skip_answer_check)
	if(!skip_answer_check && threat_msg?.answered == 1)
		return

	var/list/candidates = pollGhostCandidates("Do you wish to be considered for pirate crew?", ROLE_TRAITOR)
	shuffle_inplace(candidates)

	var/datum/map_template/shuttle/pirate/ship = new ship_template
	var/x = rand(TRANSITIONEDGE,world.maxx - TRANSITIONEDGE - ship.width)
	var/y = rand(TRANSITIONEDGE,world.maxy - TRANSITIONEDGE - ship.height)
	var/z = SSmapping.empty_space.z_value
	var/turf/T = locate(x,y,z)
	if(!T)
		CRASH("Pirate event found no turf to load in")

	if(!ship.load(T))
		CRASH("Loading pirate ship failed!")

	for(var/turf/A in ship.get_affected_turfs(T))
		for(var/obj/effect/mob_spawn/human/pirate/spawner in A)
			if(candidates.len > 0)
				var/mob/our_candidate = candidates[1]
				spawner.create(our_candidate.ckey)
				candidates -= our_candidate
				notify_ghosts("The pirate ship has an object of interest: [our_candidate]!", source=our_candidate, action=NOTIFY_ORBIT, header="Something's Interesting!")
			else
				notify_ghosts("The pirate ship has an object of interest: [spawner]!", source=spawner, action=NOTIFY_ORBIT, header="Something's Interesting!")

	priority_announce("Unidentified armed ship detected near the station.")

//Shuttle equipment

/obj/machinery/shuttle_scrambler
	name = "Data Siphon"
	desc = "This heap of machinery steals credits and data from unprotected systems and locks down cargo shuttles."
	icon = 'icons/obj/machines/dominator.dmi'
	icon_state = "dominator"
	density = TRUE
	var/active = FALSE
	var/credits_stored = 0
	var/siphon_per_tick = 5

/obj/machinery/shuttle_scrambler/Initialize(mapload)
	. = ..()
	update_icon()

/obj/machinery/shuttle_scrambler/process()
	if(active)
		if(is_station_level(z))
			var/datum/bank_account/D = SSeconomy.get_dep_account(ACCOUNT_CAR)
			if(D)
				var/siphoned = min(D.account_balance,siphon_per_tick)
				D.adjust_money(-siphoned)
				credits_stored += siphoned
			interrupt_research()
		else
			return
	else
		STOP_PROCESSING(SSobj,src)

/obj/machinery/shuttle_scrambler/proc/toggle_on(mob/user)
	SSshuttle.registerTradeBlockade(src)
	AddComponent(/datum/component/gps, "Nautical Signal")
	active = TRUE
	to_chat(user,"<span class='notice'>You toggle [src] [active ? "on":"off"].</span>")
	to_chat(user,"<span class='warning'>The scrambling signal can be now tracked by GPS.</span>")
	START_PROCESSING(SSobj,src)

/obj/machinery/shuttle_scrambler/interact(mob/user)
	if(!active)
		if(alert(user, "Turning the scrambler on will make the shuttle trackable by GPS. Are you sure you want to do it?", "Scrambler", "Yes", "Cancel") == "Cancel")
			return
		if(active || !user.canUseTopic(src, BE_CLOSE))
			return
		toggle_on(user)
		update_icon()
		send_notification()
	else
		dump_loot(user)

//interrupt_research
/obj/machinery/shuttle_scrambler/proc/interrupt_research()
	for(var/obj/machinery/rnd/server/S in GLOB.machines)
		if(S.machine_stat & (NOPOWER|BROKEN))
			continue
		S.emp_act(80)
		new /obj/effect/temp_visual/emp(get_turf(S))

/obj/machinery/shuttle_scrambler/proc/dump_loot(mob/user)
	if(credits_stored) // Prevents spamming empty holochips
		new /obj/item/holochip(drop_location(), credits_stored)
		to_chat(user,"<span class='notice'>You retrieve the siphoned credits!</span>")
		credits_stored = 0
	else
		to_chat(user,"<span class='notice'>There's nothing to withdraw.</span>")

/obj/machinery/shuttle_scrambler/proc/send_notification()
	priority_announce("Data theft signal detected, source registered on local gps units.")

/obj/machinery/shuttle_scrambler/proc/toggle_off(mob/user)
	SSshuttle.clearTradeBlockade(src)
	active = FALSE
	STOP_PROCESSING(SSobj,src)

/obj/machinery/shuttle_scrambler/update_icon_state()
	icon_state = active ? "dominator-blue" : "dominator"
	return ..()

/obj/machinery/shuttle_scrambler/Destroy()
	toggle_off()
	return ..()

/obj/machinery/computer/shuttle/pirate
	name = "pirate shuttle console"
	shuttleId = "pirateship"
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = LIGHT_COLOR_RED
	req_access = list(ACCESS_SYNDICATE)
	possible_destinations = "pirateship_away;pirateship_home;pirateship_custom"

/obj/machinery/computer/camera_advanced/shuttle_docker/syndicate/pirate
	name = "pirate shuttle navigation computer"
	desc = "Used to designate a precise transit location for the pirate shuttle."
	shuttleId = "pirateship"
	lock_override = CAMERA_LOCK_STATION
	shuttlePortId = "pirateship_custom"
	x_offset = 11
	y_offset = 1
	see_hidden = FALSE

/obj/docking_port/mobile/pirate
	name = "pirate shuttle"
	shuttle_id = "pirateship"
	rechargeTime = 3 MINUTES

/obj/machinery/suit_storage_unit/pirate
	storage_type = /obj/item/tank/jetpack/carbondioxide

/obj/machinery/loot_locator
	name = "Booty Locator"
	desc = "This sophisticated machine scans the nearby space for items of value."
	icon = 'icons/obj/machines/research.dmi'
	icon_state = "tdoppler"
	density = TRUE
	var/cooldown = 300
	var/next_use = 0

/obj/machinery/loot_locator/interact(mob/user)
	if(world.time <= next_use)
		to_chat(user,"<span class='warning'>[src] is recharging.</span>")
		return
	next_use = world.time + cooldown
	var/atom/movable/AM = find_random_loot()
	if(!AM)
		say("No valuables located. Try again later.")
	else
		say("Located: [AM.name] at [get_area_name(AM)]")

/obj/machinery/loot_locator/proc/find_random_loot()
	if(!GLOB.exports_list.len)
		setupExports()
	var/list/possible_loot = list()
	for(var/datum/export/pirate/E in GLOB.exports_list)
		possible_loot += E
	var/datum/export/pirate/P
	var/atom/movable/AM
	while(!AM && possible_loot.len)
		P = pick_n_take(possible_loot)
		AM = P.find_loot()
	return AM

//Pad & Pad Terminal
/obj/machinery/piratepad
	name = "cargo hold pad"
	icon = 'icons/obj/telescience.dmi'
	icon_state = "lpad-idle-off"
	var/idle_state = "lpad-idle"
	var/warmup_state = "lpad-idle"
	var/sending_state = "lpad-beam"
	var/cargo_hold_id

/obj/machinery/piratepad/multitool_act(mob/living/user, obj/item/multitool/I)
	. = ..()
	if (istype(I))
		to_chat(user, "<span class='notice'>You register [src] in [I]s buffer.</span>")
		I.buffer = src
		return TRUE

/obj/machinery/piratepad/screwdriver_act(mob/living/user, obj/item/screwdriver/screw)
	. = ..()
	if(!.)
		return default_deconstruction_screwdriver(user, "lpad-idle-open", "lpad-idle-off", screw)

/obj/machinery/piratepad/crowbar_act(mob/living/user, obj/item/tool)
	. = ..()
	default_deconstruction_crowbar(tool)
	return TRUE


/obj/machinery/computer/piratepad_control
	name = "cargo hold control terminal"
	var/status_report = "Ready for delivery."
	var/obj/machinery/piratepad/pad
	var/warmup_time = 100
	var/sending = FALSE
	var/points = 0
	var/datum/export_report/total_report
	var/sending_timer
	var/cargo_hold_id
	///Reference to the specific pad that the control computer is linked up to.
	var/datum/weakref/pad_ref

/obj/machinery/computer/piratepad_control/Initialize(mapload)
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/machinery/computer/piratepad_control/multitool_act(mob/living/user, obj/item/multitool/I)
	. = ..()
	if (istype(I) && istype(I.buffer,/obj/machinery/piratepad))
		to_chat(user, "<span class='notice'>You link [src] with [I.buffer] in [I] buffer.</span>")
		pad_ref = WEAKREF(I.buffer)
		return TRUE

/obj/machinery/computer/piratepad_control/LateInitialize()
	. = ..()
	if(cargo_hold_id)
		for(var/obj/machinery/piratepad/P in GLOB.machines)
			if(P.cargo_hold_id == cargo_hold_id)
				pad_ref = WEAKREF(P)
				return
	else
		pad = locate() in range(4,src)
		pad_ref = WEAKREF(pad)

/obj/machinery/computer/piratepad_control/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "CargoHoldTerminal", name)
		ui.open()

/obj/machinery/computer/piratepad_control/ui_data(mob/user)
	var/list/data = list()
	data["points"] = points
	data["pad"] = pad_ref?.resolve() ? TRUE : FALSE
	data["sending"] = sending
	data["status_report"] = status_report
	return data

/obj/machinery/computer/piratepad_control/ui_act(action, params)
	. = ..()
	if(.)
		return
	if(!pad_ref?.resolve())
		return

	switch(action)
		if("recalc")
			recalc()
			. = TRUE
		if("send")
			start_sending()
			. = TRUE
		if("stop")
			stop_sending()
			. = TRUE

/obj/machinery/computer/piratepad_control/proc/recalc()
	if(sending)
		return

	status_report = "Predicted value: "
	var/value = 0
	var/datum/export_report/ex = new
	var/obj/machinery/piratepad/pad = pad_ref?.resolve()
	for(var/atom/movable/AM in get_turf(pad))
		if(AM == pad)
			continue
		export_item_and_contents(AM, EXPORT_PIRATE | EXPORT_CARGO | EXPORT_CONTRABAND | EXPORT_EMAG, apply_elastic = FALSE, dry_run = TRUE, external_report = ex)

	for(var/datum/export/E in ex.total_amount)
		status_report += E.total_printout(ex,notes = FALSE)
		status_report += " "
		value += ex.total_value[E]

	if(!value)
		status_report += "0"

/obj/machinery/computer/piratepad_control/proc/send()
	if(!sending)
		return

	var/datum/export_report/ex = new
	var/obj/machinery/piratepad/pad = pad_ref?.resolve()

	for(var/atom/movable/AM in get_turf(pad))
		if(AM == pad)
			continue
		export_item_and_contents(AM, EXPORT_PIRATE | EXPORT_CARGO | EXPORT_CONTRABAND | EXPORT_EMAG, apply_elastic = FALSE, delete_unsold = FALSE, external_report = ex)

	status_report = "Sold: "
	var/value = 0
	for(var/datum/export/E in ex.total_amount)
		var/export_text = E.total_printout(ex,notes = FALSE) //Don't want nanotrasen messages, makes no sense here.
		if(!export_text)
			continue

		status_report += export_text
		status_report += " "
		value += ex.total_value[E]

	if(!total_report)
		total_report = ex
	else
		total_report.exported_atoms += ex.exported_atoms
		for(var/datum/export/E in ex.total_amount)
			total_report.total_amount[E] += ex.total_amount[E]
			total_report.total_value[E] += ex.total_value[E]
		// playsound(loc, 'sound/machines/wewewew.ogg', 70, TRUE)

	points += value

	if(!value)
		status_report += "Nothing"

	pad.visible_message("<span class='notice'>[pad] activates!</span>")
	flick(pad.sending_state,pad)
	pad.icon_state = pad.idle_state
	sending = FALSE

/obj/machinery/computer/piratepad_control/proc/start_sending()
	var/obj/machinery/piratepad/pad = pad_ref?.resolve()
	if(!pad)
		status_report = "No pad detected. Build or link a pad."
		pad.audible_message(span_notice("[pad] beeps."))
		return
	if(pad?.panel_open)
		status_report = "Please screwdrive pad closed to send. "
		pad.audible_message(span_notice("[pad] beeps."))
		return
	if(sending)
		return
	sending = TRUE
	status_report = "Sending... "
	pad.visible_message("<span class='notice'>[pad] starts charging up.</span>")
	pad.icon_state = pad.warmup_state
	sending_timer = addtimer(CALLBACK(src,PROC_REF(send)),warmup_time, TIMER_STOPPABLE)

/obj/machinery/computer/piratepad_control/proc/stop_sending(custom_report)
	if(!sending)
		return
	sending = FALSE
	status_report = "Ready for delivery."
	if(custom_report)
		status_report = custom_report
	pad.icon_state = pad.idle_state
	deltimer(sending_timer)

/datum/export/pirate
	export_category = EXPORT_PIRATE

//Attempts to find the thing on station
/datum/export/pirate/proc/find_loot()
	return

/datum/export/pirate/ransom
	cost = 3000
	unit_name = "hostage"
	export_types = list(/mob/living/carbon/human)

/datum/export/pirate/ransom/find_loot()
	var/list/head_minds = SSjob.get_living_heads()
	var/list/head_mobs = list()
	for(var/datum/mind/M in head_minds)
		head_mobs += M.current
	if(head_mobs.len)
		return pick(head_mobs)

/datum/export/pirate/ransom/get_cost(atom/movable/AM)
	var/mob/living/carbon/human/H = AM
	if(H.stat != CONSCIOUS || !H.mind || !H.mind.assigned_role) //mint condition only
		return FALSE
	else if("pirate" in H.faction) //can't ransom your fellow pirates to CentCom!
		return FALSE
	else
		if(H.mind.assigned_role in GLOB.command_positions)
			return 3000
		else
			return 1000

/datum/export/pirate/parrot
	cost = 2000
	unit_name = "alive parrot"
	export_types = list(/mob/living/simple_animal/parrot)

/datum/export/pirate/parrot/find_loot()
	for(var/mob/living/simple_animal/parrot/P in GLOB.alive_mob_list)
		var/turf/T = get_turf(P)
		if(T && is_station_level(T.z))
			return P

/datum/export/pirate/cash
	cost = 1
	unit_name = "bills"
	export_types = list(/obj/item/stack/spacecash)

/datum/export/pirate/cash/get_amount(obj/O)
	var/obj/item/stack/spacecash/C = O
	return ..() * C.amount * C.value

/datum/export/pirate/holochip
	cost = 1
	unit_name = "holochip"
	export_types = list(/obj/item/holochip)

/datum/export/pirate/holochip/get_cost(atom/movable/AM)
	var/obj/item/holochip/H = AM
	return H.credits
