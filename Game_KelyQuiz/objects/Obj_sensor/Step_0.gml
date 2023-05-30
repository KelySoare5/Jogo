/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Chegar se estou colidindo com o personagem
var player = place_meeting(x,y,obj_player);

//espaço
var espaco = keyboard_check_released(vk_space);
if (player){
// codigo de transição
	var tran = instance_create_layer(0,0,layer,Obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
	
	show_message("foi");
}