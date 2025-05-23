/*ALL DNA, SPECIES, AND GENETICS-RELATED DEFINES GO HERE*/

#define CHECK_DNA_AND_SPECIES(C) if((!(C.dna)) || (!(C.dna.species))) return

//Defines copying names of mutations in all cases, make sure to change this if you change mutation's type
#define HULK		/datum/mutation/human/hulk
#define XRAY		/datum/mutation/human/thermal/x_ray
#define SPACEMUT	/datum/mutation/human/space_adaptation
#define TK			/datum/mutation/human/telekinesis
#define NERVOUS		/datum/mutation/human/nervousness
#define EPILEPSY	/datum/mutation/human/epilepsy
#define MUTATE		/datum/mutation/human/bad_dna
#define COUGH		/datum/mutation/human/cough
#define DWARFISM	/datum/mutation/human/dwarfism
#define GIGANTISM	/datum/mutation/human/gigantism
#define CLOWNMUT	/datum/mutation/human/clumsy
#define TOURETTES	/datum/mutation/human/tourettes
#define DEAFMUT		/datum/mutation/human/deaf
#define BLINDMUT	/datum/mutation/human/blind
#define RACEMUT		/datum/mutation/human/race
#define BADSIGHT	/datum/mutation/human/nearsight
#define LASEREYES	/datum/mutation/human/laser_eyes
#define CHAMELEON	/datum/mutation/human/chameleon
#define WACKY		/datum/mutation/human/wacky
#define MUT_MUTE	/datum/mutation/human/mute
#define SMILE		/datum/mutation/human/smile
#define STONER		/datum/mutation/human/stoner
#define UNINTELLIGIBLE		/datum/mutation/human/unintelligible
#define SWEDISH		/datum/mutation/human/swedish
#define CHAV		/datum/mutation/human/chav
#define ELVIS		/datum/mutation/human/elvis
#define RADIOACTIVE	/datum/mutation/human/radioactive
#define GLOWY		/datum/mutation/human/glow
#define ANTIGLOWY	/datum/mutation/human/glow/anti
#define TELEPATHY	/datum/mutation/human/telepathy
#define FIREBREATH	/datum/mutation/human/firebreath
#define VOID		/datum/mutation/human/void
#define TONGUESPIKE	/datum/mutation/human/tongue_spike
#define TONGUESPIKECHEM		/datum/mutation/human/tongue_spike/chem
#define STRONG    	/datum/mutation/human/strong
#define STIMMED		/datum/mutation/human/stimmed
#define FIRESWEAT	/datum/mutation/human/fire
#define THERMAL		/datum/mutation/human/thermal
#define ANTENNA		/datum/mutation/human/antenna
#define PARANOIA	/datum/mutation/human/paranoia
#define MINDREAD	/datum/mutation/human/mindreader
#define INSULATED	/datum/mutation/human/insulated
#define SHOCKTOUCH	/datum/mutation/human/shock
#define OLFACTION	/datum/mutation/human/olfaction
#define ACIDFLESH	/datum/mutation/human/acidflesh
#define BADBLINK	/datum/mutation/human/badblink
#define SPASTIC		/datum/mutation/human/spastic
#define GELADIKINESIS		/datum/mutation/human/geladikinesis
#define CRYOKINESIS /datum/mutation/human/cryokinesis
#define SPIDER_WEB	/datum/mutation/human/webbing
#define CLUWNEMUT   /datum/mutation/human/cluwne
// GS13 DEFINES
#define FATFANG		/datum/mutation/human/fatfang
#define RADFAT		/datum/mutation/human/radfat
#define ADIPOHAZARD	/datum/mutation/human/adipohazard

#define UI_CHANGED "ui changed"
#define UE_CHANGED "ue changed"

#define CHAMELEON_MUTATION_DEFAULT_TRANSPARENCY 204

// String identifiers for associative list lookup

//Types of usual mutations
#define	POSITIVE 			1
#define	NEGATIVE			2
#define	MINOR_NEGATIVE		4

