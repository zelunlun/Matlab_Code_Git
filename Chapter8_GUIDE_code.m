function varargout = call2222(varargin)
% CALL2222 MATLAB code for call2222.fig
%      CALL2222, by itself, creates a new CALL2222 or raises the existing
%      singleton*.
%
%      H = CALL2222 returns the handle to a new CALL2222 or the handle to
%      the existing singleton*.
%
%      CALL2222('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALL2222.M with the given input arguments.
%
%      CALL2222('Property','Value',...) creates a new CALL2222 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before call2222_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to call2222_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help call2222

% Last Modified by GUIDE v2.5 14-Apr-2022 15:25:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @call2222_OpeningFcn, ...
                   'gui_OutputFcn',  @call2222_OutputFcn, ...
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


% --- Executes just before call2222 is made visible.
function call2222_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to call2222 (see VARARGIN)

% Choose default command line output for call2222
handles.output = hObject;

handles.errorCount = 0; 
    %上面這個是什麼意思
   
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes call2222 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = call2222_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
position = num2str(get(handles.slider1, 'Value'));
set(handles.edit1, 'String', position);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
value = str2double(get(handles.edit1, 'String'));
   %---------------------------
   % 新加入的　↓
   %---------------------------
if isnumeric(value) && length(value)==1 && ... %是否是數值型態
    value >= get(handles.slider1, 'Min') && ... 
    value <= get(handles.slider1, 'Max')
    set(handles.slider1, 'Value', value);
else
% 若不合法，錯誤次數加一，並顯示相關訊息
    handles.errorCount = handles.errorCount + 1;
    guidata(hObject, handles);	% 儲存新的 handles
    errMsg=['數值不合法：第 ', num2str(handles.errorCount), ' 次錯誤']; %My error count 的String
    set(handles.edit1, 'String', errMsg);
end
    %---------------------------
    % 新加入的 ↑
    %---------------------------
% set(handles.slider1, 'Value', value); ←　這一行可以不用了


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
