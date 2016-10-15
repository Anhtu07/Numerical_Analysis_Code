function [P,M] = frobenius (A, X)
% A la ma tran can dua ve dang frobenius
% X la ma tran dang bien doi A ve frobenius
n = size(A)(1);
D = eye(n);
if nargin <= 1,
  X = D;
  end;
 
i = n;
while i >= 2,
  if A(i, i-1) != 0;
    M1 = M2 = D;
    for j = [1:n],
      M1(i-1, j) = A(i, j);
    end;
    for j = 1:n,
      if j != (i-1),
        M2(i-1, j) = 0-A(i, j)/A(i, i-1);
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
        for k = i:(n-1),
          S1 = S2 = D;
          S2(1:(k-1), k+1) = A(1:(k-1), k);
          S1(1:(k-1), k+1) = (-1)*A(1:(k-1), k);
          A = S1*A*S2;
          X = X*S2;
        end;
        if A(1:(i-1), n) == zeros(i-1, 1),
          break;
        else,
            k = i-1;
          for j = 1:(i-1),
            k = i-j;
            if A(k,n) != 0,
              break;
             end;
          end;
          U1 = U2 = zeros(n);
          U1(1:(k-1), 1:(k-1)) = eye(k-1);
          for m = k:(n-1),
            U1(m, m+1) = 1;
            end;
          U1(n,k) = 1;
          U2 = transpose(U1);
          A = U1*A*U2;
          X = X*U2;
          [A, X] = frobenius(A, X);
        end;
      end;
    end;
  end;
  i = i -1;
end;
P = A;
M = X;
endfunction
