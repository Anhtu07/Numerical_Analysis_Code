%giai phuong trinh dang x = g(x)
%input: g la ham ve phai
%       q la can tren cua dao ham g'(x)
%       x0 la xap xi dau
%       epsilon la sai so tuyet doi
%       maxit la so phep lap toi da
%output:k la so lap can thiet
%       x la nghiem gan dung thu k

function [x, k] = lapdon (g, q, x0, epsilon, maxit)
  if nargin < 5,
    maxit = 1e+3;
    end;
  if nargin < 4,
    epsilon = 1e-5;
    end;
  delta = epsilon*(1-q)/q;
  k = 1;
  x = feval(g, x0)
  while(abs(x-x0) >= delta && (k < maxit)),
    x0 = x;
    x = feval(g, x0);
    disp(x);
    k = k+1;
    end;
endfunction
