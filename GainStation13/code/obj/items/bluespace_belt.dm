/obj/item/bluespace_belt
	name = "bluespace belt"
	desc = "A belt made using bluespace technology. The power of space and time, used to hide the fact you are fat."
	icon = 'GainStation13/icons/obj/clothing/bluespace_belt.dmi'
	icon_state = "bluespace_belt"
	item_state = "bluespace_belt"
	slot_flags = ITEM_SLOT_BELT
	equip_sound = 'GainStation13/sound/items/equip/toolbelt_equip.ogg'
	drop_sound = 'GainStation13/sound/items/handling/toolbelt_drop.ogg'
	pickup_sound =  'GainStation13/sound/items/handling/toolbelt_pickup.ogg'
	var/equipped = FALSE		// is it in the belt slot?

/obj/item/bluespace_belt/equipped(mob/user, slot)
	..()
	if(!iscarbon(user))
		return
	var/mob/living/carbon/U = user
	if(slot == ITEM_SLOT_BELT)
		equipped = TRUE
		to_chat(U, "<span class='notice'>You put the belt around your waist and your mass begins to shrink...</span>")
		U.hider_add(src)
	else if(equipped)
		equipped = FALSE
		to_chat(user, "<span class='notice'>The belt is opened, letting your mass flow out!</span>")
		U.hider_remove(src)

/obj/item/bluespace_belt/dropped(mob/user)
	..()
	if(!iscarbon(user))
		return
	var/mob/living/carbon/U = user
	if (equipped)
		to_chat(U, "<span class='warning'>The belt is opened, letting your mass flow out!</span>")
	U.hider_remove(src)

/obj/item/bluespace_belt/proc/fat_hide(var/mob/living/carbon/user)
	return -(user.fatness_real - 1)

/obj/item/bluespace_belt/primitive
	name = "primitive bluespace belt"
	desc = "A primitive belt made using bluespace technology. The power of space and time, used to hide the fact you are fat. This one requires cells to continue operating."
	var/cell_type = /obj/item/stock_parts/cell/high
	var/obj/item/stock_parts/cell/cell
	var/maximum_power_drain = 100
	var/fatness_to_power_coefficient = 68 // FATNESS_LEVEL_BLOB*2 BFI divided by this equals 100, our maximum power drain
	var/mob/living/carbon/user		// the fatass who's weight we must track for power drain calcs

/obj/item/bluespace_belt/primitive/Initialize(mapload)
	. = ..()
	if(!cell && cell_type)
		cell = new cell_type

/obj/item/bluespace_belt/primitive/equipped(mob/U, slot)
	..()
	if(!iscarbon(U))
		user = null
		return
	user = U
	START_PROCESSING(SSprocessing, src)
	if(slot == ITEM_SLOT_BELT && !cell)
		equipped = TRUE
		to_chat(user, "<span class='notice'>You put the belt around your waist, but it seems that the battery is missing!</span>")
		user.hider_remove(src)
	else if(slot == ITEM_SLOT_BELT && !cell.charge)
		equipped = TRUE
		to_chat(user, "<span class='notice'>You put the belt around your waist, but it seems that the battery is dead!</span>")
		user.hider_remove(src)
	else if(slot == ITEM_SLOT_BELT && cell.charge)
		equipped = TRUE
		to_chat(user, "<span class='notice'>You put the belt around your waist and your mass begins to shrink...</span>")
		user.hider_add(src)
	else
		if(equipped)
			equipped = FALSE
			to_chat(user, "<span class='notice'>The belt is opened, letting your mass flow out!</span>")
			user.hider_remove(src)
		user = null

/obj/item/bluespace_belt/primitive/attackby(obj/item/W, mob/person)
	if (istype(W, /obj/item/stock_parts/cell))
		if(!person.transferItemToLoc(W, src))
			return
		if (!cell)
			to_chat(person, "<span class='notice'>You put the cell into the belt</span>")
		else
			to_chat(person, "<span class='notice'>You swiftly replace the cell in the belt</span>")
			person.put_in_hands(cell)
		cell = W
		START_PROCESSING(SSprocessing, src)

		if (equipped)
			to_chat(person, "<span class='notice'>Your mass begins to shrink as the belt is powered again...</span>")
			user = person
			user.hider_add(src)
		

	
/obj/item/bluespace_belt/primitive/attack_self(mob/person)
	if (!cell)
		return
	
	if(!isnull(user))
		user.hider_remove(src)
	
	to_chat(person, "<span class='notice'>You take the cell out of the belt, letting your mass flow out!</span>")
	user = null
	person.put_in_hands(cell)
	cell = null
	STOP_PROCESSING(SSprocessing, src)

/obj/item/bluespace_belt/primitive/AltClick(mob/person)
	. = ..()

	if (!cell)
		return
	
	if(!isnull(user))
		user.hider_remove(src)
	
	to_chat(person, "<span class='notice'>You take the cell out of the belt, letting your mass flow out!</span>")
	user = null
	person.put_in_hands(cell)
	cell = null
	STOP_PROCESSING(SSprocessing, src)
	

/obj/item/bluespace_belt/dropped(mob/user)
	..()
	user = null

/obj/item/bluespace_belt/primitive/process()
	if(isnull(user))
		return
	
	if (!cell)
		return

	if (!cell.charge)
		user.hider_remove(src)
		to_chat(user, "<span class='notice'>The belt beeps as it's battery runs out, and your mass starts flowing out!</span>")
		user = null
		STOP_PROCESSING(SSprocessing, src)
		return


	var/power_drain = clamp(user.fatness_real / fatness_to_power_coefficient, 0, maximum_power_drain)
	power_drain = min(power_drain, cell.charge)
	cell.use(power_drain)
	cell.update_icon()