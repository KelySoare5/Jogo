/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando criar o objDialogo vai iniciar com false

global.cont = 0;





//aqui ele embaralha mais tras valores repetidos
ds_list_shuffle(global.indice);

if inicializar == false{
	//acessa a funcao do script
	ds_list_shuffle(global.indice);
	scr_textos();
	
	inicializar = true;
}



 // if para passar os textos
 //if mouse_check_button_pressed(mb_left){
//if global.tecla{
	
	//função para ajeteitar a contagem de letras
	if caractere < string_length(texto_grid[# infos.Texto, pagina]){
		if mouse_check_button_pressed(mb_left){
			
			
			
			
			
			ds_list_shuffle(global.indice);
			
			caractere = string_length(texto_grid[# infos.Texto, pagina]);
		}
	} else {	
		
		
		//se a variavel pag for menor q o tamanho do array, 
		//incrementa mais um a ela
		
		if pagina < ds_grid_height(texto_grid) - 1{
			if mouse_check_button_pressed(mb_left){
				
				
				
				
				ds_list_shuffle(global.indice);
				
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
					
					
					
					
					ds_list_shuffle(global.indice);
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
					ds_list_destroy(global.list_pergunta);
				}
			}
			

		}
	}
//}