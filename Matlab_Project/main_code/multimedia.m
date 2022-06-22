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

% Last Modified by GUIDE v2.5 22-Jun-2022 09:51:40

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
set(gcf,'color',[1 1 1]);
handles.TeamName = {'Memphis Grizzlies',...
'Golden State Warriors',...
'Denver Nuggets',...
'New Orleans Pelicans',...
'Minnesota Timberwolves',...
'Brooklyn Nets',...
'Phoenix Suns',...
'Dallas Mavericks',...
'Boston Celtics',...
'Philadelphia 76ers',...
'Miami Heat',...
'Toronto Raptors',...
'Milwaukee Bucks',...
'Utah Jazz',...
'Atlanta Hawks',...
'Chicago Bulls',...
'League Average'...
};
handles.TypeName = {'Games(上場數)',...
'Minutes Played(上場時間)',...
'Field Goals(投籃數)',...
'Field Goal Attempts(投籃出手數)',...
'Field Goal Percentage(投籃命中率)',...
'3-Point Field Goals(三分投射)',...
'3-Point Field Goal Attempts(三分球出手數)',...
'3-Point Field Goal Percentage(三分球命中率)',...
'2-Point Field Goals(二分投射)',...
'2-point Field Goal Attempts(二分球出手數)',...
'2-Point Field Goal Percentage(二分球命中率)',...
'Free Throws(罰球)',...
'Free Throw Attempts(罰球出手數)',...
'Free Throw Percentage(罰球命中率)',...
'Offensive Rebounds(攻進籃板球)',...
'Defensive Rebounds(防守籃板球)',...
'Total Rebounds(籃板球總數)',...
'Assists(助攻)',...
'Steals(抄截)',...
'Blocks(蓋火鍋)',...
'Turnovers(失誤)',...
'Personal Fouls(個人犯規)',...
'Points(得分)'...
};
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

