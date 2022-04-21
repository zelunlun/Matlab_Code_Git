function varargout = Play_Sound(varargin)
% PLAY_SOUND MATLAB code for Play_Sound.fig
%      PLAY_SOUND, by itself, creates a new PLAY_SOUND or raises the existing
%      singleton*.
%
%      H = PLAY_SOUND returns the handle to a new PLAY_SOUND or the handle to
%      the existing singleton*.
%
%      PLAY_SOUND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLAY_SOUND.M with the given input arguments.
%
%      PLAY_SOUND('Property','Value',...) creates a new PLAY_SOUND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Play_Sound_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Play_Sound_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Play_Sound

% Last Modified by GUIDE v2.5 21-Apr-2022 13:58:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Play_Sound_OpeningFcn, ...
                   'gui_OutputFcn',  @Play_Sound_OutputFcn, ...
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


% --- Executes just before Play_Sound is made visible.
function Play_Sound_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Play_Sound (see VARARGIN)

% Choose default command line output for Play_Sound
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Play_Sound wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Play_Sound_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


value=get(hObject, 'value');	% 取得此 UI 物件的選項
switch value			% 依選項來載入聲音檔
    case 1
        load chirp.mat
    case 2
        load handel.mat
    case 3
        load laughter.mat
end
plot((1:length(y))/Fs, y);	% 畫出聲音的波形
handles.y=y;			% 紀錄聲音訊號
handles.Fs=Fs;			% 紀錄取樣頻率
guidata(hObject, handles);	% 儲存將用於其他函式之 handles 
%  ↑把公用握把做更新

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'y')
    y=handles.y;
    Fs=handles.Fs;
    sound(y, Fs); % 播放音效檔 sound( 聲音訊號, 取樣頻率)
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(gcbf) % 關閉的意思