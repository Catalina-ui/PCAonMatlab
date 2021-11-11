function R = soukan(data)
    R = zeros();
    m = zeros(1,4900);
    for i = 1:6852
        m = m + data(i,:);
    end
    m = m / 6852;
    for i = 1:6852
        R = R + (data(i,:) - m)' .* (data(i,:) - m);
    end
    R = R / 6852;
end