function [result] = row_norm(m)
    %�������m���з��������������
    n = size(m);
    result = zeros(n(1),1);
    for i = 1:n(1)
    	result(i,1) = norm(m(i,:));
    end
end