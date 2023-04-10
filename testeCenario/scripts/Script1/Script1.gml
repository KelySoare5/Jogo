// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){
	//ver qual é o npc_nome
	//se o npc for o mago1 vai ter esse dialogo, pode fazer outro switch para os outros magos
	switch npcNome{
		case "mago1":
		//se for 0 e desenhar lado esquerdo e se for um do outro lado
			ds_grid_add_text("Primeiro texto aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",spr_retrato2, 1, "Mago" );
			ds_grid_add_text("Segundo texto aaaaaaaaaaaaaaaa", spr_retrato1, 0, "Kely" );
			ds_grid_add_text("Terceiro texto aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",spr_retrato2, 1, "Mago" );
			ds_grid_add_text("Quarto texto aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", spr_retrato1, 0, "Kely" );
			//texto[0]= "Vc é garota(o) de programa? ";
			
			
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


