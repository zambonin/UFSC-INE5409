function y = f1a(x)

    m = 6;
    T = [0.20 0.40 0.60 0.80 0.90 1.00];
    V = [0.04 0.14 0.30 0.45 0.61 0.69];

    % d/da ∑(ln(a + b * T_k^2) - V_k)^2
    %   = 2 * (ln(a + b * T_k^2) - V_k) / (a + b * T_k^2)
    %   (one can drop the 2 constant since it is irrelevant)

    y = 0;
    for k = 1 : m
        y += (log(x(1) + x(2) * T(k)^2) - V(k)) / (x(1) + x(2) * T(k)^2);
    end

end
