f = @(x) x^3 - x - 2;
a = 1;
b = 2;
tol = 1e-4;
n = 20;

for i = 1:n
  c = (a * f(b) - b * f(a)) / (f(b) - f(a));
  fprintf('Iteration: %d: c = %.6f, f(c) = %.6f \n', i, c, f(c));

  if abs(f(c)) < tol
    fprintf('Root: %.6f after %d iteration \n', c, i);

    break;
  end

  if f(a) * f(c) < 0
    b = c
  else
    a = c
  end
end

if i == n
  fprintf('Root not found');

  end
