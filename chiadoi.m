function [x, k] = chiadoi (f, a, b, epsilon, maxit)
%input: f lam ham can tim nghiem
%       (a,b) la khoang phan ly nghiem
%       epsilon la sai so tuyet doi
%       maxit la so phep lap toi da
%output:x la nghiem gan dung cua phuong trinh
%       k la so lap can thiet
if nargin < 5,
  maxit = 1e+3;
  end;
if nargin < 4,
  epsilon = 1e-5;
  end;
if a > b,
  temp = b;
  b = a;
  a = temp;
  end;
count = 0;
m = (a+b)/2;
while(((b-a) > epsilon) && (count < maxit)), 
  if feval(f, m) * feval(f, b) < 0,
    a = m;
  elseif feval(f, m) * feval(f, a) < 0,
    b = m;
    end;
  m = (a+b)/2;
  count = count + 1;
  end;
x = (b+a)/2;
k = count;
endfunction
