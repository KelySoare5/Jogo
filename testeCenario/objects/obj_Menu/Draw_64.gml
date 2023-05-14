/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//draw_set_font(Font_Menu);
//draw_set_color(c_white);
var dist = 55; 

//Centralizando
var gui_largura = display_get_gui_width();
var gui_altura =  display_get_gui_height();
var x1 = gui_altura /2;
var y1 = gui_altura /2;

// desenhando as opçoes de acordo com o tamanho dela
for (var i =0; i< op_max; i++){
	// deixar no centro
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if (index==i){
		draw_set_color(c_yellow); // cor selecionada amarela
	} else {
		draw_set_color(c_white);
	}
	draw_text(30, 30 + (dist *i), opcoes[i]);
}

draw_set_font(-1);