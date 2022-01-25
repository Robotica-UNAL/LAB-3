function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 21-Jan-2022 14:54:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Theta_1_Callback(hObject, eventdata, handles)
% hObject    handle to Theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_1 as text
%        str2double(get(hObject,'String')) returns contents of Theta_1 as a double


% --- Executes during object creation, after setting all properties.
function Theta_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta_2_Callback(hObject, eventdata, handles)
% hObject    handle to Theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_2 as text
%        str2double(get(hObject,'String')) returns contents of Theta_2 as a double


% --- Executes during object creation, after setting all properties.
function Theta_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta_3_Callback(hObject, eventdata, handles)
% hObject    handle to Theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta_3 as text
%        str2double(get(hObject,'String')) returns contents of Theta_3 as a double


% --- Executes during object creation, after setting all properties.
function Theta_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pos_x_Callback(hObject, eventdata, handles)
% hObject    handle to pos_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pos_x as text
%        str2double(get(hObject,'String')) returns contents of pos_x as a double


% --- Executes during object creation, after setting all properties.
function pos_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pos_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pos_y_Callback(hObject, eventdata, handles)
% hObject    handle to pos_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pos_y as text
%        str2double(get(hObject,'String')) returns contents of pos_y as a double


% --- Executes during object creation, after setting all properties.
function pos_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pos_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pos_z_Callback(hObject, eventdata, handles)
% hObject    handle to pos_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pos_z as text
%        str2double(get(hObject,'String')) returns contents of pos_z as a double


% --- Executes during object creation, after setting all properties.
function pos_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pos_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_dibujar.
function button_dibujar_Callback(hObject, eventdata, handles)
% hObject    handle to button_dibujar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Robot 2R
% mdl_twolink;
%clear all;
%clc;

