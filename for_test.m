function x = for_test ()
for j = 900:1000,
  x = 3*j;
  a = 1/10^(x);
  if a == 0,
    disp("ok");
    disp(x);
    return;
    end;
end;
endfunction
