% ch02/tutorial_problem_6.m

music_file = 'res/piano.wav';

info = audioinfo(music_file);

x = audioread(music_file);
l = length(x)

audiowrite([music_file '_half.wav'], x(1:2:l), info.SampleRate / 2);

audiowrite([music_file '_quarter.wav'], x(1:4:l), info.SampleRate / 4);

system(['mplayer ' '"' music_file '"']);

system(['mplayer ' '"' music_file '_half.wav"']);

system(['mplayer ' '"' music_file '_quarter.wav"']);
