function C = super_vq (A)
if det(A) == 0,
  disp("Ma tran suy bien");
  return;
  end;
T = A';
A = A*T;
C = vien_quanh(A);
C = T*C;
endfunction
