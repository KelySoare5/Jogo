// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//funcao dialogo nonato



function scr_textos_nonato() {
	switch npcNome {
		case "Nonato":
			
			ds_grid_add_text("Parabéns joia de Aluno pela sua aprovação em Análise e Desenvolvimento de Sistemas!", mago2Dialogo, 1, "Diretor Nonato Silva");
					
		break;
	}
}


//funcao do mago3
function scr_textos_mago33() {
	
		switch npcNome {
		case "mago3":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta_final[| 0][0]+ string(global.list_indice[| 0]) +"--->"+ string(global.list_indice[| 1]) , spr_retrato2, 1, "MAGO" );
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_final[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						ds_grid_add_text("       Finalizada perguntas Fase Final\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
					
					case "resp21":
						ds_grid_add_text("       Finalizada perguntas Fase Final\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
	}
}





function scr_textos_mago22() {
	
		switch npcNome {
		case "mago2":
			// recebe um valor aleatorio
			
			ds_grid_add_text(global.list_pergunta_fase2[| 0][0]+ string(global.list_indice[| 0]) +"--->"+ string(global.list_indice[| 1]) , spr_retrato2, 1, "MAGO" );
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 0]],	 "resp11"); //VERDADEIRO index1
					add_op(global.list_pergunta_fase2[| 0][global.list_indice[| 1]],	 "resp21");	//FALSO		 index2
		
		break;
		
					case "resp11":
						ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
					
					case "resp21":
						ds_grid_add_text("       Finalizada perguntas Fase 2\n(Clique em qualquer lugar para continuar)\n               ", spr_retrato2, 1, "MAGO" );
					break;
					
	}
}





//funcao mago2
function scr_textos_mago2() {
	switch npcNome {
		case "mago2":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
		
		// QUESTÃO 1 global.list_pergunta_
			ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
				add_op(global.list_pergunta_fase2[| 0][1],	 "resp11"); //VERDADEIRO
				add_op(global.list_pergunta_fase2[| 0][2],	 "resp21");	//FALSO		
		break;
		
			// CASO VERDADEIRAO 1
					case "resp11":
						ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
						//apagar sempre q responder certo ou errado
						ds_list_delete(global.list_pergunta_fase2, 0);
						
				//  NOVA QUESTÃO
						ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
							add_op(global.list_pergunta_fase2[| 0][2],	 "resp31");			//VERDADEIRO
							add_op(global.list_pergunta_fase2[| 0][1],	 "resp41");			//FALSO
					break;
						
								case "resp31":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta_fase2, 0);
						
							//  NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
									
										//ESCOLHAS
										add_op(global.list_pergunta_fase2[| 0][2],	 "resp171");	
										add_op(global.list_pergunta_fase2[| 0][1],	 "resp181");		
								break;
								
									case "resp171":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
									break;
									
									
									case "resp181":
										ds_grid_add_text( global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
									break;
										
										
										
								case "resp41":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta_fase2, 0);
						
							//  NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
									
										//ESCOLHAS
										add_op(global.list_pergunta_fase2[| 0][1],	 "resp51");
										add_op(global.list_pergunta_fase2[| 0][2],	 "resp61");	
								break;
								
								
									case "resp51":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
								//  NOVA QUESTÃO
										ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
										
											//ESCOLHAS
											add_op(global.list_pergunta_fase2[| 0][2],	 "resp151");
											add_op(global.list_pergunta_fase2[| 0][1],	 "resp161");
									break;
									
									
									case "resp151":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
									break;
									
									
									case "resp161":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
									break;
									
									
								case "resp61":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta_fase2, 0);
						
						// NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
									
										//ESCOLHAS
										add_op(global.list_pergunta_fase2[| 0][1],	 "resp111");
										add_op(global.list_pergunta_fase2[| 0][2],	 "resp121");			
								break;
								
										case "resp111":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta_fase2, 0);
						
										break;
										
										case "resp121":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta_fase2, 0);
						
										break;
			
			
			
					
			// CASO FALSO 1		
					case "resp21":
						/*if global.cont == 0{
							global.joia += 100;	
						}*/
						ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
						//apagar sempre q responder certo ou errado
						ds_list_delete(global.list_pergunta_fase2, 0);
						
			// NOVA QUESTÃO
						ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
						
							//ESCOLHAS
							add_op(global.list_pergunta_fase2[| 0][2],	 "resp71");
							add_op(global.list_pergunta_fase2[| 0][1],	 "resp81");	
					break;
					
							case "resp71":
								/*if global.cont == 0{
									global.joia += 100;	
								}*/
								ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
								
								//apagar sempre q responder certo ou errado
								ds_list_delete(global.list_pergunta_fase2, 0);
						
								
					// NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
									
										//ESCOLHAS
										add_op(global.list_pergunta_fase2[| 0][1],	 "resp131");
										add_op(global.list_pergunta_fase2[| 0][2],	 "resp141");
								break;
								
										case "resp131":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta_fase2, 0);
						
										break;
									
									
										case "resp141":
											/*if global.cont == 0{
												global.joia += 100;	
											}*/
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta_fase2, 0);
						
											
										break;
									
									
									
							case "resp81":
								ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
								ds_list_delete(global.list_pergunta_fase2, 0);
								
					// NOVA QUESTÃO
								ds_grid_add_text(global.list_pergunta_fase2[| 0][0], spr_retrato2, 1, "MAGO" );
								
									//ESCOLHAS
									add_op(global.list_pergunta_fase2[| 0][1],	 "resp91");
									add_op(global.list_pergunta_fase2[| 0][2],	 "resp101");	
							break;
							
									case "resp91":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
										
									break;
									
									case "resp101":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta_fase2, 0);
						
										
									break;
					
	
	}

}




