if(instance_exists(oPlayer))
	{
		
		if (speed = 0 && returnHome = false)
		{
			waitTime += 1
		} 
		
		if (waitTime >= 100) 
		{
			returnHome = true
			waitTime = 0;
		}
		
		if (returnHome) 
		{
			//move_towards_point(x,0, ypos < y ? 4 : -4);
			seePosX = xpos;
			seePosY = ypos;
			returnHome = false
			waitTime = 0;
		}



		
		if ((abs(seePosY - y) < 0.2 ) && oPlayer.y = y)
		{
			seePosX = oPlayer.x
		}
		
		if ((abs(seePosX - x) < 0.2 ) && oPlayer.x = x)
		{
			seePosY = oPlayer.y
		}
		
		if (abs(seePosX - x) > 0.2)
		{
				move_towards_point(x, y, seePosX > x ? 4 : -4);
				waitTime = 0
		} else 
		if (abs(seePosY - y) > 0.2)
		{
				move_towards_point(x,0, seePosY < y ? 4 : -4);
				waitTime = 0
		}
		else { speed = 0 }
		

		
		
	
		//if (oPlayer.y = y && (abs((oPlayer.x - x)) > 0.2))
		//{
		//	move_towards_point(oCell.x, oPlayer.y, oPlayer.x > x ? 4 : -4);
		//}
		
		
		
		//if(oPlayer.y = y and oPlayer.x > x)
		//{
		//	direction = 90;
		//	move_towards_point(oCell.x, oPlayer.y, 4*direction);
		//}
		//else if (oPlayer.y = y and oPlayer.x < x)
		//{
		//	direction = 270;
		//	move_towards_point(oCell.x, oPlayer.y, 4*direction);
		//}
		//else
		//{
		//	speed = 0;
		//}
		//if (oPlayer.y = y)
		//{
		//	move_towards_point(oCell.x, oPlayer.y, 4);
		//}
		//else
		//	{
		//		speed = 0;
		//	}
	}