function R = gauss_jordan (A)
%input: A la ma tran mo rong cua help
%output: R la ma tran mo rong sau khi da bien doi
%             cot cuoi cung cua R la nghiem cua he phuong trinh ban dau
s = size(A);
n = min(s);
for i = 1:n,
  r = 1;
  t = 1;
  max = A(1,1);
  for i = 1:n,
    for j = 1:n,
      if A(i,j) > max,
        max = A(i,j);
        t = i;
        r = j;
        end;
      end;
    end;
  t = A(r+i-1, :);
  A(r+i-1, :) = A(i, :);
  A(i, :) = t;
  
  A(i, [1: i-1 i+1:end]) = A(i, [i:i-1 i+1:end])/A(i,i);
  A(i,i) = 1;
  s = A(i, i+1:end);
  for j = [j: i-1 i+1:n],
    A(j, i+1 : end) = A(j, i+1:end) - A(i,j).*s;
    end;
  A([1: i-1 i+1:end], i) = 0;
  end;
R = A;
endfunction
