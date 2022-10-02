if global.skipTutorial == false
{

drawSetText(c_white,tFont2,fa_center,fa_middle)

if instance_exists(oPlayer)
{
	if textCurrent < array_length(text)
	{
		draw_set_alpha(textAlpha);
		draw_text(oPlayer.x,oPlayer.y-20,text[textCurrent]);
		draw_set_alpha(1);
	}
}

if room = rLevel1
{
	 switch textCurrent {
		 case 0: 
		{
			if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
			{
				textNext = true;
			}
		}
		break;
		case 1: 
		{
			if keyboard_check_pressed(vk_space)
			{
				textNext = true;
			}
		}
			break;
		case 2: 
		{
			if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(ord("S"))
			{
				textNext = true;
			}
		}
		break;
		case 3:
		{
			if keyboard_check_pressed(vk_enter)
			{
				textNext = true;
			}		
		}
		break;
		case 4: 
		{
			if prisonersReleased == true textNext = true;
		}
		break;
		case 5: 
		{
			if RescueComplete == true textNext = true;
		}
		break; 
		case 6:
		{
			if shieldGenerator == true textNext = true;	
		}
		break;
		case 7:
		{
			if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
			{
				textNext = true;
			}
		}
		break;
	 }
}

if room = rLevel2
{
 switch textCurrent {
	 case 0: 
	{
		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
		{
			textNext = true;
		}
	}
	break;
	case 1: 
	{
		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
		{
			textNext = true;
		}
	}
		break;
	case 2: 
	{
		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
		{
			textNext = true;
		}
	}
	break;
	case 3:
	{
		if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
		{
			textNext = true;
		}		
	}
	break;
 }		
}









 
 //ADVANCE TEXT OF TUTORIAL
 if textNext == true
 {
	textTimer--
	if textTimer <= 0 textAlpha = max(0,textAlpha-0.02)
	if textAlpha <= 0
	{
		textNext = false;
		textTimer = 120;
		textCurrent++	//Advance text
	}
 }
 else textAlpha = min(1,textAlpha+0.02)

} //End global skip tutorial check


