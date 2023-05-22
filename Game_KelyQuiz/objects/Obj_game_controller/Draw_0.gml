

//criando a tela de game over

if (game_over){
	
	instance_destroy(ObjDialogo);
	//info da camera
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	
	var x2 = x1 + w;
	var meio_w = x2 /2;
	
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	
	var y2 = y1 + h;
	var meio_h = y2/2;
	
	var meio_w = meio_w+500
	
	
	//desenhar em 15 porcento da tela
	var qtd = h * .15;
	
	//incrementa o valor
	valor = lerp(valor, 1, .01);
	
	
	draw_set_color(c_black);
	//escurecendo a tela
	//deixa swm alpha
	draw_set_alpha(valor - .3);
	draw_rectangle(x1, y1, x2, y2, false);
	
	
	
	//desenhando o retangulo cima
	draw_set_alpha(-1);
	draw_rectangle(x1, y1, x2, y1 + (qtd * valor), false);
	
	//desenhando retangulo debaixo
	draw_rectangle(x1, y2, x2, y2 - (qtd * valor), false);

	//resetar a cor
	draw_set_alpha(-1);
	draw_set_color(-1);
	
	//deley no nome gameover
	
	if (valor >= .85){
		
		contador = lerp(contador, 1, .01);
		//escrevendo gameover
		draw_set_alpha(contador)
		draw_set_font(Fonte_game_over);
		draw_set_valign(1);
		draw_set_halign(1);
	
		//sombra
		draw_set_color(c_red);
		draw_text(meio_w + 2, meio_h + 2, "G A M E - O V E R");
	
		//texto
		draw_set_color(c_white);
		draw_text(meio_w, meio_h, "G A M E - O V E R");
		draw_set_font(-1);
		draw_text(meio_w, meio_h + 70, "Press ENTER to restart");
		
		draw_set_valign(-1);
		draw_set_halign(-1);
		
		draw_set_alpha(-1);
		
		if (keyboard_check(vk_enter)) game_restart();

	}
	
	
	
	
	
	
	
}

/*
else{
	valor = 0;
}