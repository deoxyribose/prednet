function [A] = sin_data_generation(Ninput, Nseq, Ndata, model, dx)
    
    x = repmat((0:(Nseq-1))*dx,Ndata,1) + repmat(rand(Ndata,1),1,Nseq);
    p = rand(Ndata,Ninput);
    d = rand(Ndata, Nseq);
    for i = 1:Ndata
        for j = 1:Nseq
            d(i,j) = model(x(j),p(i,:));
        end
    end
    A.x = x;
    A.p = p;
    A.d = d;
end