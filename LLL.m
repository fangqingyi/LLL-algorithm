%对矩阵用LLL算法约减，行向量处理，多次调用lll完成
function [result] = LLL(v)
    a = lll(v);
    b = lll(a);
    while a ~= b
    	a = b;
    	b = lll(b);
    end
    result = b;
end
    
function [result] = lll(v)
    n = size(v);
    n = n(1);
    k = 2;
    while k <= n
    	V = orthogonal(v(1:k,:));
    	for j = 1:k-1
    		u = dot(v(k,:),V(j,:))/(norm(V(j,:))^2);
    		v(k,:) = v(k,:) - round(u)*v(j,:);
    	end
    	u = dot(v(k,:),V(k-1,:))/(norm(V(k-1,:))^2);
    	if norm(V(k,:))^2 >= (3/4 - u^2)*norm(V(k-1,:))^2
    		k = k + 1;
    	else
    		temp = v(k-1,:);
    		v(k-1,:) = v(k,:);
    		v(k,:) = temp;
    		k = max(k-1,2);
    	end
    end
    result = v;
    return;
end