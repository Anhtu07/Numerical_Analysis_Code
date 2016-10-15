function x = eig_val (A)
if size(A) != size(A'),
  disp("Ma tran A khong phai ma tran vuong");
  return;
  end;

p = char_poly(A);
x = roots(p);
endfunction
