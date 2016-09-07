function x = canthuc (a, n, epsilon)
if nargin < 3,
  epsilon = 1e-4;
  end;
if a == 0,
  x = 0;
  return;
  end;
if mod(n,2) == 0,
  if a < 0,
    disp("la la love me like you do :v");
    return;
    end;
  if a < 2,
    x_0 = a + 1;
  else,
    x_0 = a/2;
    end;
  g = @(x) x^n - a;
  d = @(x) n*x^(n-1);
  x_1 = x_0 - g(x_0)/d(x_0);
  while (abs(x_1 - x_0) > epsilon),
    x_0 = x_1;
    x_1 = x_0 - g(x_0)/d(x_0);
    end;
  x = x_1;
else,
  negative = false;
  if a < 0,
    negative = true;
    a = -a
    end;
  if a < 2,
    x_0 = a + 1;
  else,
    x_0 = a/2;
    end;
  g = @(x) x^n - a;
  d = @(x) n*x^(n-1);
  x_1 = x_0 - g(x_0)/d(x_0);
  while (abs(x_1 - x_0) > epsilon),
    x_0 = x_1;
    x_1 = x_0 - g(x_0)/d(x_0);
    end;
  if negative,
    x = -x_1;
   else
    x = x_1;
    end;
end;
endfunction
