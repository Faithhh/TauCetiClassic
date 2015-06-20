var/global/raider_tick = 1

/mob/living/carbon/human/proc/equip_raider()

	var/obj/item/device/radio/R = new /obj/item/device/radio/headset/syndicate(src)
	R.set_frequency(SYND_FREQ) //Same frequency as the syndicate team in Nuke mode.
	equip_to_slot_or_del(R, slot_l_ear)

	//equip_to_slot_or_del(new /obj/item/clothing/under/vox/vox_robes(src), slot_w_uniform)
	//equip_to_slot_or_del(new /obj/item/clothing/shoes/magboots/vox(src), slot_shoes) // REPLACE THESE WITH CODED VOX ALTERNATIVES.
	//equip_to_slot_or_del(new /obj/item/clothing/gloves/yellow/vox(src), slot_gloves) // AS ABOVE.

	switch(raider_tick)
		if(1) // Aye Cap'n!
			equip_to_slot_or_del(new /obj/item/clothing/under/pirate(src), slot_w_uniform)
			equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(src), slot_shoes)
			equip_to_slot_or_del(new /obj/item/clothing/suit/space/pirate(src), slot_wear_suit)
			equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/pirate(src), slot_head)
			equip_to_slot_or_del(new /obj/item/clothing/glasses/thermal/eyepatch(src), slot_glasses)

			equip_to_slot_or_del(new /obj/item/weapon/melee/energy/sword/pirate(src), slot_r_hand)

			//equip_to_slot_or_del(new /obj/item/clothing/suit/space/vox/carapace(src), slot_wear_suit)
			//equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/vox/carapace(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/weapon/melee/telebaton(src), slot_belt)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/thermal/monocle(src), slot_glasses) // REPLACE WITH CODED VOX ALTERNATIVE.
			//equip_to_slot_or_del(new /obj/item/device/chameleon(src), slot_l_store)

			//var/obj/item/weapon/spikethrower/W = new(src)
			//equip_to_slot_or_del(W, slot_r_hand)


		if(2) // Piretezzz
			equip_to_slot_or_del(new /obj/item/clothing/under/pirate(src), slot_w_uniform)
			equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(src), slot_shoes)
			equip_to_slot_or_del(new /obj/item/clothing/head/bandana(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/eyepatch(src), slot_glasses)
			equip_to_slot_or_del(new /obj/item/weapon/melee/energy/sword/pirate(src), slot_r_hand)

			//equip_to_slot_or_del(new /obj/item/clothing/suit/space/vox/pressure(src), slot_wear_suit)
			//equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/vox/pressure(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/full(src), slot_belt)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/meson(src), slot_glasses) // REPLACE WITH CODED VOX ALTERNATIVE.
			//equip_to_slot_or_del(new /obj/item/weapon/storage/box/emps(src), slot_r_hand)
			//equip_to_slot_or_del(new /obj/item/device/multitool(src), slot_l_hand)


		if(3)
			equip_to_slot_or_del(new /obj/item/clothing/under/pirate(src), slot_w_uniform)
			equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(src), slot_shoes)
			equip_to_slot_or_del(new /obj/item/clothing/head/bandana(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/eyepatch(src), slot_glasses)
			equip_to_slot_or_del(new /obj/item/weapon/melee/energy/sword/pirate(src), slot_r_hand)

			//equip_to_slot_or_del(new /obj/item/clothing/suit/space/vox/stealth(src), slot_wear_suit)
			//equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/vox/stealth(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/full(src), slot_belt)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/thermal/monocle(src), slot_glasses) // REPLACE WITH CODED VOX ALTERNATIVE.
			//equip_to_slot_or_del(new /obj/item/weapon/card/emag(src), slot_l_store)
			//equip_to_slot_or_del(new /obj/item/weapon/gun/dartgun/vox/raider(src), slot_r_hand)
			//equip_to_slot_or_del(new /obj/item/device/multitool(src), slot_l_hand)

		if(4)
			equip_to_slot_or_del(new /obj/item/clothing/under/pirate(src), slot_w_uniform)
			equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(src), slot_shoes)
			equip_to_slot_or_del(new /obj/item/clothing/head/bandana(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/eyepatch(src), slot_glasses)
			equip_to_slot_or_del(new /obj/item/weapon/melee/energy/sword/pirate(src), slot_r_hand)

			//equip_to_slot_or_del(new /obj/item/clothing/suit/space/vox/medic(src), slot_wear_suit)
			//equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/vox/medic(src), slot_head)
			//equip_to_slot_or_del(new /obj/item/weapon/storage/belt/utility/full(src), slot_belt) // Who needs actual surgical tools?
			//equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health(src), slot_glasses) // REPLACE WITH CODED VOX ALTERNATIVE.
			//equip_to_slot_or_del(new /obj/item/weapon/circular_saw(src), slot_l_store)
			//equip_to_slot_or_del(new /obj/item/weapon/gun/dartgun/vox/medical, slot_r_hand)

	//equip_to_slot_or_del(new /obj/item/clothing/mask/breath/vox(src), slot_wear_mask)
	//equip_to_slot_or_del(new /obj/item/weapon/tank/nitrogen(src), slot_back)
	equip_to_slot_or_del(new /obj/item/device/flashlight(src), slot_r_store)

	//for(var/obj/item/weapon/tank/nitrogen/N in contents)
	//	if(N)
	//		src.internal = N
	//		if(src.internals)
	//			src.internals.icon_state = "internal1"

	var/obj/item/weapon/card/id/syndicate/C = new(src)
	C.name = "[real_name]'s Legitimate Human ID Card"
	C.icon_state = "id"
	C.access = list(access_syndicate)
	C.assignment = "Pirate"
	C.registered_name = real_name
	C.registered_user = src
	var/obj/item/weapon/storage/wallet/W = new(src)
	W.handle_item_insertion(C)
	spawn_money(rand(50,150)*10,W)
	equip_to_slot_or_del(W, slot_wear_id)
	raider_tick++
	if (raider_tick > 4) raider_tick = 2

	return 1