function f=idft_fga(F)
    N=length(F)
    for n=0:N-1
        f(n+1)=0;
        for m=0:N-1
            f(n+1)=f(n+1)+F(m+1)*exp(%i*2*%pi*n*m/N);
        end
        f(n+1)=f(n+1)/N
    end
    f=cleancomplex(f);
endfunction