//funcao mago1
function scr_textos(){
	
	//ver qual é o npc_nome
	//se o npc for o mago1 vai ter esse dialogo, pode fazer outro switch para os outros magos
	
	
	switch npcNome{
		
		case "mago1":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
		
		// QUESTÃO 1
			ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
				add_op("VERDADEIRO",	 "resp1");
				add_op("FALSO",	 "resp2");				
		break;
		
			// CASO VERDADEIRAO 1
					case "resp1":
						ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
						//apagar sempre q responder certo ou errado
						ds_list_delete(global.list_pergunta, 0);
						
				//  NOVA QUESTÃO
						ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
							add_op("VERDADEIRO",	 "resp3");
							add_op("FALSO",	 "resp4");	
					break;
						
								case "resp3":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta, 0);
						
							//  NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
										add_op("VERDADEIRO",	 "resp17");
										add_op("FALSO",	 "resp18");	
								break;
								
									case "resp17":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
									break;
									
									
									case "resp18":
										ds_grid_add_text( global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
									break;
										
										
										
								case "resp4":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta, 0);
						
							//  NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
										add_op("VERDADEIRO",	 "resp5");
										add_op("FALSO",	 "resp6");	
								break;
								
								
									case "resp5":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
								//  NOVA QUESTÃO
										ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
											add_op("VERDADEIRO",	 "resp15");
											add_op("FALSO",	 "resp16");
									break;
									
									
									case "resp15":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
									break;
									
									
									case "resp16":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
									break;
									
									
								case "resp6":
									ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
									//apagar sempre q responder certo ou errado
									ds_list_delete(global.list_pergunta, 0);
						
						// NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
										add_op("VERDADEIRO",	 "resp11");
										add_op("FALSO",	 "resp12");			
								break;
								
										case "resp11":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta, 0);
						
										break;
										
										case "resp12":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta, 0);
						
										break;
			
			
			
					
			// CASO FALSO 1		
					case "resp2":
						/*if global.cont == 0{
							global.joia += 100;	
						}*/
						ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
						//apagar sempre q responder certo ou errado
						ds_list_delete(global.list_pergunta, 0);
						
			// NOVA QUESTÃO
						ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
							add_op("FALSO",	 "resp7");
							add_op("VERDADEIRO",	 "resp8");	
					break;
					
							case "resp7":
								/*if global.cont == 0{
									global.joia += 100;	
								}*/
								ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
								
								//apagar sempre q responder certo ou errado
								ds_list_delete(global.list_pergunta, 0);
						
								
					// NOVA QUESTÃO
									ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
										add_op("VERDADEIRO",	 "resp13");
										add_op("FALSO",	 "resp14");
								break;
								
										case "resp13":
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta, 0);
						
										break;
									
									
										case "resp14":
											/*if global.cont == 0{
												global.joia += 100;	
											}*/
											ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
											//apagar sempre q responder certo ou errado
											ds_list_delete(global.list_pergunta, 0);
						
											
										break;
									
									
									
							case "resp8":
								ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
								ds_list_delete(global.list_pergunta, 0);
								
					// NOVA QUESTÃO
								ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato2, 1, "MAGO" );
									add_op("VERDADEIRO",	 "resp9");
									add_op("FALSO",	 "resp10");	
							break;
							
									case "resp9":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
										
									break;
									
									case "resp10":
										ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
										//apagar sempre q responder certo ou errado
										ds_list_delete(global.list_pergunta, 0);
						
										
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

