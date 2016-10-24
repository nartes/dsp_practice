% ch02/tutorial_problem_19.m

function tutorial_problem_19
  fname = 'res/piano.wav'
  finfo = audioinfo(fname);
  x0 = audioread(fname);
  Fs0 = finfo.SampleRate;

  Fs = Fs0 / 4;
  if Fs > Fs0
    error("TODO(nartes): interploate for upsampling");
    return;
  end

  x = x0(1 : Fs0 / Fs : length(x0));

  for a = [0.9 0.7 0.5 0.1]
    for tau = [50e-3, 100e-3, 500e-3]
      D = floor(tau * Fs);
      h = [1 zeros(1, D - 1) -a];
      y = filter(1, h, x);
      mplayer(y, Fs)
    end
  end
end

function mplayer(x, fs)
  fout = ['/tmp/' md5sum(int2str(time()), true) '.wav'];
  audiowrite(fout, x, fs);
  system(['mplayer "' fout '"']);
end
