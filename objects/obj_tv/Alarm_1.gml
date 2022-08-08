/// @description funne messages
randommessage = choose(
"PIZZA TOWER STORIES SPONGEMAN",
"ARE THERE ENOUGH FORCED JOKES IN THIS MOD YET",
"HOMOSTUCK",
"FNF DISTRACTION FNF DISTRACTION",
"FUCK BITCH SHIT COCK ASS DICK",
"MORE FORCED JOKES",
"PLAY THE TERRARIA CALAMITY MOD ITS SO GOOD"
)
if oldrandommessage == randommessage
{
	alarm[1] = 1
}
else
{
	oldrandommessage = randommessage
	alarm[1] = 3600
}