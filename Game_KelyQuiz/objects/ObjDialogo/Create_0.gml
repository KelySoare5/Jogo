


enum infos{
	//infos.nome retorna 3 ...
	Texto,
	//coluna retrato....
	Retrato,
	Lado,
	Nome
}

//a = 0;

npcNome= "";
//quatro coisas para add dentro
texto_grid = ds_grid_create(4, 0);
//texto[0] = ""; //criando uma array
pagina = 0;


op[0] = ""; //guarda as opcoes
op_resposta[0] = ""; //quando clica na opcao, pra saber para qual resposta vai
op_num = 0; //ver quantas opcoes tem
op_selecionado = 0; 
op_draw = false; //pra saber se tem q desenhar as opcoes




//pode da errado nos outros duialogos
//global.respSelecionada = "";
//global.retUsuario = "";


global.aux_opc1 = 0;
global.aux_opc2 = 50;


inicializar= false;

// contagem de letras KS 
caractere = 0;
alarm[0] = 1;