function scr_getinput2() {
	gamepad_set_axis_deadzone(1, 0.4)
	key_up = (keyboard_check(global.key_upN) || (gamepad_button_check(1, global.key_upCN) || (gamepad_axis_value(1, gp_axislv) < 0)))
	key_up2 = (keyboard_check_pressed(global.key_upN) || (gamepad_button_check_pressed(1, global.key_upCN) || ((gamepad_axis_value(1, gp_axislv) < -0.5) && (stickpressed == 0))))
	key_right = (keyboard_check(global.key_rightN) || (gamepad_button_check(1, global.key_rightCN) || (gamepad_axis_value(1, gp_axislh) > 0)))
	key_right2 = (keyboard_check_pressed(global.key_rightN) || (gamepad_button_check_pressed(1, global.key_rightCN) || ((gamepad_axis_value(1, gp_axislh) > 0.5) && (stickpressed == 0))))
	key_left = (-(keyboard_check(global.key_leftN) || (gamepad_button_check(1, global.key_leftCN) || (gamepad_axis_value(1, gp_axislh) < 0))))
	key_left2 = (-(keyboard_check_pressed(global.key_leftN) || (gamepad_button_check_pressed(1, global.key_leftCN) || ((gamepad_axis_value(1, gp_axislh) < -0.5) && (stickpressed == 0)))))
	key_down = (keyboard_check(global.key_downN) || (gamepad_button_check(1, global.key_downCN) || (gamepad_axis_value(1, gp_axislv) > 0)))
	key_down2 = (keyboard_check_pressed(global.key_downN) || (gamepad_button_check_pressed(1, global.key_downCN) || ((gamepad_axis_value(1, gp_axislv) > 0.5) && (stickpressed == 0))))
	key_jump = (keyboard_check_pressed(global.key_jumpN) || gamepad_button_check_pressed(1, global.key_jumpCN))
	key_jump2 = (keyboard_check(global.key_jumpN) || gamepad_button_check(1, global.key_jumpCN))
	key_slap = (keyboard_check(global.key_slapN) || gamepad_button_check(1, global.key_slapCN))
	key_slap2 = (keyboard_check_pressed(global.key_slapN) || gamepad_button_check_pressed(1, global.key_slapCN))
	key_taunt = (keyboard_check(global.key_tauntN) || gamepad_button_check(1, global.key_tauntCN))
	key_taunt2 = (keyboard_check_pressed(global.key_tauntN) || gamepad_button_check_pressed(1, global.key_tauntCN))
	key_attack = (keyboard_check(global.key_attackN) || (gamepad_button_check(1, global.key_attackCN) || (gamepad_button_check(1, gp_face2) || gamepad_button_check(1, gp_shoulderrb))))
	key_attack2 = (keyboard_check_pressed(global.key_attackN) || (gamepad_button_check_pressed(1, global.key_attackCN) || (gamepad_button_check_pressed(1, gp_face2) || gamepad_button_check_pressed(1, gp_shoulderrb))))
	key_shoot = (keyboard_check(global.key_shootN) || gamepad_button_check(1, global.key_shootCN))
	key_shoot2 = (keyboard_check_pressed(global.key_shootN) || gamepad_button_check_pressed(1, global.key_shootCN))
	key_start = (keyboard_check_pressed(global.key_startN) || gamepad_button_check_pressed(1, global.key_startCN))
	key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(1, gp_select))
	if (((gamepad_axis_value(1, gp_axislh) > 0.5) || (gamepad_axis_value(1, gp_axislh) < -0.5)) || ((gamepad_axis_value(1, gp_axislv) > 0.5) || (gamepad_axis_value(1, gp_axislv) < -0.5)))
	    stickpressed = 1
	else
	    stickpressed = 0



}
