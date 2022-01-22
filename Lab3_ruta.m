clear 
clc

syms q1 q2 q3 q4 q5 q6 q7 
L(1) = Link('revolute','alpha', 0,      'a', 0,   'd',305.83,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(2) = Link('revolute','alpha', -pi/2,  'a', -30,    'd',0,   'offset', 0,   'modified', 'qlim',[-143.5*pi/180 43.5*pi/180]);
L(3) = Link('revolute','alpha', pi/2,      'a', 30, 'd',251.52,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(4) = Link('revolute','alpha', -pi/2,      'a', 38.51, 'd',0,   'offset', -pi/2,   'modified', 'qlim',[-123.5*pi/180 80*pi/180]);
L(5) = Link('revolute','alpha', -pi/2,      'a', 42.37,   'd',267.01,   'offset', 0,   'modified', 'qlim',[-290*pi/180 290*pi/180]);
L(6) = Link('revolute','alpha', pi/2,      'a', -28.8,   'd',0,   'offset', 0,   'modified', 'qlim',[-88*pi/180 138*pi/180]);
% L(7) = Link('revolute','alpha', -pi/2,      'a', 27.24,   'd',35.85,   'offset', 0,   'modified', 'qlim',[-229*pi/180 229*pi/180]);

R = SerialLink(L,'name','IRB 14050')

T0=R.fkine([0 0 0 0 0 0])
Tf=T0*transl(100,0,0);

T_traj = ctraj(T0,Tf,20);


for i=1:length(T_traj)
    q_ctraj(i,:)=R.ikine(T_traj(:,:,i))
end


figure
hold on
trplot(eye(4),'rgb')
axis([-3 3 -3 3 -1 1])
for i=1:length(q_ctraj)
    punto = R.fkine(q_ctraj(i,:));
    R.plot(q_ctraj(i,:))
    plot3(punto(1,4),punto(2,4),punto(3,4),'r*')
    %view(3)
    pause(0.5)
end
figure
plot(q_ctraj,'linewidth',2)
grid on
legend('q1','q2')
xlabel('Paso de tiempo')

