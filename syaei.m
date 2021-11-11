function x = syaei(data,V,i)
    R = zeros(4900);
    R = R + V(:,i) .* V(:,i)';
    x = zeros(4900,1);

    for j = 1:6852
        tmp = R * data(j,:)';
        x(j,1) = tmp(i)/V(i);
    end
end