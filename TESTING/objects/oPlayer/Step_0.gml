check_input()

switch (state)
{
	case states.idle:
		state_idle() 
		break;
	case states.move:
		state_move()
		break;
	case states.dash:
		state_dash()
		break;
	case states.death:
		state_death()
		break;
}