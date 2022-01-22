%%determinacion de la posicion de la muñeca
syms e_rx e_ry e_rz e_x e_y e_z d7  %variables simbolicas

%se establece la matris de transformacion homogenea que 
%determina la posicion y orientacion del efector final 
Tef= trotz(e_rz)*troty(e_ry)*trotx(e_rx)*transl(e_x,e_y,e_z)

%se establecen las coordenadas (x,y,z) de la muñeca
x_w=vpa(Tef(1,4)-d7*Tef(1,3),4);
y_w=vpa(Tef(2,4)-d7*Tef(2,3),4);
z_w=vpa(Tef(2,4)-d7*Tef(2,3),4);