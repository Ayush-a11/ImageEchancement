function varargout = MINI_PROJECT(varargin)
% MINI_PROJECT MATLAB code for MINI_PROJECT.fig
%      MINI_PROJECT, by itself, creates a new MINI_PROJECT or raises the existing
%      singleton*.
%
%      H = MINI_PROJECT returns the handle to a new MINI_PROJECT or the handle to
%      the existing singleton*.
%
%      MINI_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINI_PROJECT.M with the given input arguments.
%
%      MINI_PROJECT('Property','Value',...) creates a new MINI_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MINI_PROJECT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MINI_PROJECT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MINI_PROJECT

% Last Modified by GUIDE v2.5 09-Dec-2020 13:49:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MINI_PROJECT_OpeningFcn, ...
                   'gui_OutputFcn',  @MINI_PROJECT_OutputFcn, ...
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


% --- Executes just before MINI_PROJECT is made visible.
function MINI_PROJECT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MINI_PROJECT (see VARARGIN)
%     a=imread('D:\tp\ll.JFIF');
%     a=imresize(a,[450,900]);
%     axes(handles.axes7);
%     imshow(a);
%     a=imread('D:\tp\ll1.JFIF');
%     a=imresize(a,[400,400]);
%     axes(handles.axes12);
%     imshow(a);
%       a=imread('D:\tp\ll1.JFIF');
%     a=imresize(a,[256,512]);
%     axes(handles.axes9);
%     imshow(a);
%   a=imresize(a,[1000,1000]);
%     axes(handles.axes13);
%     imshow(a);
    
% Choose default command line output for MINI_PROJECT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MINI_PROJECT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MINI_PROJECT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global A;
A=rgb2gray(A);
axes(handles.axes3);
imshow(A);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  cla(handles.axes6,'reset');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     [file_name,path_name]=uigetfile({'*.bmp;*.jpg;*.tif;','.JFIF'},'Input 1');
   global B;
   B= imread([path_name file_name]);  
   axes(handles.axes6);
   B=imresize(B,[130,130]);
   imshow(B);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B;
B=rgb2gray(B);
axes(handles.axes6);
imshow(B);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
      cla(handles.axes3,'reset');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 [file_name,path_name]=uigetfile({'*.bmp;*.jpg;*.tif','.JFIF'},'Input 1');
   global A;
    A = imread([path_name file_name]);  
   axes(handles.axes3);
   A=imresize(A,[130,130]);
   imshow(A);


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=waitbar(0,'please wait for few sec...','createCancleBtn','close');
for i=1:1300,
    waitbar(i/1300)
end
close(h);
    
global A;
global B;
A=imresize(A,[516,516]);

B=imresize(B,[516,516]);
        
% A=rgb2gray(A);
% B=rgb2gray(B);

% subplot(1,3,1),imshow(A,[]),title("!INPUT IMAGE 1!");% DISPLAYING INPUT IMAGE 1
% subplot(1,3,2),imshow(B,[]),title("!INPUT IMAGE 2!");% DISPLAYING INPUT IMAGE 1

[LL1,LH1,HL1,HH1]=dwt2(A,'haar');
[LL2,LH2,HL2,HH2]=dwt2(B,'haar');

% LL3=zeros(130,130);
LH3=zeros(258,258);%padding
HL3=zeros(258,258);
HH3=zeros(258,258);

   LL1=imbilatfilt(LL1);
   LL2=imbilatfilt(LL2);

LL3=(LL1+LL2)/2;
LL3=imguidedfilter(LL3);

d1=zeros(3,3);
d2=zeros(3,3);
for i=1:3:(255)
    for j=1:3:(255)
      kk=0;
     for k=i:1:(i+2)
        kk=kk+1;
        ll=0;
          for l=j:1:(j+2)
            ll=ll+1;
            d1(kk,ll)=LH1(k,l);
            d2(kk,ll)=LH2(k,l);
            
           end
       
     end
       
        Z1=entropy(d1);
        Z2=entropy(d2);
      if Z1<Z2
             kk=0;
         for e=i:1:(i+2)
             kk=kk+1;
             ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                LH3(e,s)=d2(kk,ll);
            end
          
        end
      else
              kk=0;
            
          for e=i:1:(i+2)
              kk=kk+1;
              ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                LH3(e,s)=d1(kk,ll);
            end
          end
      end
    end
end

d1=zeros(3,3);
d2=zeros(3,3);
for i=1:3:(255)
    for j=1:3:(255)
        kk=0;
     for k=i:1:(i+2)
           kk=kk+1;
           ll=0;
            for l=j:1:(j+2)
             ll=ll+1;
             d1(kk,ll)=HL1(k,l);
             d2(kk,ll)=HL2(k,l);
             
            end
       
     end
        Z1=entropy(d1);
        Z2=entropy(d2);
      if Z1<Z2
             kk=0;
         for e=i:1:(i+2)
             kk=kk+1;
             ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                HL3(e,s)=d2(kk,ll);
            end
          
        end
      else
              kk=0;
            
          for e=i:1:(i+2)
              kk=kk+1;
              ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                HL3(e,s)=d1(kk,ll);
            end
          end
      end
    end
