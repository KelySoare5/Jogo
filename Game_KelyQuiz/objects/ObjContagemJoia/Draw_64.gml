/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(Font_contagem);
draw_text(102,126, "Joia: " + string(global.joia));

//fechar fonte
draw_set_font(-1);




//desenha se é joia ou nao
draw_set_font(FontDialogo);
draw_set_color(c_black);
draw_text(140,200, string(global.retUsuario));
draw_set_font(-1);
draw_set_color(-1);

