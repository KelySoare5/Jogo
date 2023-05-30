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

function scr_textos_nonato3() {
	switch npcNome {
				
		case "NonatoFase3":			
			ds_grid_add_text("Parabens aluno, por chehar até aqui", nonato_recortado, 1, "Diretor Nonato Silva");	
			ds_grid_add_text("Hoje obteve muito conhecimento nas fases anterios!", nonato_recortado, 1, "Diretor Nonato Silva");	
			ds_grid_add_text("Essa é a ultima fase!! Para passar nessa sua média precisa ser igual ou maior que sete.", nonato_recortado, 1, "Diretor Nonato Silva");	
			ds_grid_add_text("Boa sorte!!", nonato_recortado, 1, "Diretor Nonato Silva");
		break;
	}
}

//funcao do mago3
function scr_textos_mago33() {
	
		switch npcNome {
		case "mago3":
			// recebe um valor aleatorio
			//+ string(global.list_indice[| 0]) +"--->"+ string(global.list_indice[| 1]) 
			ds_grid_add_text(global.list_pergunta_final[| 0][0], mago3Dialogo, 1, "VERNEI" );
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						
						//se for reprovado
						if global.media < 700 { 
							ds_grid_add_text("       REPROVADO!!! \n   Você não é uma joia", mago3Dialogo, 1, "VERNEI" );
						}
						//se for aprovado
						else{
							ds_grid_add_text("       Parabéns, você foi APROVADO...\n    Com média: ->" + string((global.media + global.joia) / 3) + "<- \n(Clique em qualquer lugar para ir até o Diretor)", mago3Dialogo, 1, "VERNEI" );
						}
						
					break;
					
					case "resp21":
						
						
						//se for reprovado
						if global.media < 700 { 
							ds_grid_add_text("       REPROVADO!!! \n   Você não é uma joia", mago3Dialogo, 1, "VERNEI" );
						}
						//se for aprovado
						else{
							ds_grid_add_text("       Parabéns, você foi APROVADO...\n    Com média: ->" + string((global.media + global.joia) / 3) + "<- \n(Clique em qualquer lugar para ir até o Diretor)", mago3Dialogo, 1, "VERNEI" );
						}
						
						
					break;
	}
}




//funcao mago2
function scr_textos_mago22() {
	
		switch npcNome {
		case "mago2":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta_fase2[| 0][0], mago2Dialogo, 1, "MAGO2" );
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						if global.joia < 700 {
							ds_grid_add_text("       Você não atingiu 700 joias \n(Clique em qualquer lugar para continuar)", mago2Dialogo, 1, "MAGO2" );
						
						}else{
							ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)", mago2Dialogo, 1, "MAGO2" );
						}
					
					break;
					
					case "resp21":
						if global.joia < 700 {
							ds_grid_add_text("       Você não atingiu 700 joias \n(Clique em qualquer lugar para continuar)", mago2Dialogo, 1, "MAGO2" );
						
						}else{
							ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)", mago2Dialogo, 1, "MAGO2" );
						}
					break;
					
	}
}




//funcao mago1
function scr_textos_mago1() {
	
		switch npcNome {
		case "mago1":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO1" );
					add_op(global.list_pergunta[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
					
						if global.joia < 700 {
							ds_grid_add_text("       Você não atingiu 700 joias \n(Clique em qualquer lugar para continuar)", spr_retrato2, 1, "MAGO1" );
						
						}else{
							ds_grid_add_text("       Finalizada perguntas Fase 1\n(Clique em qualquer lugar para continuar)", spr_retrato2, 1, "MAGO1" );
						}
					
					break;
					
					case "resp21":
					
						if global.joia < 700 {
							ds_grid_add_text("       Você não atingiu 700 joias \n(Clique em qualquer lugar para continuar)", spr_retrato2, 1, "MAGO1" );
						
						}else{
							ds_grid_add_text("       Finalizada perguntas Fase 1\n(Clique em qualquer lugar para continuar)", spr_retrato2, 1, "MAGO1" );
						}
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

