/obj/machinery/vending/engivend
	name = "\improper Engi-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	icon_state = "engivend"
	icon_deny = "engivend-deny"
	products = list(/obj/item/clothing/glasses/meson/engine = 5,
					/obj/item/clothing/glasses/welding = 5,
					/obj/item/multitool = 5,
					/obj/item/construction/rcd/loaded/upgraded = 3,
					/obj/item/grenade/chem_grenade/smart_metal_foam = 10,
					/obj/item/geiger_counter = 6,
					/obj/item/stock_parts/cell/high = 10,
    		        /obj/item/electronics/airlock = 10,
					/obj/item/electronics/apc = 10,
					/obj/item/electronics/airalarm = 10,
					/obj/item/electronics/firealarm = 10,
					/obj/item/electronics/firelock = 10,
					/obj/item/rcd_ammo = 3,
					/obj/item/book/manual/engi_SOP = 5 //GS13 edit
					)
	contraband = list(/obj/item/stock_parts/cell/potato = 3,
					/obj/item/rcd_ammo = 2,
					/obj/item/circuitboard/computer/slot_machine = 1,
					/obj/item/tank/internals/emergency_oxygen/double = 3
					)
	premium = list(/obj/item/storage/belt/utility = 3,
					/obj/item/storage/box/smart_metal_foam = 3,
					/obj/item/rcd_ammo/large = 5,
					/obj/item/storage/bag/material = 3
					)
	refill_canister = /obj/item/vending_refill/engivend
	resistance_flags = FIRE_PROOF
	default_price = PRICE_ALMOST_EXPENSIVE
	extra_price = PRICE_ABOVE_EXPENSIVE
	payment_department = ACCOUNT_ENG
	light_mask = "engivend-light-mask"

/obj/item/vending_refill/engivend
	machine_name = "Engi-Vend"
	icon_state = "refill_engi"
