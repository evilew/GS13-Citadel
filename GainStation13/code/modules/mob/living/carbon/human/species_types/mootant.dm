/mob/living/carbon/human/species/mammal/mootant
	race = /datum/species/mammal/mootant

/datum/species/mammal/mootant //WIP species
	name = "Mootant"
	id = SPECIES_MOOTANT
	default_color = "FFFFFF"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAIR,HORNCOLOR,WINGCOLOR,HAS_FLESH,HAS_BONE)
	inherent_traits = list(TRAIT_CHUNKYFINGERS, TRAIT_VORACIOUS, TRAIT_LIPOLICIDE_TOLERANCE, TRAIT_PACIFISM, TRAIT_MILKY) //chunky fingers because hooves!
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_BEAST
	mutant_bodyparts = list("mcolor" = "FFFFFF","mcolor2" = "FFFFFF","mcolor3" = "FFFFFF", "mam_snouts" = "mootant_tertiary", "mam_tail" = "Husky", "mam_ears" = "mootant_tertiary", "deco_wings" = "None",
						 "mam_body_markings" = list(), "taur" = "None", "horns" = "None", "legs" = "Plantigrade", "meat_type" = "Mammalian")
	attack_verb = "claw"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/mammal
	mutant_organs = list(/obj/item/organ/genital/breasts) //moo
	liked_food = FRIED | DAIRY
	disliked_food = TOXIC | MEAT

	tail_type = "mam_tail"
	wagging_type = "mam_waggingtail"
	species_category = SPECIES_CATEGORY_FURRY

	allowed_limb_ids = list("mammal","aquatic","avian")

/datum/sprite_accessory/snouts/mam_snouts/mootant
	name = "Mootant"
	icon = 'GainStation13/icons/mob/markings/mam_snouts.dmi'
	icon_state = "mootantone"
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED

/datum/sprite_accessory/snouts/mam_snouts/mootant_tertiary
	name = "Mootant ALT (Tertiary)"
	icon = 'GainStation13/icons/mob/markings/mam_snouts.dmi'
	icon_state = "mootanttwo"
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED_BLUE

/datum/sprite_accessory/ears/mam_ears/mootant
	name = "Mootant"
	icon_state = "mootantone"
	icon = 'GainStation13/icons/mob/markings/mam_ears.dmi'
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED

/datum/sprite_accessory/ears/mam_ears/mootant_tertiary
	name = "Mootant ALT (Tertiary)"
	icon_state = "mootanttwo"
	icon = 'GainStation13/icons/mob/markings/mam_ears.dmi'
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED_BLUE

/datum/sprite_accessory/ears/human/mootant
	name = "Mootant"
	icon_state = "mootantone"
	icon = 'GainStation13/icons/mob/markings/mam_ears.dmi'
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED

/datum/sprite_accessory/ears/human/mootant_secondary
	name = "Mootant (Secondary)"
	icon_state = "mootanttwo"
	icon = 'GainStation13/icons/mob/markings/mam_ears.dmi'
	color_src = MATRIXED
	matrixed_sections = MATRIX_RED_BLUE

//mutation toxin

/datum/reagent/mutationtoxin/mootant
	name = "Mootant Mutation Toxin"
	description = "A milk-colored toxin."
	color = "#ffffff"
	race = /datum/species/mammal/mootant
	mutationtext = "<span class='danger'>The pain subsides. You feel... milkier.</span>"