//Mutation classes. Normal being on them, extra being additional mutations with instability and other being stuff you dont want people to fuck with like wizard mutate
#define MUT_NORMAL 1
#define MUT_EXTRA 2
#define MUT_OTHER 3

//species use_skintones defines
#define NO_SKINTONES 0
#define USE_SKINTONES 1
#define USE_SKINTONES_GRAYSCALE_CUSTOM 2 //adds a "_g" suffix to limb overlays icon states if the skin_tone is a custom one.

//DNA - Because fuck you and your magic numbers being all over the codebase.
#define DNA_BLOCK_SIZE				3

#define DNA_UNI_IDENTITY_BLOCKS		19
#define DNA_HAIR_COLOR_BLOCK		1
#define DNA_FACIAL_HAIR_COLOR_BLOCK	2
#define DNA_SKIN_TONE_BLOCK			3
#define DNA_LEFT_EYE_COLOR_BLOCK	4
#define DNA_RIGHT_EYE_COLOR_BLOCK	5
#define DNA_GENDER_BLOCK			6
#define DNA_FACIAL_HAIR_STYLE_BLOCK	7
#define DNA_HAIR_STYLE_BLOCK		8
#define DNA_COLOR_ONE_BLOCK			9
#define DNA_COLOR_TWO_BLOCK			10
#define DNA_COLOR_THREE_BLOCK		11
#define DNA_MUTANTTAIL_BLOCK		12
#define DNA_MUTANTEAR_BLOCK			13
#define DNA_MUTANTMARKING_BLOCK		14
#define DNA_TAUR_BLOCK 				15
#define DNA_BARK_SOUND_BLOCK		16
#define DNA_BARK_SPEED_BLOCK		17
#define DNA_BARK_PITCH_BLOCK		18
#define DNA_BARK_VARIANCE_BLOCK		19

#define DNA_SEQUENCE_LENGTH			4
#define DNA_MUTATION_BLOCKS			8
#define DNA_UNIQUE_ENZYMES_LEN		32

//Transformation proc stuff
#define TR_KEEPITEMS	(1<<0)
#define TR_KEEPVIRUS	(1<<1)
#define TR_KEEPDAMAGE	(1<<2)
#define TR_HASHNAME		(1<<3)	// hashing names (e.g. monkey(e34f)) (only in monkeyize)
#define TR_KEEPIMPLANTS	(1<<4)
#define TR_KEEPSE		(1<<5)	// changelings shouldn't edit the DNA's SE when turning into a monkey
#define TR_DEFAULTMSG	(1<<6)
#define TR_KEEPORGANS	(1<<8)
#define TR_KEEPREAGENTS	(1<<10)
#define TR_KEEPSTUNS	(1<<9)


#define CLONER_FRESH_CLONE "fresh"
#define CLONER_MATURE_CLONE "mature"

//species traits for mutantraces
#define MUTCOLORS		1
#define HAIR			2
#define FACEHAIR		3
#define EYECOLOR		4
#define LIPS			5
#define NOBLOOD			6
#define NOTRANSSTING	7
#define MUTCOLORS_PARTSONLY	8	//Used if we want the mutant colour to be only used by mutant bodyparts. Don't combine this with MUTCOLORS, or it will be useless.
#define NOZOMBIE		9
#define DIGITIGRADE		10	//Uses weird leg sprites. Optional for Lizards, required for ashwalkers. Don't give it to other races unless you make sprites for this (see human_parts_greyscale.dmi)
#define NO_UNDERWEAR	11
#define NOLIVER			12
#define NOSTOMACH		13
#define NO_DNA_COPY     14
#define DRINKSBLOOD		15
#define NOEYES			16
#define MARKINGS		17
#define MUTCOLORS2		18
#define MUTCOLORS3		19
#define NOAROUSAL		20	//Stops all arousal effects
#define NOGENITALS		21	//Cannot create, use, or otherwise have genitals
#define MATRIXED		22	//if icon is color matrix'd
#define SKINTONE		23	//uses skin tones
#define CUSTOM_SKINTONE	24	//adds a "_g" suffix to bodypart overlays icon states if a custom skintone is used.
#define HORNCOLOR		25
#define WINGCOLOR		26
#define ROBOTIC_LIMBS	27 //has robotic limbs that render like organic ones
#define CAN_SCAR		28 // If this species can be scarred (fleshy)
/// Used for determining which wounds are applicable to this species.
#define HAS_FLESH	29 /// if we have flesh (can suffer slash/piercing/burn wounds, requires they don't have NOBLOOD)
#define HAS_BONE	30 /// if we have bones (can suffer bone wounds)

