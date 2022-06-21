function f=sinc_xs_hp(M,N)
    clear f
    n=[-N/2:N/2-1]
    nn=n+0.001
    f=1/N*sin(2*%pi*nn*(M-0.5)/N)./sin(%pi*nn/N).*(-1)^(n-1)
    subplot(211);
    plot2d3(n,f)
    m=[-N/2:N/2-1]
    subplot(212)
    plot2d3(m,fftshift(abs(fft(f))))
endfunction
