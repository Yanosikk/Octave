function y = f(x)
    y = [x(1)^2 + 2*x(1)*x(2)^2 - 40; 2*x(1)^2 - 3*x(2)^2 + 19];
endfunction

accepted_value = [1; 2];
solution = fsolve(@f, accepted_value);
disp('Solution:');
disp(solution);


