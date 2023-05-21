/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando criar o objDialogo vai iniciar com false

global.cont = 0;






if inicializar == false{
	//acessa a funcao do script
	
	scr_textos(); 
	
	
	/*
	ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
	ds_list_delete(global.list_pergunta, 0);
	/*
	add_op(" VERDADEIRO",	 "resp1");
	add_op(" FALSO ",	 "resp2");
	
	ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
	
	if global.respSelecionada == global.list_pergunta[| 0][1]{
		ds_grid_add_text("RESPOSTA Certa",spr_retrato2, 1, "MAGO" );
		ds_list_delete(global.list_pergunta, 0);
	}
	
	if global.respSelecionada != global.list_pergunta[| 0][1]{
		ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
		ds_list_delete(global.list_pergunta, 0);
	}
	*/
	
	inicializar = true;
}



 // if para passar os textos
 //if mouse_check_button_pressed(mb_left){
//if global.tecla{
	
	//função para ajeteitar a contagem de letras
	if caractere < string_length(texto_grid[# infos.Texto, pagina]){
		if mouse_check_button_pressed(mb_left){
			/*
			ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
			ds_list_delete(global.list_pergunta, 0);
			/*
			add_op("VERDADEIRO",	 "resp1");
			add_op("FALSO",	 "resp2");
	
			if global.respSelecionada == global.list_pergunta[| 0][1]{
				ds_grid_add_text("RESPOSTA Certa",spr_retrato2, 1, "MAGO" );
				ds_list_delete(global.list_pergunta, 0);
			}
	
			if global.respSelecionada != global.list_pergunta[| 0][1]{
				ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
				ds_list_delete(global.list_pergunta, 0);
			}
	
			
			*/
			
			
			caractere = string_length(texto_grid[# infos.Texto, pagina]);
		}
	} else {	
		
		
		//se a variavel pag for menor q o tamanho do array, 
		//incrementa mais um a ela
		
		if pagina < ds_grid_height(texto_grid) - 1{
			if mouse_check_button_pressed(mb_left){
				
				
				alarm[0] =1;
				caractere =0;
				pagina++;
				
			}
		//senao destroi
		} 
	
		else {
			//destroi as instancias
			
			if op_num != 0{
				op_draw = true;
			} else {
				if mouse_check_button_pressed(mb_left){
					
					//destroir o mago quando o dialogo acabar
					instance_destroy(obj_par_npcs);
					//destroir o dialogo quando o dialogo acabar
					instance_destroy();
					//para o dialogo aparecer para os outros magos
					global.dialogo = false;
					//para o player principal conseguir se movimentar quando dialogo
					//for destruido
					global.spd = 5;
					
					
					
					// destruir a lista de perguntas
					// nao pode destruir pq nao tema mais elementos
					//ds_list_destroy(global.list_pergunta);
				}
			}
			

		}
	}
//}