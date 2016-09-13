function x = for_test (a)
syms t;
f = t^2 -2;
x = subs(f, a);
endfunction
