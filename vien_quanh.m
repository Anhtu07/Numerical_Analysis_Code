function B = vien_quanh (A, first_loop)
if size(A) != size(A'),
  disp("Ma tran khong co ma tran nghich dao");
  return;
  end;

n = size(A)(1);
B = zeros(n);
 if n == 2,
  B = (1/(A(1,1)*A(2,2)-A(1,2)*A(2,1)))* [A(2,2) -A(1,2); -A(2,1) A(1,1)];
  return;
  end;

An = A(1:(n-1), 1:(n-1));
a = A(n, 1:(n-1));
b = A(1:(n-1), n);
ann = A(n,n);
A1 = vien_quanh(An);

B(n,n) = 1/(ann-a*A1*b); bnn = B(n,n);
B(1:(n-1),n) = -A1*b*bnn; beta = B(1:(n-1),n);
B(n,1:(n-1)) = (1/(-ann+a*A1*b))*a*A1; alpha = B(n,1:(n-1));
B(1:(n-1),1:(n-1)) = A1*(eye(n-1)-b*alpha);
endfunction
