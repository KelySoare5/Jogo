

#region Perguntas_list_fase1

    global.list_pergunta = ds_list_create(); //VERDADEIRO   	 FALSO
    ds_list_add(global.list_pergunta, ["A linguagem de programação Python é baseada em C++?",
   									 "Falso", //resposta correta
   									 "Verdadeira"]); // resposta errada
   									 
    ds_list_add(global.list_pergunta, ["O hardware do computador inclui dispositivos de entrada, dispositivos de saída e armazenamento de dados?",
   									 "Verdadeiro",
   									 "Falso"]);
   									 
    ds_list_add(global.list_pergunta, ["Construtor é o nome dado ao método que é executado automaticamente quando uma nova instância de uma classe é criada?",
   									 "Verdadeiro",
   									 "Falso"]);
    
    
    
    ds_list_add(global.list_pergunta, ["O sistema binário é usado para representar dados em computadores?",
   									"Verdadeiro",
   									"Falso"]);
   								    
    ds_list_add(global.list_pergunta, ["A memória RAM é uma forma de armazenamento permanente de dados?",
   									 "Falso",
   									 "Verdadeiro"]);
   									 
    ds_list_add(global.list_pergunta, ["A internet é uma rede mundial de computadores conectados?",
   									 "Falso",
   									 "Verdadeiro"]);
    
    
    
    ds_list_add(global.list_pergunta, ["HTML é uma linguagem de programação? ",
   									 "Falso",
   									 "Verdadeiro"]);
   									 
    ds_list_add(global.list_pergunta, ["A linguagem de programação java foi desenvolvida por guido Van Rossum?",
   									 "Falso",
   									 "Verdadeiro"]);
   									 
    ds_list_add(global.list_pergunta, ["A programação orientada a objetos é um paradigma de programação que se concentra na criação de objetos que possuem dados e métodos?",
   									 "Verdadeiro",
   									 "Falso"]);


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




#region Perguntas_list_final

	global.list_pergunta_final = ds_list_create();
	ds_list_add(global.list_pergunta_final, ["O modelo de dados em rede é uma alternativa ao modelo de dados relacional que permite que cada registro tenha múltiplos pais ou filhos? ", 
											"Verdadeiro",  //resposta
											"Falso"]);	//resposta errada 
												
	ds_list_add(global.list_pergunta_final, ["Qual é a função principal do kernel de um sistema operacional?", 
											"Gerenciar a memória do sistema", 
											"Gerenciar a rede do sistema"]); 
												
	ds_list_add(global.list_pergunta_final, ["Qual é o objetivo do algoritmo de escalonamento de processos?", 
											"Executar processos de forma justa e eficiente", 
											"Alocar memória de forma eficiente"]);  
	
	
	
	ds_list_add(global.list_pergunta_final, ["Qual é a função da tabela de páginas na gestão da memória virtual?",
											"Mapear endereços lógicos em endereços físicos de memória", 
											"Gerenciar as interrupções de hardware"]);
											
	ds_list_add(global.list_pergunta_final, ["Qual é a linguagem de programação mais comumente usada para desenvolvimento de páginas web?",
											"PHP", 
											"Python"]);
											
	ds_list_add(global.list_pergunta_final, ["Qual é a diferença entre uma sessão e um cookie em uma aplicação web?", 
											"Uma sessão é armazenada no servidor enquanto um cookie é armazenado no cliente",
											"Uma sessão é armazenada no cliente enquanto um cookie é armazenado no servidor"]);
	
	
	
	ds_list_add(global.list_pergunta_final, ["Qual é a finalidade do protocolo HTTP? ", 
											"Padronizar a comunicação entre servidores web e clientes web",
											"Criptografar dados para transmissão segura na web"]);
											
	ds_list_add(global.list_pergunta_final, ["O que é uma API REST?",
											"Uma API para acesso a recursos em um sistema web usando o protocolo HTTP",
											"Uma API para acesso a dados de bancos de dados relacionais"]);
											
	ds_list_add(global.list_pergunta_final, ["Qual é a finalidade do framework Ruby on Rails?", 
											"Desenvolvimento de aplicações web",
											"Desenvolvimento de aplicativos móveis"]);


#endregion



#region List_index
	global.list_indice = ds_list_create();
	ds_list_add(global.list_indice, 2, 1);
#endregion



// quando criar o obj do player

//variavel global para controlar o 
//dialogo e aparecer so uma vez quando tiver colisao


//retorna uma resposta para o usuario
//essa é usada no obj dialogo e joia
global.retUsuario = "";
global.media = 0;

nom_mago1 = false;
nom_mago2 = false;
nom_mago3 = false;


global.nota1 = 0;
global.nota2 = 0;
global.nota3 = 0;




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