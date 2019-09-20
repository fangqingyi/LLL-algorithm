function [result] = Hadamard(m)
% 计算基m的Hadamard比率，越接近1越优，基向量作为行向量的方阵
    n = size(m);
    n = n(1);
    product = 1;
    for i = 1:n
        product = product * norm(m(i,:));
    end
    result = (abs(det(m))/product)^(1/n);
end