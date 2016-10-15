function C = eig_vec (A)
if size(A) != size(A'),
  disp("Ma tran A khong phai ma tran vuong");
  return;
  end;
 
 n = size(A)(1);
[P, M] = frobenius(A);
C = [];
format rat;
i = 1
while i <= n,
  if i == n || P(i+1, i) == 0 ,
    x = eig_val(P(1:i, 1:i));
    k = size(x)(1)
    for p = 1:k,
      v = zeros(n,1);
      c = 0;
        for y = i:-1:1,
          v(y) = x(p)^(c);
          c = c+1;
          end;
        C = [C M*v];
        end;
     end;
   i = i+1
   end;
endfunction
