function [result] = row_norm(m)
    %计算矩阵m的行范数，输出列向量
    n = size(m);
    result = zeros(n(1),1);
    for i = 1:n(1)
    	result(i,1) = norm(m(i,:));
    end
end