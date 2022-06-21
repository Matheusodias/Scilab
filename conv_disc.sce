function conv_disc(x,xi,h,hi)
    nx = length(x)
    nh = length(h)
    i_ini = xi - nh +1
    i_fin = xi + nx + nh - 2
    ncols = i_fin - i_ini+1
    nlins = nx + nh -1;
    
    indice=(i_ini:i_fin);
    x_ext = zeros(1:ncols)
    for coluna=1:nx
        x_ext(coluna+nh-1)=x(coluna)
    end
    h_r =flipdim(h,2)
    h_des=zeros(nlins,ncols)
    for linha=1:nlins
        for i = 1:nh
            h_des(linha,i+linha-1)=h_r(i)
        end
        y(linha)=sum(x_ext.^h_des(linha,:))
    end
    for linha = 1:nlins
        h_des(linha,ncols+1)=y(linha)
        h_des(linha,ncols+2)=xi+linha-1
    end
    disp(indice)
    disp(x_ext)
    disp(h_des)
endfunction
