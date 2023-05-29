/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(Font_contagem);
draw_text(102,126, "Joia: " + string(global.joia));

//fechar fonte
draw_set_font(-1);



if global.retUsuario == "Você é uma jóia" {
	draw_sprite_ext(Sprit_teste_vc_joia, 0, 80,195, .9, 1, 0, c_white, 1);
	draw_set_font(FontDialogo);
	draw_set_color(c_white);
	draw_text(130,200, string(global.retUsuario));
	
	
	draw_set_font(-1);
	draw_set_color(-1);
}




if global.retUsuario == "Você NÂO é uma jóia" {
	draw_sprite_ext(Sprit_teste_vc_joia, 0, 95,195, 1, 1, 0, c_white, 1);
	draw_set_font(FontDialogo);
	draw_set_color(c_white);
	draw_text(130,200, string(global.retUsuario));
	
	draw_set_font(-1);
	draw_set_color(-1);
}


