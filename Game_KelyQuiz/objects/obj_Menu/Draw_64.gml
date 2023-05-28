/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


	
		draw_set_font(Font_Menu);
		draw_set_color(c_white);

		var dist = 55;
		var gui_largura = display_get_gui_width();
		var gui_altura = display_get_gui_height();
		var x1 = gui_largura/2;
		var y1 = gui_altura/2;

		for (var i=0; i< op_max; i++){
			//alinhamento na horizonatal
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			//se o index for zero, se for igual a opcao do jogado
			if (index == i){
				draw_set_color(c_yellow);
			} else {
				draw_set_color(c_white);
			}
			draw_text(x1, y1 + (dist * i), opcoes[i]);	
		}

		//resetando as funcoes usadas
		draw_set_font(-1);

		draw_set_halign(-1);
		draw_set_valign(-1);

		draw_set_color(-1);
		draw_set_color(-1);

		draw_set_color(-1);