[atlanta_hawks_indexed,atlanta_hawks_map] = imread('Team_logo\atlanta_hawks.png','BackgroundColor',[1 1 1]);%problem still exist.
[boston_celtics_indexed,boston_celtics_map] = imread('Team_logo\boston_celtics.png','BackgroundColor',[1 1 1]); %problem still exist.
[brooklyn_netss_indexed,brooklyn_nets_map] = imread('Team_logo\brooklyn_nets.png','BackgroundColor',[1 1 1]); %problem still exist.
[chicago_bulls_indexed,chicago_bulls_map] = imread('Team_logo\chicago_bulls.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_dallas_mavericks = imread('Team_logo\dallas_mavericks.png','BackgroundColor',[1 1 1]);
Img_denver_nuggets = imread('Team_logo\denver_nuggets.png');
Img_golden_state_warriors = imread('Team_logo\golden_state_warriors.png','BackgroundColor',[1 1 1]);
Img_memphis_grizzlies = imread('Team_logo\memphis_grizzlies.png');
Img_miami_heat = imread('Team_logo\miami_heat.png','BackgroundColor',[1 1 1]);
[milwaukee_bucks_indexed,milwaukee_bucks_map] = imread('Team_logo\milwaukee_bucks.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_minnesota_timberwolves = imread('Team_logo\minnesota_timberwolves.png');
Img_new_orleans_pelicans = imread('Team_logo\new_orleans_pelicans.png');
Img_philadelphia_76ers = imread('Team_logo\philadelphia_76ers.png');
[phoenix_suns_indexed,phoenix_suns_map] = imread('Team_logo\phoenix_suns.png','BackgroundColor',[1 1 1]);%problem still exist.
[toronto_raptors_indexed,toronto_raptors_map] = imread('Team_logo\toronto_raptors.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_utah_jazz = imread('Team_logo\utah_jazz.png');

value=get(hObject, 'value');	% 取得此 UI 物件的選項
switch value			% 依選項來載入聲音檔
    case 2
        Data = Data(:,1);
        imshow(Img_memphis_grizzlies,[],'Parent',handles.axes2);
    case 3
        Data = Data(:,2);
        imshow(Img_golden_state_warriors,[],'Parent',handles.axes2);
    case 4
        Data = Data(:,3);
        imshow(Img_denver_nuggets,'Parent',handles.axes2);
    case 5
        Data = Data(:,4);
        imshow(Img_new_orleans_pelicans,'Parent',handles.axes2);
    case 6
        Data = Data(:,5);
        imshow(Img_minnesota_timberwolves,'Parent',handles.axes2);
    case 7
        Data = Data(:,6);
        imshow(brooklyn_netss_indexed,brooklyn_nets_map,'Parent',handles.axes2);
    case 8
        Data = Data(:,7);
        imshow(phoenix_suns_indexed,phoenix_suns_map,'Parent',handles.axes2);
    case 9
        Data = Data(:,8);
        imshow(Img_dallas_mavericks,'Parent',handles.axes2);
    case 10
        Data = Data(:,9);
        imshow(boston_celtics_indexed,boston_celtics_map,'Parent',handles.axes2);
    case 11
        Data = Data(:,10);
        imshow(Img_philadelphia_76ers,'Parent',handles.axes2);
    case 12
        Data = Data(:,11);
        imshow(Img_miami_heat,'Parent',handles.axes2);
    case 13
        Data = Data(:,12);
        imshow(toronto_raptors_indexed,toronto_raptors_map,'Parent',handles.axes2);
    case 14
        Data = Data(:,13);
        imshow(milwaukee_bucks_indexed,milwaukee_bucks_map,'Parent',handles.axes2);
    case 15
        Data = Data(:,14);
        imshow(Img_utah_jazz,'Parent',handles.axes2);
    case 16
        Data = Data(:,15);
        imshow(atlanta_hawks_indexed,atlanta_hawks_map,'Parent',handles.axes2);
    case 17
        Data = Data(:,16);
        imshow(chicago_bulls_indexed,chicago_bulls_map,'Parent',handles.axes2);
end
if get(handles.popupmenu4,'value')==get(handles.popupmenu1,'value')
   set(handles.text4,'visible','on','String','Error!'); 
   Data = [];
else
    set(handles.text4,'visible','off'); 
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

[atlanta_hawks_indexed,atlanta_hawks_map] = imread('Team_logo\atlanta_hawks.png','BackgroundColor',[1 1 1]);%problem still exist.
[boston_celtics_indexed,boston_celtics_map] = imread('Team_logo\boston_celtics.png','BackgroundColor',[1 1 1]); %problem still exist.
[brooklyn_netss_indexed,brooklyn_nets_map] = imread('Team_logo\brooklyn_nets.png','BackgroundColor',[1 1 1]); %problem still exist.
[chicago_bulls_indexed,chicago_bulls_map] = imread('Team_logo\chicago_bulls.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_dallas_mavericks = imread('Team_logo\dallas_mavericks.png','BackgroundColor',[1 1 1]);
Img_denver_nuggets = imread('Team_logo\denver_nuggets.png');
Img_golden_state_warriors = imread('Team_logo\golden_state_warriors.png','BackgroundColor',[1 1 1]);
Img_memphis_grizzlies = imread('Team_logo\memphis_grizzlies.png');
Img_miami_heat = imread('Team_logo\miami_heat.png','BackgroundColor',[1 1 1]);
[milwaukee_bucks_indexed,milwaukee_bucks_map] = imread('Team_logo\milwaukee_bucks.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_minnesota_timberwolves = imread('Team_logo\minnesota_timberwolves.png');
Img_new_orleans_pelicans = imread('Team_logo\new_orleans_pelicans.png');
Img_philadelphia_76ers = imread('Team_logo\philadelphia_76ers.png');
[phoenix_suns_indexed,phoenix_suns_map] = imread('Team_logo\phoenix_suns.png','BackgroundColor',[1 1 1]);%problem still exist.
[toronto_raptors_indexed,toronto_raptors_map] = imread('Team_logo\toronto_raptors.png','BackgroundColor',[1 1 1]);%problem still exist.
Img_utah_jazz = imread('Team_logo\utah_jazz.png');

value=get(hObject, 'value');	% 取得此 UI 物件的選項
switch value			% 依選項來載入聲音檔
    case 2
        Data = Data(:,1);
        imshow(Img_memphis_grizzlies,[],'Parent',handles.axes3);
    case 3
        Data = Data(:,2);
        imshow(Img_golden_state_warriors,[],'Parent',handles.axes3);
    case 4
        Data = Data(:,3);
        imshow(Img_denver_nuggets,'Parent',handles.axes3);
    case 5
        Data = Data(:,4);
        imshow(Img_new_orleans_pelicans,'Parent',handles.axes3);
    case 6
        Data = Data(:,5);
        imshow(Img_minnesota_timberwolves,'Parent',handles.axes3);
    case 7
        Data = Data(:,6);
        imshow(brooklyn_netss_indexed,brooklyn_nets_map,'Parent',handles.axes3);
    case 8
        Data = Data(:,7);
        imshow(phoenix_suns_indexed,phoenix_suns_map,'Parent',handles.axes3);
    case 9
        Data = Data(:,8);
        imshow(Img_dallas_mavericks,'Parent',handles.axes3);
    case 10
        Data = Data(:,9);
        imshow(boston_celtics_indexed,boston_celtics_map,'Parent',handles.axes3);
    case 11
        Data = Data(:,10);
        imshow(Img_philadelphia_76ers,'Parent',handles.axes3);
    case 12
        Data = Data(:,11);
        imshow(Img_miami_heat,'Parent',handles.axes3);
    case 13
        Data = Data(:,12);
        imshow(toronto_raptors_indexed,toronto_raptors_map,'Parent',handles.axes3);
    case 14
        Data = Data(:,13);
        imshow(milwaukee_bucks_indexed,milwaukee_bucks_map,'Parent',handles.axes3);
    case 15
        Data = Data(:,14);
        imshow(Img_utah_jazz,'Parent',handles.axes3);
    case 16
        Data = Data(:,15);
        imshow(atlanta_hawks_indexed,atlanta_hawks_map,'Parent',handles.axes3);
    case 17
        Data = Data(:,16);
        imshow(chicago_bulls_indexed,chicago_bulls_map,'Parent',handles.axes3);
end
if get(handles.popupmenu4,'value')==get(handles.popupmenu1,'value')
   set(handles.text4,'Visible','on','String','Error!'); 
   Data = [];
else
    set(handles.text4,'visible','off'); 
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
set(gcf,'color',[1 1 1]);

Data_TeamA = handles.Data1;
Data_TeamB = handles.Data2;
Type_Index = get(handles.popupmenu2,'value')-1;
TeamA_Index = get(handles.popupmenu1,'value')-1;
TeamB_Index = get(handles.popupmenu4,'value')-1;

Contrast_graph = [Data_TeamA(Type_Index),Data_TeamB(Type_Index)];
Contrast_label = {num2str(Data_TeamA(Type_Index)),num2str(Data_TeamB(Type_Index))};
Contrast_title = handles.TypeName(Type_Index);


pie(Contrast_graph,Contrast_label);
title(Contrast_title);

legend({string(handles.TeamName(TeamA_Index)),string(handles.TeamName(TeamB_Index))},'Location','southoutside');

%---------------------------總冠軍判斷----------------------------------
if get(handles.popupmenu1,'value') == 3 && get(handles.popupmenu4,'value') == 10
set(gcf,'color','#d5e8b0');
elseif get(handles.popupmenu1,'value') == 10 && get(handles.popupmenu4,'value') == 3
set(gcf,'color','#d5e8b0');
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
