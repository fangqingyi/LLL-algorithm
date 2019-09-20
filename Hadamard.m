function [result] = Hadamard(m)
% �����m��Hadamard���ʣ�Խ�ӽ�1Խ�ţ���������Ϊ�������ķ���
    n = size(m);
    n = n(1);
    product = 1;
    for i = 1:n
        product = product * norm(m(i,:));
    end
    result = (abs(det(m))/product)^(1/n);
end