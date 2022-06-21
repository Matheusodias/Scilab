function Rseposta_Frequencia_Hs3(Hs,f1,f2,dB)
    logf=linspace(f1,f2,1024);
    w=2*%pi*10.^logf;
    H=horner(Hs,%i*w)
    //Plotar Resultado
    subplot(211)
    if (dB) then
        plot(logf,20*log10(abs(H)))
        title("|H(jw)|dB")
        subplot(212)
        plot(logf,phasemag(H,'c'));
        title("Fase em Graus")
    else
        plot(w,(abs(H)))
        title("|H(jw)|")
        subplot(212)
        plot(w,phasemag(H,'m'));
        title("Fase em Graus")
    end
endfunction
