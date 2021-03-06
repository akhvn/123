     eps=10^(-4);
        b=4/eps;
        h=0.001;
        x=zeros(1,3*b/h);
    for i=1:3*b/h
        x(1,i)=0.001+h*(i-1);
    end
    
    f=zeros(1,3*b/h);
    for i=1:3*b/h
        
       f(1,i)=2*(1-cos(x(1,i)^2))/(x(1,i)^2);
    end
    Ih=0;
    for i=1:(3*b/h-2)
        Ih=Ih+h*(f(1,i)+4*f(1,i+1)+f(1,i+2))/6; %СИМПСОН
        %Ih=Ih+h*(f(1,i)+f(1,i+1))/2; ТРАПЕЦИИ
        %Ih+h*f(1,i) %ПРЯМОУГОЛЬНИКИ
    end
    I=Ih+0.001^3/3 %ИТОГОВЫЙ ИНТЕГРАЛ