//This is the file that handles donator loadout items.
//GS13 temporarily placed files here, will solve it eventually :clueless:

/datum/gear/donator
	name = "IF YOU SEE THIS, PING A CODER RIGHT NOW!"
	slot = ITEM_SLOT_BACKPACK
	path = /obj/item/bikehorn/golden
	category = LOADOUT_CATEGORY_DONATOR
	ckeywhitelist = list("This entry should never appear with this variable set.") //If it does, then that means somebody fucked up the whitelist system pretty hard

/datum/gear/donator/gatobadge_employee //these are available only to admins with CC-related characters
	name = "GATO Badge - Employee"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/accessory/medal/gato_badge/employee
	ckeywhitelist = list("sonoida", "yeeny")

/datum/gear/donator/gatobadge_middleman //these are available to players who were granted permission to have their characters to CC
	name = "GATO Badge - Correspondent"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/accessory/medal/gato_badge/middleman
	ckeywhitelist = list("johnjimjim", "sonoida", "Sonoida", "SONOIDA", "yeeny", "Not Number", "Not_Number", "NotNumber", "PointNshoot", "pointnshoot", "POINTNSHOOT", "Plapp", "plapp", "PLAPP", "colorlessspy", "Colorlessspy", "COLORLESSSPY", "M16nPregnant", "m16npregnant", "M16NPREGNANT", "Gabbr", "gabbr", "GABBR" )

/datum/gear/donator/halsey_overcoat
	name = "Halsey's Commander Overcoat"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/chloe/halsey
	ckeywhitelist = list("yeeny")

/datum/gear/donator/haydee_suit
	name = "Haydee Suit"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/space/hardsuit/engine/haydee
	ckeywhitelist = list("lumu", "sonoida")

/datum/gear/donator/haydee_pistol
	name = "Haydee Pistol"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/gun/ballistic/automatic/toy/pistol/haydee
	ckeywhitelist = list("lumu", "sonoida")

/datum/gear/donator/rose_plush
	name = "Dezir Rose Plussh"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/toy/plush/gs13/rose
	ckeywhitelist = list("eremitanovem", "sonoida", "Absolutely_Free", "absolutely_free", "ABSOLUTELY_FREE")

/datum/gear/donator/chloe_plush
	name = "Chloe Plush"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/toy/plush/gs13/chloe
	ckeywhitelist = list("alphas0")

/datum/gear/donator/grimmy_coat
	name = "Overcoat of the Destitute"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/storage/blueshield/grimmy
	ckeywhitelist = list("bbgrimmy", "BBGrimmy", "Bbgrimmy")

/datum/gear/donator/cosmic_coat
	name = "Cosmic Coat"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/hooded/wintercoat/cosmic
	ckeywhitelist = list("Neun", "neun", "NEUN")

/datum/gear/donator/tarek_gps
	name = "Tarek's GPS"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/gps/mining
	ckeywhitelist = list("e926user25")

/datum/gear/donator/milwaukee_crowbar
	name = "Milwaukee Pocket Crowbar"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/crowbar/bronze/glaug
	ckeywhitelist = list("happytpr")

/datum/gear/donator/fatfang
	name = "Fattening Fangs Injector"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/dnainjector/fatfang
	ckeywhitelist = list("sonoida")

/datum/gear/donator/toolbelt
	name = "Empty Toolbelt"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/storage/belt/utility
	ckeywhitelist = list("killmewitha22", "Killmewitha22", "KILLMEWITHA22", "sonoida")

//metha rossi you fat hog

/datum/gear/donator/wgspell_add
	name = "Weight Gain Spellbook"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/book/granter/spell/fattening
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

/datum/gear/donator/wgspell_transfer
	name = "Weight Transfer Spellbook"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/book/granter/spell/fattening/transfer
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

/datum/gear/donator/wgspell_take
	name = "Weight Steal Spellbook"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/book/granter/spell/fattening/steal
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

/datum/gear/donator/white_eyepatch_cabal
	name = "Cabal's Eyepatch"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/glasses/eyepatch/white/cabal
	ckeywhitelist = list("spess_lizurd", "SPESS LIZURD", "spess lizurd", "SPESS_LIZURD", "spesslizurd", "sonoida")

/datum/gear/white_eyepatch //accessible to anyone, at donator's request
	name = "White Eyepatch"
	category = LOADOUT_CATEGORY_GLASSES
	path = /obj/item/clothing/glasses/eyepatch/white

/datum/gear/donator/metis_plush
	name = "Metis Plush"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/toy/plush/gs13/metis
	ckeywhitelist = list("paraillegal", "Paraillegal")

/datum/gear/donator/wheelys
	name = "Wheely-Heels"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/shoes/wheelys
	ckeywhitelist = list("colorlessspy", "Colorlessspy")

/datum/gear/donator/sharky_plush
	name = "Sharky Plush"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/toy/plush/gs13/sharky
	ckeywhitelist = list("drawntothicc", "Drawntothicc", "DrawnToThicc", "DRAWNTOTHICC")

/datum/gear/donator/sams_welder
	name = "Sam's Unlucky Welder"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/weldingtool/bronze
	ckeywhitelist = list("almaniak", "Almaniak", "AlManiak")

/datum/gear/suit/labcoat
	name = "Labcoat"
	category = LOADOUT_CATEGORY_SUIT
	path = /obj/item/clothing/suit/toggle/labcoat