//organ slots
#define ORGAN_SLOT_BRAIN "brain"
#define ORGAN_SLOT_APPENDIX "appendix"
#define ORGAN_SLOT_RIGHT_ARM_AUG "r_arm_device"
#define ORGAN_SLOT_LEFT_ARM_AUG "l_arm_device"
#define ORGAN_SLOT_STOMACH "stomach"
#define ORGAN_SLOT_STOMACH_AID "stomach_aid"
#define ORGAN_SLOT_BREATHING_TUBE "breathing_tube"
#define ORGAN_SLOT_EARS "ears"
#define ORGAN_SLOT_EYES "eye_sight"
#define ORGAN_SLOT_LUNGS "lungs"
#define ORGAN_SLOT_HEART "heart"
#define ORGAN_SLOT_ZOMBIE "zombie_infection"
#define ORGAN_SLOT_THRUSTERS "thrusters"
#define ORGAN_SLOT_HUD "eye_hud"
#define ORGAN_SLOT_LIVER "liver"
#define ORGAN_SLOT_TONGUE "tongue"
#define ORGAN_SLOT_VOICE "vocal_cords"
#define ORGAN_SLOT_ADAMANTINE_RESONATOR "adamantine_resonator"
#define ORGAN_SLOT_HEART_AID "heartdrive"
#define ORGAN_SLOT_BRAIN_ANTIDROP "brain_antidrop"
#define ORGAN_SLOT_BRAIN_ANTISTUN "brain_antistun"
#define ORGAN_SLOT_BRAIN_ROBOT_RADSHIELDING "brain_robot_radshielding"
#define ORGAN_SLOT_TAIL "tail"
#define ORGAN_SLOT_PENIS "penis"
#define ORGAN_SLOT_WOMB "womb"
#define ORGAN_SLOT_VAGINA "vagina"
#define ORGAN_SLOT_TESTICLES "testicles"
#define ORGAN_SLOT_BREASTS "breasts"
#define ORGAN_SLOT_BUTT "butt"
// GS13 EDIT
#define ORGAN_SLOT_BELLY "belly"
// GS13 EDIT
#define ORGAN_SLOT_TAUR_BELLY "taur_belly"

////organ defines
#define STANDARD_ORGAN_THRESHOLD 	100
#define STANDARD_ORGAN_HEALING 		(1/(15 MINUTES / (2 SECONDS))) / 3  //Base organ healing can be amped by a factor of up to x5 via satiety. This assumes it to be somewhat in the upper center of positive satiety as base.
#define STANDARD_ORGAN_DECAY		(1/(15 MINUTES / (2 SECONDS)))		//designed to fail organs when left to decay for ~15 minutes. 2 SECOND is SSmobs tickrate.


//used for the can_chromosome var on mutations
#define CHROMOSOME_NEVER 0
#define CHROMOSOME_NONE 1
#define CHROMOSOME_USED 2

#define G_MALE 1
#define G_FEMALE 2
#define G_PLURAL 3
#define G_NEUTER 4

#define PREVIEW_PREF_JOB "Job"
#define PREVIEW_PREF_LOADOUT "Loadout"
#define PREVIEW_PREF_NAKED "Naked"
#define PREVIEW_PREF_NAKED_AROUSED "Naked - Aroused"
