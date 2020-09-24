

syms th % we'll do it symbolically 

%given strains
exx=0.002;
eyy=-0.004;
exy=0.001;


etxx= (exx+eyy)/2 + (exx-eyy)/2*cos(2*th) + exy*sin(2*th); % fill the gap...
etyy= (exx+eyy)/2 - (exx-eyy)/2*cos(2*th) - exy*sin(2*th);% fill the gap..
etxy= (exx-eyy)/2*sin(2*th) + exy*cos(2*th);% fill the gap...


ezplot(etxx, [0,2*pi,-5e-3,5e-3])
 hold on
 ezplot(etyy, [0,2*pi,-5e-3,5e-3])
 hold on
 ezplot(etxy, [0,2*pi,-5e-3,5e-3])
 legend('ex','ey','exy')
 
 title([])
 
grid on
axis square

xlabel('\theta [rad]','FontSize',28)
ylabel('\epsilon', 'FontSize',28)
set(gca,'FontSize',20)
 