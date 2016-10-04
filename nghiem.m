function retval = nghiem (a)
b = a
n = size(a)(2)
delta = zeros(1, n)
epsilon = 1e-3;
loop_again = 1;
count = 0;
retval = zeros(1,n-1);
while loop_again,
  b = a
  count = count + 1;
  for i = 1:n,
    x = i;
    y = i;
    c = 1;
    a(i) = b(x)*b(y);
    while x >1 && y < n,
      x = x - 1;
      y = y + 1;
      a(i) +=  2*(-1)^c*b(x)*b(y);
      c = c+1;
      end;
    end;
  for i = 1:n,
    delta(i) = abs((b(i)^2 - a(i))/a(i));
    end;
  for i = 1:n,
    if delta(i) < epsilon,
      loop_again = 0;
    else,
      loop_again = 1;
      break;
      end;
    end;
  end;
 for i = 2:n,
  retval(i-1) = nthroot(a(i)/a(i-1) ,  2^(count));
  end;
endfunction
