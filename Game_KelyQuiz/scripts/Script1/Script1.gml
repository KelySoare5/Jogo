// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//global.cont = 0;
function scr_textos(){
	
	//ver qual é o npc_nome
	//se o npc for o mago1 vai ter esse dialogo, pode fazer outro switch para os outros magos
	var cont = 0;
	
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
					







		case "mago2":

			
				
			
			
		
			//se for 0 e desenhar lado esquerdo e se for um do outro lado
		
			// mostra a primeira pergunta e apaga sempre vai ser assim
			//pergunta 1: ["A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++?", "FALSO"]
			ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
			
				add_op("VERDADEIRO",	 global.aux_opc1);
				add_op("FALSO",			 global.aux_opc2);
				
			
			
		break;
		
				case global.aux_opc1:  //opc sendo a primeira
					ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
					ds_list_delete(global.list_pergunta, 0);
					
					/*
					ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
			
						add_op("VERDADEIRO",	 "OPC3");
						add_op("FALSO",			 "OPC4");
						
						case "OPC3":
							ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
							ds_list_delete(global.list_pergunta, 0);
						break;
						
						case "OPC4":
							ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
							ds_list_delete(global.list_pergunta, 0);
						break;
					*/
					
					/*
					ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
					ds_list_delete(global.list_pergunta, 0);
					
					ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
					ds_list_delete(global.list_pergunta, 0);
					
					ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
					ds_list_delete(global.list_pergunta, 0);
					*/
				break
				
				case global.aux_opc2:  //opc sendo a segunda
					ds_grid_add_text(global.retUsuario, spr_retrato2, 1, "MAGO" );
					ds_list_delete(global.list_pergunta, 0);
				break;
				
				global.aux_opc1 += 1; //comeca em zero
				global.aux_opc2 += 1; //comeca em 50
		
		
			
				
				
			
				
				//if global.list_pergunta[| 0][1] == op_resposta[op_selecionado] {
				/*if global.respSelecionada == global.list_pergunta[| 0][1]{
				//case "resQuestao1Errada":
					ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
					break
				//break;
				}*/
				//case "resQuestao1Errada":
					//ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
				//break;
				
				//case "resQuestao1Certa":
					//ds_grid_add_text("RESPOSTA Certa",spr_retrato2, 1, "MAGO" );
				//break;
				
				
				
				
			
			
			/*
			
			//pergunta 2: ["O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS?", "VERDADEIRO"]
			ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato1, 0, "KELY" );
			ds_list_delete(global.list_pergunta, 0);
			
			//pergunta 3: ["CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INSTANCIA DE UMA CLASSE É CRIADA?", "VERDADEIRO"]
			ds_grid_add_text(global.list_pergunta[| 0][0], mago2Dialogo, 1, "MAGO" );
			ds_list_delete(global.list_pergunta, 0);
			
			//pergunta 4:  ["O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES?", "VERDADEIRO"]
			ds_grid_add_text(global.list_pergunta[| 0][0], spr_retrato1, 0, "KELY" );
			ds_list_delete(global.list_pergunta, 0);
			//texto[0]= "Vc é garota(o) de programa? ";
			
			*/
					
		
		
					
			
		
		
		case "mago3":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
			ds_grid_add_text("Você é um garoto(a) de programa (S-sim/N-não)?? eu preciso de texto",mago3Dialogo, 1, "Vernei" );
			ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
			ds_grid_add_text("Então, HTML é uma linguagem de programação (V-verdadeiro/F-Falso)?? mais texto porque sim",mago3Dialogo, 1, "Vernei" );
			ds_grid_add_text("Falso. EU QUERo CAFE......mago3...... nem bebi no ifpi e quando cheguei n tinha mais aqui em casa", spr_retrato1, 0, "KELY" );
			//texto[0]= "Vc é garota(o) de programa? ";
			
			
		break;
		
		case "Nonato":
			ds_grid_add_text("Parabéns joia de Aluno pela sua aprovação em Análise e Desenvolvimento de Sistemas!", mago2Dialogo, 1, "Diretor Nonato Silva" );
			//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
		break;
	}
	
	cont += 1;
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
	global.teste = _texto;
	op_num ++;
}

