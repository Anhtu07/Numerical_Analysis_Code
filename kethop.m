function [x, k] = kethop (f, a, b, epsilon, maxit)
%input: f la ham can tim nghiem
%       (a, b) la khoang phan ly nghiem
%       epsilon la sai so tuyet doi
%       maxit la so phep lap toi da
%output:x la nghiem gan dung cua phuong trinh
%       k la so phep lap can thiet
if nargin < 5,
  maxit = 1e+3;
  end;
if nargin < 4,
  epsilon = 1e-3;
  end;
step = 0.0001;
range = a:step:b;
der1 = diff(f(range))./step;
der2 = (der1(2)-der1(1))/step;
disp(der2)
der1(1)
if f(a) * der2 > 0,
  temp = b;
  b = a;
  a = temp;
  end;
count = 0;
while abs(a-b) > epsilon,
  b = -(f(b)/daoham1(f,b)) + b;
  a = (a*f(b) - b*f(a))/(f(b)- f(a));
  count = count + 1;
  end;
x = (a+b)/2;
k = count;
endfunction