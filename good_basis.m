function result = good_basis(N,v,h)
    %随机数绝对值上限为N，向量维度v，hadamard比率下限为h
    %h一般取值为0.9，生成一组优质基
    result = unidrnd(2*N, v) - N;
    while Hadamard(result) < h
        result = unidrnd(2*N,v) - N;
    end
end