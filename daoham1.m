function m = daoham1 (f, x)
%input: f la ham so
%       x la diem can dao ham
%output:m la gia tri dao ham f tai x
step = 0.01;
prev = 0;
l = (f(x)-f(x-step))/step;
while abs(l-prev) > 1e-5,
  prev = (f(x)-f(x-step))/step;
  step = step/10;
  l = (f(x)-f(x-step))/step;
  end;

prev = 0;  
step = 0.01;
r = (-f(x)+f(x+step))/step;
while abs(r-prev) > 1e-5,
  prev = (-f(x)+f(x+step))/step;
  step = step/10;
  r = (-f(x)+f(x+step))/step;
  end;
  
m = r;
endfunction