/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// ja mudei de cenario
if (mudei){
	alpha -= .01;
}
else { //nao mudei de cenario
	alpha += .01;
}

//QUANDO A TELA ESCURECER, MUDA DE CENARIO
if (alpha >=1){
	room_goto(destino);
	
	//posição do personagem
	Obj_kely.x = destino_x;
	Obj_kely.y = destino_y;
}