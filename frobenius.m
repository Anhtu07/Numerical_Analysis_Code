function P = fro (A)
n = size(A)(1);
v = ones(1,n);
X = D = diag(v);
M1 = M2 = D;
i = n;
while i >= 2,
  if A(i, i-1) != 0;
    M1 = M2 = D;
    for j = [1:n],
      M1(i-1, j) = A(i, j);
    end;
    for j = [1:n],
      if j != (i-1),
        M2(i-1, j) = 0-A(i, j)/A(i, i-1);
      else,
        M2(i-1, j) = 1/A(i, j);
      end;
    end;
    A = M1*A*M2;
    X = X*M2;
  end;
  i = i -1;
end;
 P = A;
endfunction
