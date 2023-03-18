/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if inicializar == false{
	scr_textos();
	inicializar = true;
}
 // if para passar os textos
if mouse_check_button_pressed(mb_left){
	if pagina <array_length_1d(texto) -1{
		pagina ++;
	} else {
		instance_destroy();
	}
}