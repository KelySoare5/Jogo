/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == true {

	//pega a largura e a altura da janela
	var _guil= display_get_gui_width();
	var _guia = display_get_gui_height();

	// dimenções do quadro preto
	var _xx = 0;
	//altura da janela menos 200
	var _yy = _guia - 200;
	//cor
	var _c = c_black;

	var _sprite = texto_grid[# infos.Retrato, pagina];

	// fonte
	draw_set_font(FontDialogo);

	//lado esquerdo
	if texto_grid[# infos.Lado, pagina] == 0 {
		
		//desenhar a tela preta
		//o x2-guil completar toda largura da tela 
		draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false); 


		//nome
		draw_text(_xx + 216, _yy - 32, texto_grid[# infos.Nome, pagina]);

		//escrever texto nessa posição
		//texto-pag e incrementavel, 32 e a separacao d uma linha para outra
		draw_text_ext(_xx + 232, _yy + 32, texto_grid[# infos.Texto, pagina], 32, _guil - 264);
	
		//desenhar a sprite         x     y
		draw_sprite_ext(_sprite, 0, 50, _guia-200, 3, 3, 0, c_white, 1);
	}
	// lado direito
	else{
		//desenhar a tela prata
		//o x2-guil completar toda largura da tela 
		draw_rectangle_color(_xx, _yy, _guil - 200, _guia, _c, _c, _c, _c, false); 


		//nome
		var _stgw = string_width(texto_grid[# infos.Nome, pagina]);
		draw_text(_guil - 216 - _stgw, _yy - 32, texto_grid[# infos.Nome, pagina]);

		//escrever texto nessa posição
		//texto-pag e incrementavel, 32 e a separacao d uma linha para outra
		draw_text_ext(_xx + 32, _yy + 32, texto_grid[# infos.Texto, pagina], 32, _guil - 264);
	
		//desenhar a sprite
		draw_sprite_ext(_sprite, 0, _guil - 100, _guia-200, -3, 3, 0, c_white, 1);
	
	}
}

