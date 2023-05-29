/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (instance_exists(Obj_kely)){
	with(Obj_kely){
		if global.nome_mago == "Nonato" {
			nom_mago1 = false;
			nom_mago2 = false;
			nom_mago3 = false;
			
			draw_set_font(Font_Menu);
			draw_text(102,126,"Média: " + string(global.media));
			draw_set_font(-1);
		
		}
		
		if nom_mago1 == true {
			draw_set_font(FontDialogo);
			draw_text(550,126,"Nota1: " + string(global.nota1));
			draw_set_font(-1);
		}

		if nom_mago2 == true {
			draw_set_font(FontDialogo);
			draw_text(550,195,"Nota2: " + string(global.nota2));
			draw_set_font(-1);
		}


		if nom_mago3 == true {
			draw_set_font(FontDialogo);
			draw_text(550,264,"Nota3: " + string(global.nota3));
			//draw_text(550,264,"Nota3: " + string(int64(global.nota3)));
			draw_set_font(-1);
		}
	}
}



