%ʹ��G-S�����Ծ�������Ϊ���������������������е�λ��
function [M] = orthogonal(m)
	n = size(m);
	M = zeros(n);
	n = n(1);
	M(1,:) = m(1,:);
	for i = 2:n
		M(i,:) = m(i,:);
		for j = 1:i-1
			u_ij = dot(m(i,:),M(j,:))/(norm(M(j,:))^2);
			M(i,:) = M(i,:) - u_ij*M(j,:);
		end
	end
end