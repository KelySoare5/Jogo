/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _guil= display_get_gui_width();
var _guia = display_get_gui_height();

// dimenções do quadro preto
var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;

// fonte
draw_set_font(FontDialogo);

//desenhar a tela prata
draw_rectangle_color(_xx, _yy, _guil, _guia, _c, _c, _c, _c, false); 

//escrever texto nessa posição
draw_text_ext(_xx + 32, _yy + 32, texto[pagina], 32, _guil - 64);