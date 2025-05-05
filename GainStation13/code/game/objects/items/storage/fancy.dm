/obj/item/storage/fancy/large_donut_box // not inheriting from a regular box of donuts for now because I don't want the icon changes...
	name = "large donut box"
	desc = "For when security just can't get enough."
	icon = 'GainStation13/icons/obj/food/containers.dmi'
	icon_state = "large_donut_box"
	spawn_type = /obj/item/reagent_containers/food/snacks/donut	
	fancy_open = FALSE
	custom_price = PRICE_NORMAL
	appearance_flags = KEEP_TOGETHER

/obj/item/storage/fancy/large_donut_box/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 16
	STR.max_combined_w_class = WEIGHT_CLASS_SMALL * 16
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/food/snacks/donut))

/obj/item/storage/fancy/large_donut_box/update_icon_state()
	if(fancy_open)
		icon_state = "large_donut_box_open"
	else
		icon_state = "large_donut_box"