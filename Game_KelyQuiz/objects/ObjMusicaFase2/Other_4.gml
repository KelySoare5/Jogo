/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.vol_musica = 1;
//global.vol_fx = 1;

//global.musica1= audio_play_sound(Sond_andando1,1,false); // som da primeira fase
global.musica2= audio_play_sound(Som_fase2,1,true); // musica da 3 fase



//audio_sound_gain(global.musica1, 0, 0); // efeito de som
//audio_sound_gain(global.musica1, global.vol_musica,10000); //começa baixa e vai aumentando

audio_sound_gain(global.musica2, 0, 0); // efeito de som
audio_sound_gain(global.musica2, global.vol_musica,10000); //começa baixa e vai aumentando

