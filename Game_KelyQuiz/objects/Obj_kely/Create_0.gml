




#region Perguntas_list_fase1

	global.list_pergunta = ds_list_create();
	ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"]);
	
	ds_list_add(global.list_pergunta, ["O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"]);
	ds_list_add(global.list_pergunta, ["A MEMÓRIA RAM É UMA FORMA DE ARMAZENAMENTO PERMANENTE DE DADOS?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A INTERNET É UMA REDE MUNDIAL DE COMPUTADORES CONECTADOS?", "FALSO"]);
	
	ds_list_add(global.list_pergunta, ["HTML É UMA LINGUAGEM DE PROGRAMAÇÃO? ", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A LINGUAGEM DE PROGRAMAÇÃO JAVA FOI DESENVOLVIDA POR GUIDO VAN ROSSUM?", "FALSO"]);
	ds_list_add(global.list_pergunta, ["A PROGRAMAÇÃO ORIENTADA A OBJETOS É UM PARADIGMA DE PROGRAMAÇÃO QUE SE CONCENTRA NA CRIAÇÃO DE OBJETOS QUE POSSUEM DADOS E MÉTODOS?", "VERDADEIRO"]);


#endregion




#region Perguntas_list_fase2

	global.list_pergunta_fase2 = ds_list_create();
	ds_list_add(global.list_pergunta_fase2, ["Qual das seguintes estruturas de dados é adequada para armazenar dados hierárquicos? ", 
											"Árvore",  //resposta
											"Pilha"]);	//resposta errada 
												
	ds_list_add(global.list_pergunta_fase2, ["Qual das seguintes estruturas de dados é adequada para implementar uma pilha?", 
											"Vetor", 
											"Lista encadeada"]); 
												
	ds_list_add(global.list_pergunta_fase2, ["Qual linguagem é usada apenas para acessar e manipular dados em bancos de dados relacionais?", 
											"Sql", 
											"Sqlite"]);  
	
	
	
	ds_list_add(global.list_pergunta_fase2, ["O que é importante para garantir a recuperação de dados em caso de falha do sistema ou erro humano em um banco de dados?",
											"Backup", 
											"Where"]);
											
	ds_list_add(global.list_pergunta_fase2, ["Qual das seguintes atividades NÃO faz parte do ciclo de vida clássico do software?",
											"Manutenção", 
											"Testes"]);
											
	ds_list_add(global.list_pergunta_fase2, ["Qual das seguintes metodologias de desenvolvimento de software enfatiza a entrega contínua de software funcionando?", 
											"Desenvolvimento ágil",
											"Desenvolvimento incrementa"]);
	
	
	
	ds_list_add(global.list_pergunta_fase2, ["Qual dos seguintes diagramas UML é usado para mostrar a interação entre objetos? ", 
											"Diagrama de sequência",
											"Diagrama de classe"]);
											
	ds_list_add(global.list_pergunta_fase2, ["O que em um banco de dados garante que cada linha de uma tabela seja exclusiva?",
											"Chave primária",
											"Chave permanente"]);
											
	ds_list_add(global.list_pergunta_fase2, ["Qual das seguintes abordagens de desenvolvimento de software enfatiza a colaboração entre o cliente e o desenvolvedor?", 
											"Desenvolvimento incremental",
											"Cascata"]);


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