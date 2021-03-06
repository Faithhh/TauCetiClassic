/obj/effect/landmark/antigrief_alarm
	name = "Alarm trigger"
	icon_state = "x3"
	invisibility = INVISIBILITY_MAXIMUM

	var/trigger_tag
	var/area_name

	var/tag_color = "blue"
	var/cooldown = 300	//half a minute

	var/last_activation = 0

/obj/effect/landmark/antigrief_alarm/New()
	//todo: check if we have alive db. qdel if not.
	var/area/A = get_area(src)
	area_name = A.name
	return

/obj/effect/landmark/antigrief_alarm/HasProximity(var/atom/A)
	if(!isliving(A))
		return

	var/mob/living/M = A

	if(!M.client || !config.antigrief_alarm_level || (world.time - last_activation < cooldown))
		return

	//check if it's first-day player or first-round, and current alarm level
	if(((M.client.player_age == 0) && (config.antigrief_alarm_level == 2)) || (!isnum(M.client.player_age) && config.antigrief_alarm_level))
		if(issilicon(M) || iscarbon(M))
			last_activation = world.time

			if(trigger_tag)
				message_admins("Noob alarm (<font color='[tag_color]'>[trigger_tag]</font>): [M.name] ([M.ckey]) at [area_name] area <A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[src.x];Y=[src.y];Z=[src.z]'>JMP</a>")
			else
				message_admins("Noob alarm: [M.name] ([M.ckey]) at [area_name] area <A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[src.x];Y=[src.y];Z=[src.z]'>JMP</a>")

/obj/effect/landmark/antigrief_alarm/fueltank
	name = "Alarm trigger (fueltank)"
	trigger_tag = "fueltank"
	tag_color = "red"

/obj/effect/landmark/antigrief_alarm/toxins
	name = "Alarm trigger (toxins)"
	trigger_tag = "toxins"
	tag_color = "red"

/obj/effect/landmark/antigrief_alarm/atmos
	name = "Alarm trigger (atmos)"
	trigger_tag = "atmos"
	tag_color = "red"

/obj/effect/landmark/antigrief_alarm/singularity
	name = "Alarm trigger (singularity)"
	trigger_tag = "singularity"
	tag_color = "red"

/obj/effect/landmark/antigrief_alarm/area
	name = "Alarm trigger (area)"
	trigger_tag = "area"
	tag_color = "#ff8c00"
