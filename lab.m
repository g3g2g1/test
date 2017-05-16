clear all
syms x1 x2 x3 x4 mp lr lp jr tau dr jp dp Ax Ay

f1=x2;
f2=(tau-dr*x2+(0.5*mp*lp*lr*sin(x3))*x4^2-(0.5*mp*lp^2*sin(x3)*cos(x3))*x2*x4-(0.5*mp*lp*lr*cos(x3)*((0.25*mp*lp^2*cos(x3)*sin(x3)*x2^2-0.5*mp*lp*9.81*sin(x3)-dp*x4)/(jp+0.25*mp*lp^2))))/(mp*lr^2+0.25*mp*lp^2*cos(x3)^2+jr-(0.5*mp*lp*lr*cos(x3))^2/(jp+0.25*mp*lp^2));
f3=x4;
f4=(tau-dr*x2+(0.5*mp*lp*lr*sin(x3))*x4^2-(0.5*mp*lp^2*sin(x3)*cos(x3))*x2*x4-(mp*lr^2+0.25*mp*lp^2*cos(x3)^2+jr)*(tau-dr*x2+(0.5*mp*lp*lr*sin(x3))*x4^2-(0.5*mp*lp^2*sin(x3)*cos(x3))*x2*x4-(0.5*mp*lp*lr*cos(x3)*((0.25*mp*lp^2*cos(x3)*sin(x3)*x2^2-0.5*mp*lp*9.81*sin(x3)-dp*x4)/(jp+0.25*mp*lp^2))))/(mp*lr^2+0.25*mp*lp^2*cos(x3)^2+jr-(0.5*mp*lp*lr*cos(x3))^2/(jp+0.25*mp*lp^2)))/(0.5*mp*lp*lr*cos(x3));

A=jacobian([f1;f2;f3;f4],[x1 x2 x3 x4])
B=jacobian([f1;f2;f3;f4],[tau])


%A=eval(A)
%B=eval(B)

%[K,P] = lqr(A,B,Q,R);
%C=[1 0 0 0 0 0 0 0;0 0 1 0 0 0 0 0;0 0 0 0 1 0 0 0];
%G = ss(A-B*K,B,C,0);
%impulse(G);
%tspan=0:0.05:50;
%x0=[3 0 5 0 0.1 0 0 0];
%cost=x0*P*x0.'
%xlin=initial(G,x0,tspan);
%figure(2);plot(tspan,xlin(:,1),'g');
%hold on;plot(tspan,xlin(:,2),'r');plot(tspan,xlin(:,3),'b');hold off
%legend('X','Y','Theta');

%figure(3);plot(x.signals.values,'g');
%hold on;plot(y.signals.values,'r');plot(t.signals.values,'b');hold off
%legend('X','Y','Theta');

%computecost(all.time, all.signals.values, Q,R,K)