end
d1=zeros(3,3);
d2=zeros(3,3);
for i=1:3:(255)
    for j=1:3:(255)
        kk=0;
     for k=i:1:(i+2)
           kk=kk+1;
           ll=0;
            for l=j:1:(j+2)
             ll=ll+1;
             d1(kk,ll)=HH1(k,l);
             d2(kk,ll)=HH2(k,l);
             
            end
       
     end
        Z1=entropy(d1);
        Z2=entropy(d2);
      if Z1<Z2
             kk=0;
         for e=i:1:(i+2)
             kk=kk+1;
             ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                HH3(e,s)=d2(kk,ll);
            end
          
        end
      else
              kk=0;
            
          for e=i:1:(i+2)
              kk=kk+1;
              ll=0;
            for s=j:1:(j+2)
                ll=ll+1;
                HH3(e,s)=d1(kk,ll);
            end
          end
      end
    end
end

%   LH3=imbilatfilt(LH3);
%   HL3=imbilatfilt(HL3);
%   HH3=imbilatfilt(HH3);
  LH3=imguidedfilter(LH3);
  HL3=imguidedfilter(HL3);
  HH3=imguidedfilter(HH3);
  global yy;

yy=idwt2(LL3,LH3,HL3,HH3,'haar');
yy=uint8(yy);
    axes(handles.axes10);
    imshow(yy,[]);
    ref = yy;
    C = imnoise(ref,'salt & pepper', 0.02);


[peaksnr, snr] = psnr(C, ref);
  set(handles.edit6,'string',peaksnr);
  set(handles.edit5,'string',snr);
  ref=yy;
  A = imnoise(ref,'salt & pepper', 0.02);
  err = immse(A, ref);
  err1=sqrt(err);
  set(handles.edit3,'string',err);
  set(handles.edit1,'string',err1);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yy;
 startingFolder = userpath;
defaultFileName = fullfile(startingFolder, '*.JPG*');
[baseFileName, folder] = uiputfile(defaultFileName, 'Specify a file');
if baseFileName == 0
  % User clicked the Cancel button.
  return;
end
fullFileName = strcat(folder, baseFileName);
imwrite(yy, fullFileName);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
exit_1=questdlg('Are u sure ,want to exit..',' ','yes','no','option');
    switch exit_1
        case 'yes',
                close all;
        case 'no',;
    end
    


% % --- Executes on button press in pushbutton15.
% function pushbutton15_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton15 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global yy;
% pout = yy;
% % pout_imadjust = imadjust(pout);
% pout_histeq = histeq(pout);
% % pout_adapthisteq = adapthisteq(pout);
% % axes(handles.axes14);
% % imshow(pout_imadjust);
% axes(handles.axes15);
% imshow(pout_histeq);
% % axes(handles.axes16);
% % imshow(pout_adapthisteq);
% % read image and convert to double for FFT
% h = fspecial('disk',4);
% cam = im2double(yy);
% hf = psf2otf(h,size(cam));
% cam_blur = real(ifft2(hf.*fft2(cam)));
% axes(handles.axes14);
% imshow(cam_blur);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yy;
x    = double(yy); % INPUT IMAGE
Lmin = min(x(:)); % MINIMUM OF INPUT IMAGE
Lmax = max(x(:)); % MAXIMUM OF INPUT IMAGE
Lmean = mean(x(:)); %MEAN OF INPUT IMAGE
LMssum = mean(x(:).^2); %MEAN SQUARE SUM OF INPUT IMAGE

Gmin = 0; %MINIMUM OF OUTPUT IMAGE
Gmax = 255; %MAXIMUM OF OUTPUT IMAGE
Gmean = 110; %MEAN OF OUTPUT IMAGE

bnum = Lmax.^2*(Gmean-Gmin) - LMssum*(Gmax-Gmin) + Lmin.^2*(Gmax-Gmean);
bden = 2*(Lmax*(Gmean-Gmin)-Lmean*(Gmax-Gmin)+Lmin*(Gmax-Gmean));

b = bnum/bden;

a = (Gmax-Gmin)/((Lmax-Lmin)*(Lmax+Lmin-2*b));

c = Gmin - a*(Lmin-b).^2;

y = a*(x-b).^2+c; %PARABOLIC FUNCTION
y = uint8(y);
axes(handles.axes15)
imshow(y);
h = fspecial('disk',4);
cam = im2double(yy);
hf = psf2otf(h,size(cam));
cam_blur = real(ifft2(hf.*fft2(cam)));
axes(handles.axes14);
imshow(cam_blur);
