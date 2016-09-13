function retval = gauss (A, b)
n = size(A, 1); %luu nghiem cua he phuong trinh
b = b(:);  % dam bao vector b luon o dang cot
nb = n + 1;
Ab = [A b]; %ma tran mo rong
%qua trinh thuan
for i = 1 : n-1,
  for j = i+1 : n,
    Ab(j, i  : nb) = Ab(j, i : nb) - Ab(j, i)*Ab(i, i :nb)/Ab(i, i);
    end;
  end;
%qua trinh nghich
x = zeros(n, 1);
x(n) = Ab(n, nb)/Ab(n,n);
for i = n-1 : -1 : 1,
  x(i) = (Ab(i, nb) - Ab(i, i+1:n)*x(i+1:n))/Ab(i, i);
  end;
retval = x;
endfunction
