/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando criar o objDialogo vai iniciar com false

global.cont = 0;

if inicializar == false{
	//acessa a funcao do script
	scr_textos();
	inicializar = true;
}



 // if para passar os textos
 //if mouse_check_button_pressed(mb_left){
//if global.tecla{
	
	//função para ajeteitar a contagem de letras
	if caractere < string_length(texto_grid[# infos.Texto, pagina]){
		if mouse_check_button_pressed(mb_left){
			caractere = string_length(texto_grid[# infos.Texto, pagina]);
		}
	} else {	
		//alarm[0] =1;
		//caractere =0;
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
			//tirei pq o dialogo é pra execultar só uma vez. 
			//(implentar ainda) pq se ele finalizar as perguntas vai para proxima fase ou reinicar o jogo
			//global.dialogo = false;
			
			if op_num != 0{
				op_draw = true;
			} else {
				if mouse_check_button_pressed(mb_left){
					instance_destroy(obj_par_npcs);
					instance_destroy();
					//para o dialogo aparecer para os outros magos
					global.dialogo = false;
					global.spd = 5;
				}
			}
			
			//instance_destroy(obj_par_npcs);
			//instance_destroy();

		}
	}
//}