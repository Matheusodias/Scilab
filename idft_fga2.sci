function F=idft_fga2(f)
    N=length(F)
    m=0:N-1;
    n=0:N-1;
    W=exp(%i*2*%pi*n'*m/N);
    f=F*W/N;
    f=clean(f)
endfunction
