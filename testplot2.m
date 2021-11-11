function t = testplot2(D)
    t = zeros(1,4900);
    v = 0;
    for i = 1:4900
        v = v + D(i,i);
    end
    t(1) = D(1,1) / v;
    for i = 2:4900
        t(i) = (t(i-1) * v + D(i,i)) / v;
    end
end