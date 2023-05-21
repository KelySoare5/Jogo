

#region Perguntas_list

	global.list_pergunta = ds_list_create();
	ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"]);

#endregion












#region Perguntas
	global.fase1[0] = ["lista A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"];
	global.fase1[1] = ["lista O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"];
	global.fase1[2] = ["lista CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"];
	global.fase1[3] = ["lista O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"];

#endregion 


#region Num_indice
	quant_index = 4;
	global.indice = ds_list_create();
	
	var _carta = 0;
	//repetir o codigo 12 vezes
	repeat(quant_index){
		global.indice[| _carta]= _carta;
		_carta += 1;
	}
	
	
#endregion



// quando criar o obj do player

//variavel global para controlar o 
//dialogo e aparecer so uma vez quando tiver colisao

global.dialogo = false;


//do obj controle
//global.tecla = -1;

global.joia=0;


//velocidade do player
//trasformada em global para poder ser alterada o valor no obj_dialogo
global.spd = 5;



//velocidade horizontal
hspd = 0;

//vertical
vspd = 0;


//img
image_speed = 0;

//gravidade
grv = 0.4;