clear 
clc

syms q1 q2 q3 q4 q5 q6 q7 
L(1) = Link('revolute','alpha', 0,      'a', 0,   'd',305.83,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(2) = Link('revolute','alpha', -pi/2,  'a', -30,    'd',0,   'offset', 0,   'modified', 'qlim',[-143.5*pi/180 43.5*pi/180]);
L(3) = Link('revolute','alpha', pi/2,      'a', 30, 'd',251.52,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(4) = Link('revolute','alpha', -pi/2,      'a', 38.51, 'd',0,   'offset', -pi/2,   'modified', 'qlim',[-123.5*pi/180 80*pi/180]);
L(5) = Link('revolute','alpha', -pi/2,      'a', 42.37,   'd',267.01,   'offset', 0,   'modified', 'qlim',[-290*pi/180 290*pi/180]);
L(6) = Link('revolute','alpha', pi/2,      'a', -28.8,   'd',0,   'offset', 0,   'modified', 'qlim',[-88*pi/180 138*pi/180]);
L(7) = Link('revolute','alpha', -pi/2,      'a', 27.24,   'd',35.85,   'offset', 0,   'modified', 'qlim',[-229*pi/180 229*pi/180]);

R = SerialLink(L,'name','IRB 14050')

Tef=vpa(R.fkine([q1 q2 q3 q4 q5 q6 q7]),4)
Xo=[atan2(-Tef(3,1),sqrt(Tef(3,2)^2+Tef(3,3)^2));atan2(Tef(2,1),Tef(1,1));atan2(Tef(3,2),Tef(3,3))];
Xp=Tef(1:3,4);
X = vpa([Xp ; Xo],4)

J=vpa([diff(X(1),q1) diff(X(1),q2) diff(X(1),q3) diff(X(1),q4) diff(X(1),q5) diff(X(1),q6) diff(X(1),q7);...
   diff(X(2),q1) diff(X(2),q2) diff(X(2),q3) diff(X(2),q4) diff(X(2),q5) diff(X(2),q6) diff(X(2),q7);...
   diff(X(3),q1) diff(X(3),q2) diff(X(3),q3) diff(X(3),q4) diff(X(3),q5) diff(X(3),q6) diff(X(3),q7);...
   diff(X(4),q1) diff(X(4),q2) diff(X(4),q3) diff(X(4),q4) diff(X(4),q5) diff(X(4),q6) diff(X(4),q7);...
   diff(X(5),q1) diff(X(5),q2) diff(X(5),q3) diff(X(5),q4) diff(X(5),q5) diff(X(5),q6) diff(X(5),q7);...
   diff(X(6),q1) diff(X(6),q2) diff(X(6),q3) diff(X(6),q4) diff(X(6),q5) diff(X(6),q6) diff(X(6),q7)],4);

q1=pi/9; 
q2=3*pi/94; 
q3=pi/16;
q4=pi/25;
q5=0;
q6=pi/2;
q7=pi/9;
J=subs(J)
J_det=det(J(1:6,1:6))
J_inv=inv(J(1:6,1:6))

vel_q=J_inv*[100; 200; 50; 5; 10; -5]