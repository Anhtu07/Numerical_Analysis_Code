function p = char_poly (A)
n = size(A)(1);
v = ones(1,n);
X = D = diag(v);
M1 = M2 = D;
i = n;
if n == 1,
  p = [-1 A(1)];
  return;
  end;
while i >= 2,
  if A(i, i-1) != 0;
    M1 = M2 = D;
    for j = [1:n],
      M1(i-1, j) = A(i, j);
    end;
    for j = [1:n],
      if j != (i-1),
        M2(i-1, j) = -A(i, j)/A(i, i-1);
      else,
        M2(i-1, j) = 1/A(i, j);
      end;
    end;
    A = M1*A*M2;
    X = X*M2;
  elseif A(i, i-1) == 0,
    for j = 1:(i-1),
      if A(i, j) != 0,
        C = D;
        C(j, j) = 0; C(j,i-1)=1;
        C(i-1,i-1)=0; C(i-1,j)=1;
        A = C*A*C;
        X=X*C;
        i = i+1;
        break;
      elseif j == i-1,
        B = A(i:n, i:n);
        A = A(1:i-1, 1:i-1);
        b = size(B)(1);
        p = (-1)^b*[1 -B(1, 1:b)];
        p = conv(p, char_poly(A));
        return;
        end;
      end;
    end;
  i = i -1;
end;
p = (-1)^n*[1 -A(1, 1:n)];
endfunction
