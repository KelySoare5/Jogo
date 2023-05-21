
#region EmbaralharPerguntas
	if keyboard_check_pressed(ord("R")){
		if ds_list_size(global.list_pergunta > 0) {
			ds_list_shuffle(global.list_pergunta);
		}
	}
#endregion









#region Embaralhar
	//if keyboard_check_pressed(ord("R")){
		//ds_list_shuffle(global.indice);
	//}
#endregion



// loop, executa a cada frame

#region CONTROLES

key_right = keyboard_check(vk_right);//direita
key_left = keyboard_check(vk_left); //esquerda
key_jump = keyboard_check(vk_space); //pulo

//global.tecla = keyboard_check_pressed(ord("A"));


//sem movimento do personagem
if(abs(hspd)) <= 0.5 {
	image_index = 0;
	hspd = 0;
	image_speed = 0;
}


//movimentando as pernas
if(hspd != 0){
	image_speed = 1;
}

#endregion


#region Movimentacao


var move = key_right - key_left;

hspd = move * global.spd; //movimentacao vezes a velocidade

vspd = vspd + grv; 

if (hspd != 0) image_xscale = sign(hspd); //mudar de lado o personagem



//colisao horizontal
if place_meeting(x+hspd, y, Obj_wall)
{
	while(!place_meeting(x+sign(hspd), y, Obj_wall)){
		x = x + sign(hspd);
		
		if ds_list_size(global.list_pergunta > 0) {
			// quando colidir verticalmente embaralhar o dialogo
			ds_list_shuffle(global.list_pergunta);
		}
	}
	hspd = 0;
}







//colisao com o mago e faz aparecer o dialogo
if place_meeting(x+hspd, y, obj_par_npcs){
	hspd = 0;
	
	
	ds_list_shuffle(global.indice);
	

	//so conversa se nao tiver conversando
	if global.dialogo == false{
		
		global.spd = 0;
		//recebe a instancia do npc
		var _npc = instance_nearest(x, y,obj_par_npcs);
		//cria o dialogo na layer Dialogo
		var _dialogo = instance_create_layer(x,y, "Dialogo", ObjDialogo);
		_dialogo.npcNome = _npc.nome;
		
		
		
	}
	
	
	if instance_exists(ObjDialogo){
		//para controlar se ta em um dialogo ou nao
		// ou so joga fora do if acima a linha abaixo,
		//sem checar q a instancia existe
		global.dialogo = true;
		
	}
}




x = x + hspd;







//colisao vertical
if place_meeting(x, y+vspd, Obj_wall)
{
	while(!place_meeting(x, y+sign(vspd), Obj_wall)){
		
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;



//pulo jump se tivr no chao e clicar na tecla de pulo, so pula se nao estiver em um dialogo
if global.dialogo == false{
	if place_meeting(x, y+1, Obj_wall) and key_jump {
		
		
		// quando pular embaralhar o dialogo
		if ds_list_size(global.list_pergunta > 0) {
			ds_list_shuffle(global.list_pergunta);
		}
		
		vspd -= 12;
	}
}


#endregion








