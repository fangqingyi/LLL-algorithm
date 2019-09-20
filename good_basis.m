function result = good_basis(N,v,h)
    %���������ֵ����ΪN������ά��v��hadamard��������Ϊh
    %hһ��ȡֵΪ0.9������һ�����ʻ�
    result = unidrnd(2*N, v) - N;
    while Hadamard(result) < h
        result = unidrnd(2*N,v) - N;
    end
end