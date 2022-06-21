function F=dft_fga2(f)
    N=length(f)
    m=0:N-1;
    n=0:N-1;
    W=exp(-%i*2*%pi*n'*m/N);
    F=f*W;
    F=clean(F)
endfunction
