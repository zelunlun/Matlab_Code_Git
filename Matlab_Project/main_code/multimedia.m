function varargout = multimedia(varargin)
% MULTIMEDIA MATLAB code for multimedia.fig
%      MULTIMEDIA, by itself, creates a new MULTIMEDIA or raises the existing
%      singleton*.
%
%      H = MULTIMEDIA returns the handle to a new MULTIMEDIA or the handle to
%      the existing singleton*.
%
%      MULTIMEDIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIMEDIA.M with the given input arguments.
%
%      MULTIMEDIA('Property','Value',...) creates a new MULTIMEDIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multimedia_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multimedia_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multimedia

% Last Modified by GUIDE v2.5 19-Jun-2022 21:43:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multimedia_OpeningFcn, ...
                   'gui_OutputFcn',  @multimedia_OutputFcn, ...
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


% --- Executes just before multimedia is made visible.
function multimedia_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multimedia (see VARARGIN)

% Choose default command line output for multimedia
handles.output = hObject;
handles.axes1 = set(handles.axes1,'visible','off');
handles.TeamName = {''};
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multimedia wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multimedia_OutputFcn(hObject, eventdata, handles) 
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
%[filename, pathname] = uigetfile({'*.txt'},'File Selector');
%if ~ischar(filename)
 %   return;  % User aborted the file selection
%end
file = fullfile('C:\Users\isu10903027a\Desktop\Matlab_Code_Git-main\Matlab_Project\main_code', 'Matlab_Project1.txt');
[fid, msg] = fopen(file, 'r');
if fid == -1
    error(msg);
end
Data = fscanf(fid, '%g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g\n', [23, inf]);  % Or how your file is formatted
fclose(fid);

value=get(hObject, 'value');	% 取得此 UI 物件的選項
switch value			% 依選項來載入聲音檔
    case 2
        Data = Data(:,1);
    case 3
        Data = Data(:,2);
    case 4
        Data = Data(:,3);
    case 5
        Data = Data(:,4);
    case 6
        Data = Data(:,5);
    case 7
        Data = Data(:,6);
    case 8
        Data = Data(:,7);
    case 9
        Data = Data(:,8);
    case 10
        Data = Data(:,9);
    case 11
        Data = Data(:,10);
    case 12
        Data = Data(:,11);
    case 13
        Data = Data(:,12);
    case 14
        Data = Data(:,13);
    case 15
        Data = Data(:,14);
    case 16
        Data = Data(:,15);
    case 17
        Data = Data(:,16);
end
if get(handles.popupmenu4,'value')==get(handles.popupmenu1,'value')
   disp("Error!");
   return;
end
handles.Data1 = Data;
guidata(hObject, handles);  % Store updated handles struct in the GUI

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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4
file = fullfile('C:\Users\isu10903027a\Desktop\Matlab_Code_Git-main\Matlab_Project\main_code', 'Matlab_Project1.txt');
[fid, msg] = fopen(file, 'r');
if fid == -1
    error(msg);
end
Data = fscanf(fid, '%g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g\n', [23, inf]);  % Or how your file is formatted
fclose(fid);

value=get(hObject, 'value');	% 取得此 UI 物件的選項
switch value			% 依選項來載入聲音檔
    case 2
        Data = Data(:,1);
    case 3
        Data = Data(:,2);
    case 4
        Data = Data(:,3);
    case 5
        Data = Data(:,4);
    case 6
        Data = Data(:,5);
    case 7
        Data = Data(:,6);
    case 8
        Data = Data(:,7);
    case 9
        Data = Data(:,8);
    case 10
        Data = Data(:,9);
    case 11
        Data = Data(:,10);
    case 12
        Data = Data(:,11);
    case 13
        Data = Data(:,12);
    case 14
        Data = Data(:,13);
    case 15
        Data = Data(:,14);
    case 16
        Data = Data(:,15);
    case 17
        Data = Data(:,16);        
end
if get(handles.popupmenu4,'value')==get(handles.popupmenu1,'value')
   disp("Error!"); 
   return;
end
handles.Data2 = Data;
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
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
Data_TeamA = handles.Data1;
Data_TeamB = handles.Data2;
Data_Type = get(handles.popupmenu2,'value')-1;

Contrast_graph = [Data_TeamA(Data_Type),Data_TeamB(Data_Type)];
Contrast_label = {num2str(Data_TeamA(Data_Type)),num2str(Data_TeamB(Data_Type))};

pie(Contrast_graph,Contrast_label);
