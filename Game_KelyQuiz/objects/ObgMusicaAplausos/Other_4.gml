/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



global.vol_musica = 1;
//global.vol_fx = 1;

global.musica3= audio_play_sound(som_aplausos,1,true); // som da primeira fase
//global.musica2= audio_play_sound(Som_suspense,1,false); // musica da 3 fase



audio_sound_gain(global.musica3, 0, 0); // efeito de som
audio_sound_gain(global.musica3, global.vol_musica,1000); //começa baixa e vai aumentando

//audio_sound_gain(global.musica2, 0, 0); // efeito de som
//audio_sound_gain(global.musica2, global.vol_musica,10000); //começa baixa e vai aumentando






