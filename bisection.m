f = @(x) x^2 - 4;

a = 0;
b = 3;
tol = 1e-4;
n = 20;

for i = 1:n
    c = (a + b) / 2;
    fprintf('Iteration %d: c = %.6f, f(c) =  %.6f\n', i, c, f(c));

    if abs(f(c)) < tol
        fprintf('Coverged to root: %.6f after %d iteration. \n', c, i);
        break;

        end

        if f(a) * f(c) < 0;
            b = c;
        else
            a = c;
        end
    end

    if i == n
        fprintf('Did not coverage within %d iteration . \n');
    end
