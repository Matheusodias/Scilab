function [B1,A1,Y1]=fourierplot(t1,t2,N)
    function y=f(t)
     //  if   (t<0) y =-1;
     //  else       y =+1;
     //  end
     
       y=abs(t/2);
    endfunction
    
    function h=H(t)
        h=1./sqrt((1+t^2));
    endfunction
    
    function o=l(f,H)
        o = f.*H;
    endfunction
    
    function y1=fcos(t)
        y1=f(t)*cos(n*wo*t);
    endfunction    
    
    function y2=fsin(t)
        y2=f(t)*sin(n*wo*t);
    endfunction 
    
    function sintese=g(t)
        sintese=A0;
        for n=1:N
           sintese=sintese+A(n)*cos(n*wo*t)+B(n)*sin(n*wo*t);
        end
    endfunction
    
    function sintese1=g1(t)
        sintese1=A0;
        for n=1:N
           sintese1=sintese1+Y0(n)*cos(n*wo*t);
        end
    endfunction

    clf();
    T=2
    wo = 2*%pi/T
    A0=1/T*intg(t1,t2,f,.000000001);
    for n=1:N
       A(n)=2/T*intg(t1,t2,fcos,.000000001);
       B(n)=2/T*intg(t1,t2,fsin,.000000001);
    end
    clean(A);
    clean(B);
//    subplot(4,1,1)
    t=linspace(t1,t2,100)
    for(n=1:length(t))
       ft(n)=f(t(n))
    end
//    plot2d3(t,ft);
    tp=t1:0.001:t2
//    plot(tp,g(tp),'r')
    t=t1-2*T:0.001:t2+2*T;
//    subplot(4,1,2)
//    plot(t,g(t),'bk');
//    plot(tp,g(tp),'r')
//    subplot(2,1,1)
    A0 = 0.5;
    A1=[0.5; A];
    clean(A1)
 //   bar([0:9],A1,0.1)
    
    for n=1:N
       Y0(n)=-A(n)*H(n/T);
    end
    oi = [0.5;Y0];
    
    bar([0:9],oi,0.1)
    title fontsize 4
    title("Coeficientes da Série de Fourier de y(t)")
    xlabel("n")
    xlabel fontsize 4
    ylabel y(n)
    ylabel fontsize 4 
    xgrid()
//    subplot(2,1,2)
    B1=[0; B]
    clean(B1)
//    bar([0:1:N],B1,0.1)

    for n=1:N
       Y(n)=-A(n)*H(n/T);
    end
    clean(Y)
    Y1=[Y0];
    clean(Y1)
   // bar([0:9],Y,0.1)
 //   title fontsize 4
 //   title("Coeficientes da Série de Fourier de y(t) zoom em 0<|n|<10")
    xgrid()
//    plot(t,g1(t),'bk');
  //  plot(tp,g1(tp),'r')
  
      
endfunction
