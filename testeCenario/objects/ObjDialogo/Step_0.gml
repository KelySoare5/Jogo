/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando criar o objDialogo vai iniciar com false
if inicializar == false{
	//acessa a funcao do script
	scr_textos();
	inicializar = true;
}



 // if para passar os textos
 //
if mouse_check_button_pressed(mb_left){
	
	//se a variavel pag for menor q o tamanho do array, 
	//incrementa mais um a ela
	if pagina < ds_grid_height(texto_grid) - 1{
		
		pagina++;
	//senao destroi
	} 
	
	else {
		//destroi a instancia
		global.dialogo = false;
		instance_destroy();
	}
}