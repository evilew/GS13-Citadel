//Reminders-
// If you add something to this list, please group it by type and sort it alphabetically instead of just jamming it in like an animal
// cost = 700- Minimum cost, or infinite points are possible.

/datum/supply_pack/vending/mealdor
	name = "Meal Vendor Supply Crate"
	desc = "Suprising one to order. If you need a refill for the meal vendor, someone's immobile somewhere. And since you managed to make it to cargo... Well it's not our job to say no!"
	cost = 10000
	contains = list(/obj/item/vending_refill/mealdor)
	crate_name = "meal vendor supply crate"

/datum/supply_pack/engineering/energy_harvester_board
	name = "Energy Harvester Board"
	desc = "Engineering made some crazy power device that seems to be creating massive amounts of energy out of thin air? With the parts found in this crate, you'll be able to make some sweet cash out of the engineers hard labor. Half of the credits made by this machine go to the engineering budget."
	cost = 5000
	contains = list(/obj/item/circuitboard/machine/energy_harvester)
	crate_name = "Energy Harvester Board supply crate"

/datum/supply_pack/organic/strangeseeds
	name = "Strange Seeds Crate"
	desc = "After our chemical waste mysteriously disappeared we've discovered many strange and interesting species of plants, and they're yours for the taking! Contains 8 packs of strange seeds."
	cost = 4500
	contains = list(/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random,
					/obj/item/seeds/random)
	crate_name = "strange seeds crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/misc/stripperpole //oldcode port
	name = "Stripper Pole Crate"
	desc = "No private bar is complete without a stripper pole, show off the goods! Comes with a ready-to-assemble stripper pole, and a complementary wrench to get things set up!"
	cost = 3550
	contains = list(/obj/item/polepack,
					/obj/item/wrench)
	crate_name = "stripper pole crate"

/datum/supply_pack/critter/fennec //ported from CHOMPstation2
	name = "Fennec Crate"
	desc = "Why so ears?"
	cost = 5000
	contains = list(/mob/living/simple_animal/pet/fox/fennec)
	crate_name = "fennec crate"

/datum/supply_pack/vending/wardrobes/clothing //existing game item not in cargo for some reason
	name = "ClothesMate Supply Crate"
	desc = "ClothesMate missing your favorite outfit? Solve that issue today with this autodrobe refill."
	cost = 1500
	contains = list(/obj/item/vending_refill/clothing)
	crate_name = "clothesmate supply crate"
