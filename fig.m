function varargout = fig(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fig_OpeningFcn, ...
                   'gui_OutputFcn',  @fig_OutputFcn, ...
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


% --- Executes just before fig is made visible.
function fig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fig (see VARARGIN)

% Choose default command line output for fig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
 selezionato=0;
        while selezionato==0
            [namefile,pathname]=uigetfile({'*.jpg','IMAGE Files (*.jpg)'},'Choose GrayScale Image');
            if namefile~=0
                [firstimg,map]=imread(strcat(pathname,namefile));
                selezionato=1;
            else
                disp('Select a grayscale image');
            end
            
        end
       handles.output = hObject;
axes(handles.axes1);
imshow(firstimg);
 save firstimg firstimg ;


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selezionato=0;
        while selezionato==0
            [namefile,pathname]=uigetfile({'*.jpg','IMAGE Files (*.jpg)'},'Choose GrayScale Image');
            if namefile~=0
                [secondimg,map]=imread(strcat(pathname,namefile));
                selezionato=1;
            else
                disp('Select a grayscale image');
            end
            
        end
        handles.output = hObject;
axes(handles.axes2);
imshow(secondimg);
        %imshow(secondimg);
   save secondimg secondimg ;
 
        
% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selezionato=0;
        while selezionato==0
            [namefile,pathname]=uigetfile({'*.jpg','IMAGE Files (*.jpg)'},'Choose GrayScale Image');
            if namefile~=0
                [thirdimg,map]=imread(strcat(pathname,namefile));
                selezionato=1;
            else
                disp('Select a grayscale image');
            end
            
        end
      %  imshow(thirdimg);
 handles.output = hObject;
axes(handles.axes3);
imshow(thirdimg);
save  thirdimg thirdimg;
 
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load firstimg
load secondimg
load thirdimg

compare_between_more_than_one_year
