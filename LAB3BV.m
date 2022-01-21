%% Definición del robot Cinematica Directa  
q1=0; 
q2=0; 
q3=0;
q4=0;
q5=0;
q6=0;
q7=0;

L(1) = Link('revolute','alpha', 0,      'a', 0,   'd',305.83,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(2) = Link('revolute','alpha', -pi/2,  'a', -30,    'd',0,   'offset', 0,   'modified', 'qlim',[-143.5*pi/180 43.5*pi/180]);
L(3) = Link('revolute','alpha', pi/2,      'a', 30, 'd',251.52,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(4) = Link('revolute','alpha', -pi/2,      'a', 38.51, 'd',0,   'offset', -pi/2,   'modified', 'qlim',[-123.5*pi/180 80*pi/180]);
L(5) = Link('revolute','alpha', -pi/2,      'a', 42.37,   'd',267.01,   'offset', 0,   'modified', 'qlim',[-290*pi/180 290*pi/180]);
L(6) = Link('revolute','alpha', pi/2,      'a', -28.8,   'd',0,   'offset', 0,   'modified', 'qlim',[-88*pi/180 138*pi/180]);
L(7) = Link('revolute','alpha', -pi/2,      'a', 27.24,   'd',35.85,   'offset', 0,   'modified', 'qlim',[-229*pi/180 229*pi/180]);

 R = SerialLink(L,'name','IRB 14050')
%Creación del espacio y generación del modelo de alambres
figure (1)
R.plot([q1 q2 q3 q4 q5 q6 q7],'workspace',[-300 300 -300 300 -300 300])
hold on
trplot(eye(4), 'width',2,'arrow')
axis([-1000 1000 -1000 1000 0 1000])
R.teach([q1 q2 q3 q4 q5 q6 q7])
hold off

%% Definición de la trayectoria espacio cartesiano (espacio de trabajo)
T_traj = ctraj(R.fkine([0 0 0 0 0 0 0]),R.fkine([0 pi/2 0 0 0 pi/6 0]),20);
q_ctraj = R.ikunc(T_traj(:,:,:));


figure
hold on
trplot(eye(4),'rgb')
axis([-1000 1000 -1000 1000 0 1000])
for i=1:length(q_ctraj)
    punto = R.fkine(q_ctraj(i,:));
    R.plot(q_ctraj(i,:),'workspace',[-300 300 -300 300 -300 300]), 
    plot3(punto(1,4),punto(2,4),punto(3,4),'r*') %esta linea no la entiendo
    %view(3)
    pause(0.5)
end
figure
plot(q_ctraj,'linewidth',2)
grid on
legend('q1','q2','q3','q4','q5','q6','q7')
xlabel('Paso de tiempo')