syms q1 q2 q3 q4 q5 q6 
L(1) = Link('revolute','alpha', 0,      'a', 0,   'd',305.83,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(2) = Link('revolute','alpha', -pi/2,  'a', -30,    'd',0,   'offset', 0,   'modified', 'qlim',[-143.5*pi/180 43.5*pi/180]);
L(3) = Link('revolute','alpha', pi/2,      'a', 30, 'd',251.52,   'offset', 0,   'modified', 'qlim',[-168.5*pi/180 168.5*pi/180]);
L(4) = Link('revolute','alpha', -pi/2,      'a', 38.51, 'd',0,   'offset', -pi/2,   'modified', 'qlim',[-123.5*pi/180 80*pi/180]);
L(5) = Link('revolute','alpha', -pi/2,      'a', 42.37,   'd',267.01,   'offset', 0,   'modified', 'qlim',[-290*pi/180 290*pi/180]);
L(6) = Link('revolute','alpha', pi/2,      'a', -28.8,   'd',0,   'offset', 0,   'modified', 'qlim',[-88*pi/180 138*pi/180]);
R = SerialLink(L,'name','IRB 14050')

%% Elipsoide
%q = [0:pi/20:pi/2; zeros(1,11)];
q = [linspace(0,pi/4,6); linspace(0,pi/2,6);linspace(0,pi/2,6);linspace(0,pi/2,6);linspace(0,pi/2,6);linspace(0,pi/2,6)];
%figure
%grid on
%hold on
%trplot(eye(4),'rgb')
%axis([-3 3 -3 3])

for i=1:length(q)
    %qaux = q(:,i);
    %J = R.jacob0(qaux);
    %J = [J(1,:); J(2,:)];
    C = R.fkine(q(:,i));
    %dosR.plot(q(:,i)')
    %plot_ellipse(J*J',C(1:2,4));
end
%% Trapezoidal
q_init = -pi/4;
q_fin = pi/2;
A_trap = q_fin - q_init;
t_max = 5;
dq_max =  A_trap*(2/(1.5*t_max))*1.2; % Velocidad Maxima
disp(dq_max)
T = 0:0.1:5;
[q_trap, dq_trap, d2q_trap] = lspb(-pi/4, pi/2,T,dq_max);

%%
%axes(handles.axes2); 
%plot(T,q_trap,'linewidth',2)

%axes(handles.axes3);
%plot(T,dq_trap,'linewidth',2)
%plot(T,d2q_trap,'linewidth',2)
%legend('q','dq','d2q')
%legend('q','dq')
%grid on;
%% Lspb Linear segment with parabolic blend
% Para robot de 2 gdl.
t1 = linspace(0,1,20);
t2 = linspace(1,2,20);
% Velocidades 
v1 = [1 0.9 1 1 1 1]; % [Vjoint1_ini Vjoint_fin] 
v2 = [2 1.8 2 1 1 1]; % [Vjoint2_ini Vjoint2_fin] 
%  Segmento Subida 
q_init1 = [0 0 0 0 0 0];    % [ joint_1  joint_2]
q_fin1  = [pi/4  pi/2 pi/2 pi/2 pi/2 pi/2];    % [ joint_1  joint_2]

%  Segmento Bajada      
q_init2 = [pi/4  pi/2 pi/2 pi/2 pi/2 pi/2];     
q_fin2  = [pi/24 pi/12 pi/2 pi/2 pi/2 pi/2];

%%
% Joint 1
[q1_s1, dq1_s1, d2q1_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q1_s2, dq1_s2, d2q1_s2] = lspb(q_init1(2), q_fin1(2), t1, 3*v1(2)); % segmento 2
% Joint 2
%[q2_s1, dq2_s1, d2q2_s1] = lspb(q_init1(2), q_fin1(2), t1, v2(1)); 
%[q2_s2, dq2_s2, d2q2_s2] = lspb(q_init2(2), q_fin2(2), t1, v2(2));
%joint 2
[q2_s1, dq2_s1, d2q2_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q2_s2, dq2_s2, d2q2_s2] = lspb(q_init2(1), q_fin2(1), t1, v1(2)); % segmento 2

%joint 3
[q3_s1, dq3_s1, d2q3_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q3_s2, dq3_s2, d2q3_s2] = lspb(q_init2(1), q_fin2(1), t1, v1(2)); % segmento 2

%joint 4
[q4_s1, dq4_s1, d2q4_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q4_s2, dq4_s2, d2q4_s2] = lspb(q_init2(1), q_fin2(1), t1, v1(2)); % segmento 2

%joint 5
[q5_s1, dq5_s1, d2q5_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q5_s2, dq5_s2, d2q5_s2] = lspb(q_init2(1), q_fin2(1), t1, v1(2)); % segmento 2

%joint 6
[q6_s1, dq6_s1, d2q6_s1] = lspb(q_init1(1), q_fin1(1), t1, v1(1)); % segmento 1
[q6_s2, dq6_s2, d2q6_s2] = lspb(q_init2(1), q_fin2(1), t1, v1(2)); % segmento 2


axes(handles.axes2);
plot([t1 t2],[q1_s1; q1_s2],'linewidth',2)
hold on
axes(handles.axes2);
plot([t1 t2],[q2_s1; q2_s2],'linewidth',2)
hold on
axes(handles.axes2);
plot([t1 t2],[q3_s1; q3_s2],'linewidth',2)
hold on
axes(handles.axes2);
plot([t1 t2],[q4_s1; q4_s2],'linewidth',2)
hold on
axes(handles.axes2);
plot([t1 t2],[q5_s1; q5_s2],'linewidth',2)
hold on
axes(handles.axes2);
plot([t1 t2],[q6_s1; q6_s2],'linewidth',2)
grid on
legend('q1','q2','q3','q4','q5','q6')
xlabel('Tiempo (s)')
ylabel('Theta (rad)')

axes(handles.axes3);
plot([t1 t2],[dq1_s1; dq1_s2],'linewidth',2)
hold on
axes(handles.axes3);
plot([t1 t2],[dq2_s1; dq2_s2],'linewidth',2)
hold on
axes(handles.axes3);
plot([t1 t2],[dq3_s1; dq3_s2],'linewidth',2)
hold on
axes(handles.axes3);
plot([t1 t2],[dq4_s1; dq4_s2],'linewidth',2)
hold on
axes(handles.axes3);
plot([t1 t2],[dq5_s1; dq5_s2],'linewidth',2)
hold on
axes(handles.axes3);
plot([t1 t2],[dq6_s1; dq6_s2],'linewidth',2)

grid on
legend('dq1','dq2','dq3','dq4','dq5','dq6')
xlabel('Tiempo (s)')
ylabel('velocidad (rad/s)')

%plot([t1 t2],[d2q1_s1; d2q1_s2],'linewidth',2)
%hold on
%plot([t1 t2],[d2q2_s1; d2q2_s2],'r','linewidth',2)
%grid on
%legend('d2q1','d2q2')
%xlabel('Tiempo (s)')
%%
q1_s = [q1_s1   ; q1_s2];
q2_s = [q2_s1   ; q2_s2];
q3_s = [q3_s1   ; q3_s2];
q4_s = [q4_s1   ; q4_s2];
q5_s = [q5_s1   ; q5_s2];
q6_s = [q6_s1   ; q6_s2];
dq1_s = [dq1_s1 ; dq1_s2];
dq2_s = [dq2_s1 ; dq2_s2];
dq3_s = [dq3_s1 ; dq3_s2];
dq4_s = [dq4_s1 ; dq4_s2];
dq5_s = [dq5_s1 ; dq5_s2];
dq6_s = [dq6_s1 ; dq6_s2];


%% Animacion LSPB
axes(handles.axes1);
hold on
trplot(eye(4),'rgb')
axis([-3 3 -3 3 -1 1])
axis equal
for i=1:length(q1_s)
    punto = R.fkine([q1_s(i) q2_s(i) q3_s(i) q4_s(i) q5_s(i) q6_s(i)]);
    R.plot([q1_s(i) q2_s(i) q3_s(i) q4_s(i) q5_s(i) q6_s(i)])
    plot3(punto(1,4),punto(2,4),punto(3,4),'c.')
    
    %view(3)
    %pause(0.1)
end

%% Multiples segmentos - Via points en el espacio articular
%via = [-pi/4 pi/2; deg2rad(-29) deg2rad(87); deg2rad(-7.2) deg2rad(72);...
%       deg2rad(29) deg2rad(29); deg2rad(-18) deg2rad(120)];
via = [invKin2R(2,0,1,1,0);
    invKin2R(1.5,0,1,1,0);
    invKin2R(1.5,0.2,1,1,0);
    invKin2R(1.5,0.4,1,1,0);
    invKin2R(1.5,0.6,1,1,0);
    invKin2R(1.5,0.8,1,1,0);
    invKin2R(1.5,1,1,1,0);
    invKin2R(1.5,1.2,1,1,0);
    invKin2R(1.2,.9,1,1,0)];

q_s= mstraj(via,[],[1 1 1 1 1 1 1 1 1],[0 0],0.1,0.5);

axes(handles.axes1);
hold off
hold on
trplot(eye(4),'rgb')
axis([-1 2 -1 2])

%vidObj = VideoWriter('uno.avi');
%open(vidObj);
for j = 1:size(via,1)
    punto = dosR.fkine(via(j,:));
    plot3(punto(1,4),punto(2,4),punto(3,4),'kx')
end
axis([-3 3 -3 3 -1 1])
for i=1:length(q_s)
    punto = dosR.fkine(q_s(i,:));
    dosR.plot(q_s(i,:))
    plot3(punto(1,4),punto(2,4),punto(3,4),'-o','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',2)
    %view(3)
    %pause(0.1)
    axis([-1 3 -1 2])
    M(i) = getframe();
    %writeVideo(vidObj,M(i));
end
%close(vidObj);

%% 3dplot
%R = ? %radio de la esfera
%syms u v
%ezsurf (R*cos(u)*sin(v),R*sin(u)*sin(v),R*cos(v))

%planovector = [0 1 1];
%h = ones(1,60)*50;
%r = 30;
%for i=1:60
  %  anguloRad(i) = (2*pi/60)*i;
 %   puntosx(i) = r*sin(anguloRad(i));
%    puntosy(i) = r*cos(anguloRad(i));
%end    
%puntosxyz = [puntosx;puntosy;h];
%for i=1:60
%    plot3(puntosxyz(1,i),puntosxyz(2,i),puntosxyz(3,i),'o')
%    hold on
%end



function plano_Callback(hObject, eventdata, handles)
% hObject    handle to plano (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plano as text
%        str2double(get(hObject,'String')) returns contents of plano as a double


% --- Executes during object creation, after setting all properties.
function plano_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plano (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
a
