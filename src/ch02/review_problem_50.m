% ch02/review_problem_50.m

function review_problem_50
  fname = 'res/piano.wav'
  finfo = audioinfo(fname);
  x0 = audioread(fname);
  Fs0 = finfo.SampleRate;

  Fs = Fs0 / 4;
  if Fs > Fs0
    error("TODO(nartes): interpolate for upsampling");
    return;
  end

  x = x0(1 : Fs0 / Fs : length(x0));

  for a = [0.7]
    for tau = [50e-3, 100e-3, 500e-3]
      D = floor(tau * Fs);
      h = [1 zeros(1, D - 1) -a];
      y = filter(1, h, x);
      mplayer(y, Fs);

      y = filter([zeros(1, D) 1], [1 zeros(1, D - 1) a], x);
      mplayer(y, Fs);
    end
  end
end

function mplayer(x, fs)
  fout = ['/tmp/' md5sum(int2str(time()), true) '.wav'];
  audiowrite(fout, x, fs);
  system(['mplayer "' fout '"']);
end
