function x = syaei10(data,V)
    x = zeros(1,4900);
    for i = 1 : 1000
        R = zeros(4900);
        R = V(:,i) .* V(:,i)';
        tmp = R * data(1,:)';
        x = x + tmp';
    end
end