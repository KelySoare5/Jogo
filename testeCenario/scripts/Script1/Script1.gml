// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//global.cont = 0;
function scr_textos(){
	
	//ver qual é o npc_nome
	//se o npc for o mago1 vai ter esse dialogo, pode fazer outro switch para os outros magos
	switch npcNome{
		case "mago1":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
		
		// QUESTÃO 1
			ds_grid_add_text("A LINGUAGEM DE PROGRAMAÇÃO PYTHON É BASEADA EM C++.",spr_retrato2, 1, "MAGO" );
			//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
			//ds_grid_add_text("Então, HTML é uma linguagem de programação (V-verdadeiro/F-Falso)?? mais texto porque sim",spr_retrato2, 1, "MAGO" );
			//ds_grid_add_text("Falso. EU QUERo CAFE............. nem bebi no ifpi e quando cheguei n tinha mais aqui em casa", spr_retrato1, 0, "KELY" );
			
			//texto[0]= "Vc é garota(o) de programa? ";
				add_op(" VERDADEIRO",	 "resp1");
				add_op(" FALSO ",	 "resp2");				
				
			break;
			// CASO VERDADEIRAO 1
					case "resp1":
						ds_grid_add_text("RESPOSTA ERRADA!",spr_retrato2, 1, "MAGO" );
						//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
				
						//global.cont += 1;
						//if global.cont == 1{
						//	global.joia += 100;	
						//}
			//  NOVA QUESTÃO
						ds_grid_add_text("O HARDWARE DO COMPUTADOR INCLUI DISPOSITIVOS DE ENTRADA, DISPOSITIVOS DE SAÍDA E ARMAZENAMENTO DE DADOS.",spr_retrato2, 1, "MAGO" );
							add_op(" VERDADEIRO",	 "resp3");
							add_op("FALSO ",	 "resp4");	
						break;
								case "resp3":
									
									if global.cont == 0{
										global.joia += 100;	
									}
									ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
			// NOVA QUESTÃO
									ds_grid_add_text("CONSTRUTOR É O NOME DADO AO MÉTODO QUE É EXECUTADO AUTOMATICAMENTE QUANDO UMA NOVA INST NCIA DE UMA CLASSE É CRIADA.",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp17");
										add_op("FALSO ",	 "resp18");	
			
								break;
									case "resp17":
										ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
										
										if global.cont == 0{
											global.joia += 100;	
										}
									break;
										case "resp18":
											ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
										break;
								case "resp4":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
			// NOVA QUESTÃO
									ds_grid_add_text("O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES.",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp5");
										add_op("FALSO ",	 "resp6");	
								break;
									case "resp5":
									ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
									
									if global.cont == 0{
										global.joia += 100;	
									}
									ds_grid_add_text("A MEMÓRIA RAM É UMA FORMA DE ARMAZENAMENTO PERMANENTE DE DADOS.",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp15");
										add_op("FALSO ",	 "resp16");
								break;
									case "resp15":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
								
								break;
									case "resp16":
										ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
										
										if global.cont == 0{
											global.joia += 100;	
										}
									break;
								case "resp6":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
			// NOVA QUESTÃO
									ds_grid_add_text("A INTERNET É UMA REDE MUNDIAL DE COMPUTADORES CONECTADOS.",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp11");
										add_op("FALSO ",	 "resp12");			
					break;
								case "resp11":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
									
								break;
								case "resp12":
									ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
									
									if global.cont == 0{
										global.joia += 100;	
									}
								break;
							//case "resp3":
							//	ds_grid_add_text("CERTA RESPOSTA",spr_retrato2, 1, "MAGO" );
							//	global.cont += 1;
							//	if global.cont == 1{
							//		global.joia += 100;	
							//	}
							//	ds_grid_add_text("so um teste mesmo",spr_retrato2, 1, "MAGO" );
						//	break
								
							//case "resp4":
							//	ds_grid_add_text("A INTERNET É UMA REDE MUNDIAL DE COMPUTADORES CONECTADOS.",spr_retrato2, 1, "MAGO" );
				//	break;
					
			// CASO FALSO 1		
					case "resp2":
						
						if global.cont == 0{
							global.joia += 100;	
						}
						ds_grid_add_text("CERTA RESPOSTA!!",spr_retrato2, 1, "MAGO" );
						//ds_grid_add_text("A PROGRAMAÇÃO ORIENTADA A OBJETOS É UM PARADIGMA DE PROGRAMAÇÃO QUE SE CONCENTRA NA CRIAÇÃO DE OBJETOS QUE POSSUEM DADOS E MÉTODOS.",spr_retrato2, 1, "MAGO" );
						//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
						
			// NOVA QUESTÃO
						ds_grid_add_text("O SISTEMA BINÁRIO É USADO PARA REPRESENTAR DADOS EM COMPUTADORES.",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp7");
										add_op("FALSO ",	 "resp8");	
								break;
									case "resp7":
										
										if global.cont == 0{
											global.joia += 100;	
										}
									ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
			// NOVA QUESTÃO
									ds_grid_add_text("A LINGUAGEM DE PROGRAMAÇÃO JAVA FOI DESENVOLVIDA POR GUIDO VAN ROSSUM!",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp13");
										add_op("FALSO ",	 "resp14");
								break;
									case "resp13":
										ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
									break;
									case "resp14":
										ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
										
										if global.cont == 0{
											global.joia += 100;	
										}
									break;
								case "resp8":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
				// NOVA QUESTÃO
									ds_grid_add_text("A PROGRAMAÇÃO ORIENTADA A OBJETOS É UM PARADIGMA DE PROGRAMAÇÃO QUE SE CONCENTRA NA CRIAÇÃO DE OBJETOS QUE POSSUEM DADOS E MÉTODOS",spr_retrato2, 1, "MAGO" );
										add_op(" VERDADEIRO",	 "resp9");
										add_op("FALSO ",	 "resp10");	
					
						break;
									case "resp9":
									ds_grid_add_text("RESPOSTA CERTA",spr_retrato2, 1, "MAGO" );
									
									if global.cont == 0{
										global.joia += 100;	
									}
								break;
								case "resp10":
									ds_grid_add_text("RESPOSTA ERRADA",spr_retrato2, 1, "MAGO" );
							break;
					
					//case "resp3":
					//	ds_grid_add_text("Essa é a 3 resposta",spr_retrato2, 1, "MAGO" );
						//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
						
					//break;
			//	2 PERGUNTA
			
		
			
		
		
		case "mago2":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
			ds_grid_add_text("Você é um garoto(a) de programa (S-sim/N-não)??",mago2Dialogo, 1, "MAGO" );
				
			ds_grid_add_text("teste teste", spr_retrato1, 0, "KELY" );
			ds_grid_add_text("teste teste teste teste",mago2Dialogo, 1, "MAGO" );
			ds_grid_add_text("teste testeteste testeteste teste", spr_retrato1, 0, "KELY" );
			//texto[0]= "Vc é garota(o) de programa? ";
				
					
		break;
		
					
			
		
		
		case "mago3":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
			ds_grid_add_text("Você é um garoto(a) de programa (S-sim/N-não)?? ",mago3Dialogo, 1, "Vernei" );
			ds_grid_add_text("aqui vai ser adicionado perguntas de estruturas de dados I e II", spr_retrato1, 0, "KELY" );
			ds_grid_add_text("Engenharia de software",mago3Dialogo, 1, "Vernei" );
			ds_grid_add_text("teste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste teste", spr_retrato1, 0, "KELY" );
			//texto[0]= "Vc é garota(o) de programa? ";
			
			
		break;
		
		case "Nonato":
			ds_grid_add_text("Parabéns joia de Aluno pela sua aprovação em Análise e Desenvolvimento de Sistemas!", mago2Dialogo, 1, "Diretor Nonato Silva" );
			//ds_grid_add_text("são 11hrs da noite e eu aqui mexendo nesse bicho", spr_retrato1, 0, "KELY" );
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



function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num ++;
}

