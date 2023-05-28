// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//funcao dialogo nonato
function scr_textos_nonato() {
	switch npcNome {
		case "Nonato":			
			ds_grid_add_text("Parabéns joia de Aluno pela sua aprovação em Análise e Desenvolvimento de Sistemas!", nonato_recortado, 1, "Diretor Nonato Silva");					
		break;
	}
}


//funcao do mago3
function scr_textos_mago33() {
	
		switch npcNome {
		case "mago3":
			// recebe um valor aleatorio
			//+ string(global.list_indice[| 0]) +"--->"+ string(global.list_indice[| 1]) 
			ds_grid_add_text(global.list_pergunta_final[| 0][0], mago3Dialogo, 1, "MAGO" );
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						ds_grid_add_text("       Finalizada perguntas Fase Final\n(Clique em qualquer lugar para continuar)\n               ", mago3Dialogo, 1, "MAGO" );
					break;
					
					case "resp21":
						ds_grid_add_text("       Finalizada perguntas Fase Final\n(Clique em qualquer lugar para continuar)\n               ", mago3Dialogo, 1, "MAGO" );
					break;
	}
}




//funcao mago2
function scr_textos_mago22() {
	
		switch npcNome {
		case "mago2":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta_fase2[| 0][0], mago2Dialogo, 1, "MAGO" );
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)\n               ", mago2Dialogo, 1, "MAGO" );
					break;
					
					case "resp21":
						ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)\n               ", mago2Dialogo, 1, "MAGO" );
					break;
					
	}
}




//funcao mago1
function scr_textos_mago1() {
	
		switch npcNome {
		case "mago1":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
					add_op(global.list_pergunta[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						ds_grid_add_text("       Finalizada perguntas Fase 1\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
					
					case "resp21":
						ds_grid_add_text("       Finalizada perguntas Fase 1\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
					
	}
}






//função para add linhas sempre na ultima posicao
function ds_grid_add_rown(){
	///@arg ds_grid
	
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}



function ds_grid_add_text(){
	///@arg texto
	///@arg  retrato
	///@arg lado
	///@arg nome
	
	var _grid = texto_grid;
	var _y = ds_grid_add_rown(_grid);
	
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	
}




// para adcionar as opcoes
function add_op(_texto, _resposta){
	//sempre repete2 vezes 
	
	
	//add_op("VERDADEIRO",	 "resp1"); passar verdadeiro ou falso e um contador
	//add_op("FALSO",	 "resp2"); 
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	// essa pode remover
	//global.teste = _texto;
	op_num ++;
}

