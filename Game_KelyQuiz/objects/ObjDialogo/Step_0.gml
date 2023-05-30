
//quando criar o objDialogo vai iniciar com false
if inicializar == false{
	//acessa a funcao do script
	//se for o mago 2 vai para um script se nao for vai para outro
	
	//embaralhar os indices para se usados nas opcoes das perguntas
	ds_list_shuffle(global.list_indice);
	
	if global.nome_mago == "Nonato" {
		scr_textos_nonato();	 
	}
	
	if global.nome_mago == "Mago3" {
		scr_textos_mago33();
	}
	

	
	if global.nome_mago == "Mago2" {
		scr_textos_mago22();
	}
	
	
	
	if global.nome_mago == "Mago1" {
		scr_textos_mago1();
		//scr_textos(); 
	}
	
	inicializar = true;
}



 // if para passar os textos	
	//função para ajeteitar a contagem de letras
if caractere < string_length(texto_grid[# infos.Texto, pagina]){
	if mouse_check_button_pressed(mb_left){
		
		//embaralhar os indices para se usados nas opcoes das perguntas
		ds_list_shuffle(global.list_indice);
		caractere = string_length(texto_grid[# infos.Texto, pagina]);
	}
} else {	
		
		
//se a variavel pag for menor q o tamanho do array, 
//incrementa mais um a ela
		
if pagina < ds_grid_height(texto_grid) - 1{
	if mouse_check_button_pressed(mb_left){
		
		//embaralhar os indices para se usados nas opcoes das perguntas
		ds_list_shuffle(global.list_indice);
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
		} 
		else {
			if mouse_check_button_pressed(mb_left){
				

				//global.media += global.joia;
				
				//nota mago1
				if global.nome_mago == "Mago1" {
					global.nota1 = global.joia;
				}
				
				//nota mago2
				if global.nome_mago == "Mago2" {
					global.nota2 = global.joia;
				}
				
				////nota mago3 e media abaixo de 7 reseta o jogo, reprova
				if global.nome_mago == "Mago3"{
					global.nota3 = global.joia;
					//global.media = global.media / 3;
					
					if global.media < 700 {
						
						if (instance_exists(Obj_game_controller)){
							with(Obj_game_controller){
								game_over = true;
							
							}
						}
						
						//reprova
						//game_restart();
					}
				}
				
				//se o valor das joias for menor q 700, esta de reccuperacao
				if global.joia < 700 and global.nome_mago != "Mago3" {
					if (instance_exists(Obj_game_controller)){
						with(Obj_game_controller){
							game_over = true;
							
						}
					}
					
				}
				
				//reseta as joias
				global.joia = 0;
				
				//embaralhar os indices para se usados nas opcoes das perguntas
				ds_list_shuffle(global.list_indice);
				
				//destroir o mago quando o dialogo acabar
				instance_destroy(obj_par_npcs);
				//destroir o dialogo quando o dialogo acabar
				instance_destroy();
				//para o dialogo aparecer para os outros magos
				global.dialogo = false;
				//para o player principal conseguir se movimentar quando dialogo
				//for destruido
				global.spd = 5;
				
				
				// encerra o jogo quando clica no dialogo
				if global.nome_mago == "Nonato"{
					game_end();
				}

			}
		}
			

	}
}
