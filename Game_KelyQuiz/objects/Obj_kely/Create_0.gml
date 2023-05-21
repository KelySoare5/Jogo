

#region Perguntas_list

	global.list_pergunta = ds_list_create();
	ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"]);
	
	ds_list_add(global.list_pergunta, ["O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["A MEMÓRIA RAM É UMA FORMA DE ARMAZENAMENTO PERMANENTE DE DADOS?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A INTERNET É UMA REDE MUNDIAL DE COMPUTADORES CONECTADOS?", "FALSO"]);
	
	ds_list_add(global.list_pergunta, ["HTML É UMA LINGUAGEM DE PROGRAMAÇÃO? ", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO JAVA FOI DESENVOLVIDA POR GUIDO VAN ROSSUM!", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A PROGRAMAÇÃO ORIENTADA A OBJETOS É UM PARADIGMA DE PROGRAMAÇÃO QUE SE CONCENTRA NA CRIAÇÃO DE OBJETOS QUE POSSUEM DADOS E MÉTODOS", "VERDADEIRO"]);


#endregion


/*

ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"]);
ds_list_add(global.list_pergunta, ["O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"]);
ds_list_add(global.list_pergunta, ["CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"]);
ds_list_add(global.list_pergunta, ["O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"]);




ds_list_add(global.list_pergunta, ["A MEMÓRIA RAM É UMA FORMA DE ARMAZENAMENTO PERMANENTE DE DADOS?", "FALSO"]);
ds_list_add(global.list_pergunta, ["A INTERNET É UMA REDE MUNDIAL DE COMPUTADORES CONECTADOS?", "FALSO"]);
ds_list_add(global.list_pergunta, ["HTML É UMA LINGUAGEM DE PROGRAMAÇÃO? ", "FALSO"]);
ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO JAVA FOI DESENVOLVIDA POR GUIDO VAN ROSSUM!", "FALSO"]);
ds_list_add(global.list_pergunta, ["A PROGRAMAÇÃO ORIENTADA A OBJETOS É UM PARADIGMA DE PROGRAMAÇÃO QUE SE CONCENTRA NA CRIAÇÃO DE OBJETOS QUE POSSUEM DADOS E MÉTODOS", "VERDADEIRO"]);


*/











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