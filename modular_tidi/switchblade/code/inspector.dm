/datum/advclass/inquisitor/inspector
	outfit = /datum/outfit/job/roguetown/inquisitor/inspector_slrs

/datum/outfit/job/roguetown/inquisitor/inspector_slrs/pre_equip(mob/living/carbon/human/H)
	..()
	has_loadout = TRUE
	add_verb(H, /mob/living/carbon/human/proc/faith_test)
	add_verb(H, /mob/living/carbon/human/proc/torture_victim)
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = CLERIC_T1, passive_gain = CLERIC_REGEN_WEAK, devotion_limit = CLERIC_REQ_1) //Capped to T1 miracles.
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/inq
	belt = /obj/item/storage/belt/rogue/leather/knifebelt/black/psydon_blessed
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan
	backr = /obj/item/storage/backpack/rogue/satchel/otavan
	beltl = /obj/item/rogueweapon/whip/antique/psywhip
	head = /obj/item/clothing/head/roguetown/inqhat
	mask = /obj/item/clothing/mask/rogue/spectacles/inq
	gloves = /obj/item/clothing/gloves/roguetown/otavan/inqgloves
	wrists = /obj/item/clothing/neck/roguetown/psicross/silver
	id = /obj/item/clothing/ring/signet/psy
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale/inqcoat
	backpack_contents = list(
		/obj/item/storage/keyring/inquisitor = 1,
		/obj/item/lockpickring/mundane = 1,
		/obj/item/rogueweapon/huntingknife/idagger/silver/psydagger,
		/obj/item/clothing/head/inqarticles/blackbag = 1,
		/obj/item/inqarticles/garrote = 1,
		/obj/item/rope/inqarticles/inquirycord = 1,
		/obj/item/grapplinghook = 1,
		/obj/item/storage/belt/rogue/pouch/coins/rich = 1,
		/obj/item/paper/inqslip/arrival/inq = 1,
		/obj/item/rogueweapon/scabbard/sheath/noble = 1
		)
	if(H.pronouns == HE_HIM || H.pronouns == THEY_THEM)
		shoes = /obj/item/clothing/shoes/roguetown/boots/otavan/inqboots
	else
		shoes = /obj/item/clothing/shoes/roguetown/boots/otavan/inqboots/heels

	change_origin(H, /datum/virtue/origin/otava, "Holy order")

/datum/outfit/job/roguetown/inquisitor/inspector_slrs/choose_loadout(mob/living/carbon/human/H)
	. = ..()
	var/weapons = list("Relic, 'Stigmata' (Halberd)", "Relic, 'Eucharist' (Rapier)", "Relic, 'Providence' (Siegebow)", "Relic, 'Testament' (Sabre)", "Psydonic Tomahawk", "Psydonic Longsword", "Psydonic Rapier", "Psydonic Cudgel", "Psydonic Flanged Mace", "Your Faith (Expertise With Most Weapons)")
	var/weapon_choice = input(H,"FLOURISH YOUR SILVER.", "WIELD THEM IN HIS NAME.") as anything in weapons
	switch(weapon_choice)
		if("Relic, 'Stigmata' (Halberd)")
			H.put_in_hands(new /obj/item/rogueweapon/halberd/psyhalberd/relic(H))
			H.put_in_hands(new /obj/item/rogueweapon/scabbard/gwstrap(H))
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, SKILL_LEVEL_EXPERT, TRUE)
		if("Relic, 'Eucharist' (Rapier)")
			H.put_in_hands(new /obj/item/rogueweapon/sword/rapier/psy/relic(H))
			H.put_in_hands(new /obj/item/rogueweapon/scabbard/sword/noble(H))
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_EXPERT, TRUE)
		if("Relic, 'Providence' (Siegebow)")
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/heavy/stake_silver, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow/heavy/relic, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/crossbows, SKILL_LEVEL_MASTER, TRUE)
		if("Relic, 'Testament' (Sabre)")
			H.put_in_hands(new /obj/item/rogueweapon/sword/rapier/psy/folding/relic(H))
			H.put_in_hands(new /obj/item/rogueweapon/scabbard/sword/noble(H))
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, SKILL_LEVEL_EXPERT, TRUE)
		if("Psydonic Longsword")
			H.put_in_hands(new /obj/item/rogueweapon/sword/long/psysword(H))
			H.put_in_hands(new /obj/item/rogueweapon/scabbard/sword/noble(H))
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_EXPERT, TRUE)
		if("Psydonic Tomahawk")
			H.put_in_hands(new /obj/item/rogueweapon/stoneaxe/handaxe/psy(H))
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, SKILL_LEVEL_EXPERT, TRUE)
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
		if("Psydonic Rapier")
			H.put_in_hands(new /obj/item/rogueweapon/sword/rapier/psy(H))
			H.put_in_hands(new /obj/item/rogueweapon/scabbard/sword/noble(H))
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_EXPERT, TRUE)
		if("Psydonic Cudgel")
			H.put_in_hands(new /obj/item/rogueweapon/mace/cudgel/psy(H))
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_EXPERT, TRUE)
		if("Psydonic Flanged Mace")
			H.put_in_hands(new /obj/item/rogueweapon/mace/cudgel/flanged/psy(H))
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_EXPERT, TRUE)
		if("Your Faith (Expertise With Most Weapons)")
			H.equip_to_slot_or_del(new /obj/item/quiver/bolt/standard, SLOT_BELT_R, TRUE)
			H.equip_to_slot_or_del(new /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow, SLOT_BACK_L, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/unarmed, SKILL_LEVEL_EXPERT, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/shields, SKILL_LEVEL_JOURNEYMAN, TRUE)
