/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar == true {

	//pega a largura e a altura da janela
	var _guil= display_get_gui_width();
	var _guia = display_get_gui_height();

	// dimenções do quadro preto
	var _xx = 0;
	//altura da janela menos 200 
	//alterie aqui pra pegar a pergunta toda
	var _yy = _guia - 250;
	//cor
	var _c = c_black;
	// variavel q recebe a sprit das opcoes
	
	//var _sprintOpcao = Sprit_fundo_texto;
	
	//recebe a sprit da funcao q cria
	var _sprite = texto_grid[# infos.Retrato, pagina];

	// fonte
	draw_set_font(FontDialogo);
	
	//variavel para copiar o texto
	var _texto = string_copy(texto_grid[# infos.Texto, pagina], 0, caractere)
	
	
	//lado esquerdo
	if texto_grid[# infos.Lado, pagina] == 0 {
		
		//desenhar a tela preta
		//o x2-guil completar toda largura da tela 
		draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false); 


		//nome
		draw_text(_xx + 216, _yy - 32, texto_grid[# infos.Nome, pagina]);

		//escrever texto nessa posição
		//texto-pag e incrementavel, 32 e a separacao d uma linha para outra
		draw_text_ext(_xx + 232, _yy + 32, _texto, 32, _guil - 264);
	
		//desenhar a sprite         x     y
		draw_sprite_ext(_sprite, 0, 20, _guia-200, 3, 3, 0, c_white, 1);
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
		draw_text_ext(_xx + 32, _yy + 32, _texto, 32, _guil - 264);
	
		//desenhar a sprite
		draw_sprite_ext(_sprite, 0, _guil, _guia-200, -3, 3, 0, c_white, 1);
	
	}
	
	if  op_draw == true {
		var _opx = _xx + 32;
		var _opy = _yy - 48;
		var _opsep = 48;
		var _opborda = 6;
		
		//recebe a sprit do campo de opcoes
		var _sprintOpcao = Sprit_fundo_texto;
		
		
		
		
		// Mudei as letra "W" e "S" 
		op_selecionado += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
		
		op_selecionado = clamp(op_selecionado, 0, op_num - 1);
		
		
		
		
		
		for (var i = 0; i < op_num; i++) {
			
			_sprintOpcao = Sprit_fundo_texto;
			
			// muda a sprit do campo de opcoes
			if i == 0 and op_selecionado == i{
				_sprintOpcao = Sprit_fundo_outraCor;
			}
			
			// muda a sprit do campo de opcoes
			if i == 1 and op_selecionado == i{
				_sprintOpcao = Sprit_fundo_outraCor;
			}
			
			var _stringw = string_width(op[i]);
			
			//speit com q fica embaixo das opcoes
			draw_sprite_ext(_sprintOpcao, 0, _opx, _opy - (_opsep * i), (_stringw + _opborda * 2 ) /16, 1, 0, c_white, 1);
			draw_text(_opx + _opborda, _opy - (_opsep * i), op[i]);
			
			if op_selecionado == i {
				
				draw_sprite(Sprit_bolota, 0, _xx + 8, _opy - (_opsep * i) + 8 );
			}
			
			
			

		}
		
		
		//esse é q desnha o dialogo e destroi
		if mouse_check_button_pressed(mb_right){

			//cria o dialogo na layer Dialogo
			

			var _dialogo = instance_create_layer(x,y, "Dialogo", ObjDialogo);
			
			_dialogo.npcNome = op_resposta[op_selecionado];
			
			//recebe o valor selecionado pelo usuario
			global.respSelecionada = op[op_selecionado];
			
			if global.respSelecionada == global.list_pergunta[| 0][1]{
				global.retUsuario = "CERTA RESPOSTA";
				//apaga o topo da lista
				//ds_list_delete(global.list_pergunta, 0);
				//ganha mais joias
				global.joia += 100;	
			}
			
			if global.respSelecionada != global.list_pergunta[| 0][1]{
				global.retUsuario = "RESPOSTA ERRADA";
				//apaga o topo da lista
				//ds_list_delete(global.list_pergunta, 0);
				//perde joias
				global.joia -= 100;
				
				//condicao do gameOver
				if global.joia <= 0 {
					if (instance_exists(Obj_game_controller)){
						with(Obj_game_controller){
							game_over = true;
						}
					}
					
				}
				
				
			}
			
			
			
			instance_destroy();
			
		}
	
	}
	draw_set_font(-1);

	

	
}

