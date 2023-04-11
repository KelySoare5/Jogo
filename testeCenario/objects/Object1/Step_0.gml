/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up){
	y-=2;
}
if keyboard_check(vk_down){
	y+=2;
}
if keyboard_check(vk_right){
	x+=2;
}
if keyboard_check(vk_left){
	x-=2;
}
// Dialogo 
//ver se tem objeto do npc perto
if distance_to_object(Object2) <=15{
	//clicando em f vai achar qual e o npc mais proximo
	if keyboard_check_pressed(ord("F")){
		//recebe a instancia do npc
		var _npc = instance_nearest(x, y, Object2);
		//cria o dialogo na layer Dialogo
		var _dialogo = instance_create_layer(x,y, "Dialogo", ObjDialogo);
		_dialogo.npcNome = _npc.nome;
	}
}