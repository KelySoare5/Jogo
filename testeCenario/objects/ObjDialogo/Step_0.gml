/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando criar o objDialogo vai iniciar com false
if inicializar == false{
	//acessa a funcao do script
	scr_textos();
	inicializar = true;
}



 // if para passar os textos
if mouse_check_button_pressed(mb_left){
	
	//se a variavel pag for menor q o tamanho do array, 
	//incrementa mais um a ela
	if pagina < ds_grid_height(texto_grid) - 1{
		
		pagina++;
	//senao destroi
	} 
	
	else {
		//destroi as instancias
		//tirei pq o dialogo é pra execultar só uma vez. 
		//(implentar ainda) pq se ele finalizar as perguntas vai para proxima fase ou reinicar o jogo
		//global.dialogo = false;
		instance_destroy(Object2);
		instance_destroy();

	}
}