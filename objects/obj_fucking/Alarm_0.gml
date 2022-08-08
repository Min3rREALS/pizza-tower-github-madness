/// @description Insert description here
// You can write your code in this editor
url_open("https://youtu.be/mzHWLLn5Z4A")
with (obj_tv)
{
    message = "SCARY"
    showtext = 1
    alarm[0] = 60
}
switch timesplayed
{
	case 0:
	{
		timesplayed++
		alarm[0] = 18000//5 mins
	}
	break
	case 1:
	{
		timesplayed++
		alarm[0] = 9000//2.5 mins
	}
	break
	case 2:
	{
		timesplayed++
		alarm[0] = 3600//1 min
	}
	break
	default:
	{
		alarm[0] = 1800//30 sec
		//alarm[0] = 120
	}
	break
}