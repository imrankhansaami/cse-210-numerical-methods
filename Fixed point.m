% Input
g = @(x) 1 + sqrt(x);  % Function g(x), replace as needed
x0 = 0.5;         % Initial guess
tol = 1e-4;       % Tolerance for convergence
n = 200;           % Maximum number of iterations

% Fixed Point Iteration
for i = 1:n
    x1 = g(x0);  % Compute next approximation
    fprintf('Iteration %d: x = %.6f\n', i, x1);
    
    % Check convergence
    if abs(x1 - x0) < tol
        fprintf('Converged to root: %.6f after %d iterations.\n', x1, i);
        break;
    end
    
    x0 = x1;  % Update for the next iteration
end
