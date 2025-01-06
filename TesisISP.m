function varargout = TesisISP(varargin)
% TESISISP MATLAB code for TesisISP.fig
%      TESISISP, by itself, creates a new TESISISP or raises the existing
%      singleton*.
%
%      H = TESISISP returns the handle to a new TESISISP or the handle to
%      the existing singleton*.
%
%      TESISISP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESISISP.M with the given input arguments.
%
%      TESISISP('Property','Value',...) creates a new TESISISP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TesisISP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TesisISP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TesisISP

% Last Modified by GUIDE v2.5 25-Dec-2024 12:39:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TesisISP_OpeningFcn, ...
                   'gui_OutputFcn',  @TesisISP_OutputFcn, ...
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


% --- Executes just before TesisISP is made visible.
function TesisISP_OpeningFcn(hObject, eventdata, handles, varargin)

% IMAGENES
% -------------------------------------------------------------------------

%IMAGEN BANNER------------------
[x, ~, alpha] = imread('banner.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_prin);                       % Establece el eje donde se mostrará la imagen
hImg = imshow(x, 'Parent', handles.ax_prin); % Muestra la imagen
set(hImg, 'AlphaData', alpha);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_prin, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%IMAGEN LOGO------------------
[x2, ~, alpha2] = imread('logo.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_logo);                       % Establece el eje donde se mostrará la imagen
hImg2 = imshow(x2, 'Parent', handles.ax_logo); % Muestra la imagen
set(hImg2, 'AlphaData', alpha2);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_logo, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%IMAGEN LOGO------------------
[x3, ~, alpha3] = imread('mensaje.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_mensaje);                       % Establece el eje donde se mostrará la imagen
hImg3 = imshow(x3, 'Parent', handles.ax_mensaje); % Muestra la imagen
set(hImg3, 'AlphaData', alpha3);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_mensaje, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%IMAGEN MARCO------------------
[x4, ~, alpha4] = imread('marco.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_marco);                       % Establece el eje donde se mostrará la imagen
hImg4 = imshow(x4, 'Parent', handles.ax_marco); % Muestra la imagen
set(hImg4, 'AlphaData', alpha4);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_marco, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%IMAGEN MARCO2------------------
[x6, ~, alpha6] = imread('marco.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_marco2);                       % Establece el eje donde se mostrará la imagen
hImg6 = imshow(x6, 'Parent', handles.ax_marco2); % Muestra la imagen
set(hImg6, 'AlphaData', alpha6);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_marco2, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%IMAGEN PERSONA------------------
[x5, ~, alpha5] = imread('persona.png');        % Carga la imagen PNG con transparencia
axes(handles.ax_persona);                       % Establece el eje donde se mostrará la imagen
hImg5 = imshow(x5, 'Parent', handles.ax_persona); % Muestra la imagen
set(hImg5, 'AlphaData', alpha5);               % Aplica la transparencia usando el canal alfa
axis(handles.ax_persona, 'off');                % Desactiva los ejes
hold on; % Permite superponer elementos

%Choose default command line output for TesisISP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = TesisISP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%EDIT TEXT: NOMBRE CLIENTE
%-----------------------------
function et_nom_cliente_Callback(hObject, eventdata, handles)
    texto_ingresado = get(hObject, 'String');   % Obtener el texto ingresado
    texto_mayusculas = upper(texto_ingresado); % Convertir el texto a mayúsculas
    set(hObject, 'String', texto_mayusculas);% Actualizar el campo con el texto en mayúsculas

function et_nom_cliente_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
%EDIT TEXT: LATENCIA
%-----------------------------
function et_latencia_Callback(hObject, eventdata, handles)
    contenido_actual = get(hObject, 'String');                     % Verificar y eliminar cualquier carácter no numérico
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep;                                                      % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);

function et_latencia_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

%EDIT TEXT: JITTER
%-----------------------------
function et_jitter_Callback(hObject, eventdata, handles)
    contenido_actual = get(hObject, 'String');                     % Verificar y eliminar cualquier carácter no numérico
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep;                                                      % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);

function et_jitter_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

%EDIT TEXT: VELOCIDAD DE BAJADA
%-----------------------------
function et_vbajada_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

    
    
%EDIT TEXT: VELOCIDAD DE SUBIDA
%-----------------------------    
function et_vsubida_Callback(hObject, eventdata, handles)

function et_vsubida_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%EJECUCION DE TODO EL SCRIPT
%-------------------------------------------------------------------------- 
%--------------------------------------------------------------------------
function pb_ejecutar_Callback(hObject, eventdata, handles)

    logFile = 'log.txt';
    diary(logFile);        % Habilita el registro

    %CAPTURA LAS VARIABLES
    data_client   = get(handles.et_nom_cliente, 'String');
    data_vbajada  = get(handles.et_vbajada, 'String');
    data_jitter   = get(handles.et_jitter, 'String');
    data_latencia = get(handles.et_latencia, 'String');


    %CONV TEXTO A NUMERO
    velocidad_medida = str2double(data_vbajada); 
    jitter           = str2double(data_jitter); 
    latencia         = str2double(data_latencia); 



    %OPERACIONES CON EL JITTER
    if(jitter <10)
        j="Excelente";
        set(handles.st_jitt, 'BackgroundColor', [0.16 0.65 0.27]); 
    elseif(jitter >=10 && jitter <30)
        j="Aceptable";
        set(handles.st_jitt, 'BackgroundColor', [1.00 0.75 0.03]); 
    elseif (jitter >=30)
        j="Deficiente";
        set(handles.st_jitt, 'BackgroundColor', [0.86, 0.21, 0.27]); 
    end
    
    %OPERACIONES CON LA LATENCIA
    if(latencia <30)
        l="Excelente";
          set(handles.st_lat, 'BackgroundColor', [0.16 0.65 0.27]);
    elseif(latencia >=30 && latencia <100)
        l="Aceptable";
        set(handles.st_lat, 'BackgroundColor', [1.00 0.75 0.03]); 
    elseif (latencia >=100)
        l="Deficiente";
        set(handles.st_lat, 'BackgroundColor', [0.86, 0.21, 0.27]); 
    end

    %FUNCION DEL RADIO BUTTON GROUP
    rb_selecionado = get(get(handles.bg_planes, 'SelectedObject'), 'Tag');

    switch rb_selecionado
        case 'rb_plan25'
            seleccion=" $25 y una velocidad de 300 Mbps ";
            velocidad_paquete = 300;
            if(velocidad_medida > (velocidad_paquete*0.95))
                v="Excelente";
                set(handles.st_vel, 'BackgroundColor', [0.16 0.65 0.27]);
            elseif(velocidad_medida <= (velocidad_paquete*0.95) && velocidad_medida >=(velocidad_paquete *0.80))
                v="Aceptable";
                set(handles.st_vel, 'BackgroundColor', [1.00 0.75 0.03]);
            elseif (velocidad_medida < (velocidad_paquete *0.80))
                v="Deficiente";
                set(handles.st_vel, 'BackgroundColor', [0.86, 0.21, 0.27]);
            end

        case 'rb_plan30'
            seleccion=" $30 y una velocidad de 500 Mbps ";
            velocidad_paquete = 300;
            if(velocidad_medida > (velocidad_paquete*0.95))
                v="Excelente";
                set(handles.st_vel, 'BackgroundColor', [0.16 0.65 0.27]);
            elseif(velocidad_medida <= (velocidad_paquete*0.95) && velocidad_medida >=(velocidad_paquete*0.80))
                v="Aceptable";
                set(handles.st_vel, 'BackgroundColor', [1.00 0.75 0.03]);
            elseif (velocidad_medida < (velocidad_paquete*0.80))
                v="Deficiente";
                set(handles.st_vel, 'BackgroundColor', [0.86, 0.21, 0.27]);
            end

        case 'rb_plan35'
            seleccion=" $35 y una velocidad de 700 Mbps ";
            velocidad_paquete=700;
            if(velocidad_medida > (velocidad_paquete*0.95))
                v="Excelente";
                set(handles.st_vel, 'BackgroundColor', [0.16 0.65 0.27]);
            elseif(velocidad_medida <= (velocidad_paquete*0.95) && velocidad_medida >=(velocidad_paquete*0.80))
                v="Aceptable";
                set(handles.st_vel, 'BackgroundColor', [1.00 0.75 0.03]);
            elseif (velocidad_medida < (velocidad_paquete*0.80))
                v="Deficiente";
                set(handles.st_vel, 'BackgroundColor', [0.86, 0.21, 0.27]);
            end
            
        otherwise
            seleccion=" $0 ";
    end

    handles.selected_option = seleccion;          % Mostrar la opción seleccionada
    msg_plan=handles.selected_option;
    set(handles.st_vel,'String',v );
    set(handles.st_jitt,'String',j);
    set(handles.st_lat,'String',l);

    %MOSTRAR INFORMACION FINAL
    set(handles.st_respuesta, 'String'," El cliente " + data_client + " ha contratado el Plan de " + msg_plan ...
                              + ". Al momento de tomar datos, cuenta con una velocidad de conexión de " + data_vbajada + "[Mbps]"...
                              + " Jitter de "+ data_jitter+" [ms] "...
                              + "y Latencia de "+data_latencia+" [ms] ");

    %FUNCION DISPONIBILIDAD  
    hi = str2double(get(handles.et_hi, 'String'));   % Leer datos de hora, minuto y segundo de inicio
    mi = str2double(get(handles.et_mi, 'String'));
    si = str2double(get(handles.et_si, 'String'));

    hf = str2double(get(handles.et_hf, 'String'));   % Leer datos de hora, minuto y segundo de fin
    mf = str2double(get(handles.et_mf, 'String'));
    sf = str2double(get(handles.et_sf, 'String'));
    
    if isempty(hi) || isnan(hi), hi = 0; end         % Verificar campos vacíos o no numéricos, asignando valores predeterminados
    if isempty(mi) || isnan(mi), mi = 0; end
    if isempty(si) || isnan(si), si = 0; end
    if isempty(hf) || isnan(hf), hf = 0; end
    if isempty(mf) || isnan(mf), mf = 0; end
    if isempty(sf) || isnan(sf), sf = 0; end


    if (hi > 0 || mi > 0 || si > 0) && (hf == 0 && mf == 0 && sf == 0)                               % Validar si se ingresó solo uno de los tiempos       
        msgbox('Error: Ingresaste un tiempo de inicio pero no un tiempo de fin.', 'Error: Disponibilidad', 'error'); % Error: Tiempo de inicio ingresado sin tiempo de fin
        return;
    elseif (hf > 0 || mf > 0 || sf > 0) && (hi == 0 && mi == 0 && si == 0)
        msgbox('Error: Ingresaste un tiempo de fin pero no un tiempo de inicio.', 'Error: Disponivilidad', 'error'); % Error: Tiempo de fin ingresado sin tiempo de inicio
        return;
    end

    segundos_inicio = hi * 3600 + mi * 60 + si;    % Convertir todo a segundos
    segundos_fin = hf * 3600 + mf * 60 + sf;       % Convertir todo a segundos

    
    if segundos_inicio == 0 && segundos_fin == 0   % Determinar el valor de disponibilidad y segundos (seg)
        seg = 0;                                   % No hay tiempo calculado
        disponibilidad = 100;                      % Disponibilidad excelente
        set(handles.st_disponibilidad, 'String', sprintf('Excelente: %.2f %%', disponibilidad));
        set(handles.st_disponibilidad, 'BackgroundColor', [0 1 0]); % Color verde
    elseif segundos_fin > segundos_inicio
        seg = segundos_fin - segundos_inicio;                   % Calcular el disponibilidad si los tiempos son válidos
        disponibilidad = round(max(0, (100 - ((seg / 86400) * 100))),2); % Garantizar que no sea menor a 0
        if disponibilidad >= 96.7                               % Actualizar disponibilidad según el rango
            set(handles.st_disponibilidad, 'String', sprintf('Excelente: %.2f %%', disponibilidad));
            set(handles.st_disponibilidad, 'BackgroundColor', [0.16 0.65 0.27]); % Verde
        elseif disponibilidad >= 80
            set(handles.st_disponibilidad, 'String', sprintf('Aceptable: %.2f %%', disponibilidad));
            set(handles.st_disponibilidad, 'BackgroundColor', [1.00 0.75 0.03]); % Amarillo
        else
            set(handles.st_disponibilidad, 'String', sprintf('Deficiente: %.2f %% ', disponibilidad));
            set(handles.st_disponibilidad, 'BackgroundColor', [0.86, 0.21, 0.27]); % Rojo
        end
    else                       % Error en la coherencia de tiempos, pero seguimos para guardar
        seg = 0;               % No hay tiempo calculado
        disponibilidad = 100;  % Valor predeterminado
        set(handles.st_disponibilidad, 'String', 'Error en los tiempos, ingresados.');
        set(handles.st_disponibilidad, 'BackgroundColor', [1.00 0.75 0.03]); % Naranja
    end

  
    % PLAN: PRECIO Y VELOCIDAD Y CREDENCIALES TINHSPEAK--------------------
    switch rb_selecionado
        case 'rb_plan25'
            paquete = 25;
            velocidad_paquete = 300;       
%             channelID = ID;              % Reemplaza con el ID de tu canal
            writeAPIKey = 'TU API KEY 1'; % Reemplaza con tu API Key de escritura
        case 'rb_plan30'
            paquete = 30;
            velocidad_paquete = 500;
%             channelID = ID;              % Reemplaza con el ID de tu canal
            writeAPIKey = 'TU API KEY 2'; % Reemplaza con tu API Key de escritura
        case 'rb_plan35'
            paquete = 35;
            velocidad_paquete = 700;
%             channelID = ID;              % Reemplaza con el ID de tu canal
            writeAPIKey = 'TU API KEY 3'; % Reemplaza con tu API Key de escritura
        otherwise
            paquete = 0;
            velocidad_paquete = 0;
%             channelID = 0000000;              % Reemplaza con el ID de tu canal
            writeAPIKey = '00000000000000000'; % Reemplaza con tu API Key de escritura
    end
    
    % CONTROL DE NOMBRE USUARIO
    excel_nombre = string(data_client);  % Datos a insertar desde el usuario

    contadorArchivo = 'contadorDesconocido.mat';  % Archivo para guardar el contador

    % Verificar si el archivo contador existe
    if isfile(contadorArchivo)
        load(contadorArchivo, 'contadorDesconocido');  % Cargar el contador si existe
    else
        contadorDesconocido = 1;  % Inicializar el contador si no existe
        save(contadorArchivo, 'contadorDesconocido');
    end

    % Verificar si el nombre está vacío o es un string vacío
    if isempty(data_client) || strlength(data_client) == 0
        excel_nombre = sprintf('Usuario_%d', contadorDesconocido);  % Generar nombre único
        contadorDesconocido = contadorDesconocido + 1;  % Incrementar el contador
    end

    % Guardar el contador actualizado
    save(contadorArchivo, 'contadorDesconocido');

    % Salida final (nombre)
%     disp(['Nombre asignado: ', excel_nombre]);


    
    %EXCEL: ACTUALIZACION Y ALMACENAMIENTO---------------------------------
    %----------------------------------------------------------------------
      
    fechaEjecucion = datetime('now', 'Format', 'yyyy-MM-dd HH:mm:ss'); % Fecha y hora actual en formato DATETIME
    fecha = char(fechaEjecucion); % Convertir a cadena de caracteres para usar en SQL
    
    archivoExcel = 'bd_megared.xlsx';     % Nombre del archivo Excel
    nombreTabla = 'usuarios';             % Nombre de la tabla (hoja)
    % Obtener la ruta del directorio actual donde se ejecuta el script
    directorio = pwd;  % Retorna el directorio de trabajo actual

    % Combinar el directorio con el nombre del archivo
    archivoExcel = fullfile(directorio, archivoExcel);  % Crea la ruta completa


    % Asignar los valores a las variables para la nueva fila
    excel_fecha = fecha;
    excel_paquete = paquete;
    excel_velocidad_paquete = velocidad_paquete;
    excel_velocidad_medida = velocidad_medida;
    excel_jitter = jitter;
    excel_latencia = latencia;
    excel_disponibilidad = disponibilidad;

    nuevaFila = table(string(excel_fecha), string(excel_nombre), string(excel_paquete), excel_velocidad_paquete, excel_velocidad_medida, excel_jitter, excel_latencia, excel_disponibilidad, ...
        'VariableNames', {'fecha', 'nombre', 'paquete', 'velocidad_paquete', 'velocidad_medida', 'jitter', 'latencia', 'disponibilidad'});

    % Verificar si el archivo Excel ya existe
    try
        if isfile(archivoExcel)
            % Si el archivo existe, leer los datos existentes y añadir la nueva fila
            datosExistentes = readtable(archivoExcel, 'Sheet', nombreTabla);
            datosActualizados = [datosExistentes; nuevaFila]; % Añadir la nueva fila
            writetable(datosActualizados, archivoExcel, 'Sheet', nombreTabla); % Sobrescribir la hoja con los datos actualizados
            msg_box = msgbox('Datos guardados correctamente en el archivo Excel.', '¡Hecho!: Excel', 'help');
        else
            % Si el archivo no existe, crear uno nuevo y añadir la fila
            writetable(nuevaFila, archivoExcel, 'Sheet', nombreTabla);
            msg_box = msgbox('Archivo creado y datos guardados correctamente en el archivo Excel.', '¡Hecho!: Excel', 'help');
        end

        % Temporizador para cerrar el msgbox después de 3 segundos
        t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box)); 
        start(t);

    catch ME
        % Manejo de errores
        if strcmp(ME.identifier, 'MATLAB:table:write:FileOpenError')
            msgbox('Error: El archivo Excel está abierto. Por favor, ciérralo y vuelve a intentarlo.', 'Error: Excel', 'error');
        else
            msgbox(['Error: ', ME.message], 'Error: Excel', 'error');
        end
        logError(ME.message); % Guardar el error en un log
    end

    %EXCEL: ACTUALIZACION Y ALMACENAMIENTO POR PAQUETE---------------------
    %----------------------------------------------------------------------
    if paquete > 0
        % Llamar a la función para guardar en el archivo correspondiente
        guardarExcelPorPaquete(paquete, nombreTabla, nuevaFila);
    else
        msgbox(['Error: ', ME.message], 'Error: Excel por Paquetes', 'error');
    end
    
    
    %TINGHSPEAK: VIZUALIZACION Y ALMACENAMIENTO----------------------------
    %----------------------------------------------------------------------
    try
        url = sprintf('https://api.thingspeak.com/update?api_key=%s&field1=%f&field2=%f&field3=%f&field4=%f', ... 
                      writeAPIKey, excel_velocidad_medida, excel_jitter, excel_latencia, excel_disponibilidad);  % Construcción de la URL
        response = webread(url); % Envío de los datos al servidor
        
        if str2double(response) > 0 % Validación de la respuesta
             msg_box=msgbox(['Datos enviados con éxito a ThingSpeak: ' num2str(response)], '¡Hecho!: ThingSpeak', 'help');   % Mostrar mensaje de éxito
             
             t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box));           % Temporizador para cerrar el msgbox después de 2 segundos
             start(t);
        else
             msgbox('Error en el envío de datos a ThingSpeak:', 'Error: ThingSpeak', 'error');   % Mostrar mensaje de éxito
        end
        
    catch ME
         msgbox('Ocurrió un error en ThingSpeak', 'Error: ThingSpeak', 'error');   % Mostrar mensaje de error
       % t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box));           % Temporizador para cerrar el msgbox después de 2 segundos
        %start(t);
        logError(ME.message);
    end


    %BASE DE DATOS: ACTUALIZACION Y ALMACENAMIENTO-------------------------
    %----------------------------------------------------------------------

    % Parámetros de conexión
    dbHost = 'wdc.domcloud.co';
    dbPort = '3306';
    dbName = 'Nombre-BD';
    dbUser = 'Usuario-BD';
    dbPassword = 'Contraseña-BD';

    % URL de conexión JDBC
    url = ['jdbc:mysql://', dbHost, ':', dbPort, '/', dbName, '?useSSL=false&serverTimezone=UTC'];

    % Cargar el driver JDBC
    %javaaddpath('D:/Electronica Y Telecomunicaciones/Mega Red/app matlab/mysql-connector-j-9.1.0.jar');
    %javaaddpath(fullfile(ctfroot, 'mysql-connector-j-9.1.0.jar'));

    % Configurar el classpath para el conector MySQL
    if isdeployed % Si está compilado
        javaaddpath(fullfile(ctfroot, 'mysql-connector-j-9.1.0.jar'));     % Usar el directorio base del entorno compilado
    else % En desarrollo 
        projectRoot = fileparts(mfilename('fullpath'));                    % Obtener la ruta del directorio del script actual
        javaaddpath(fullfile(projectRoot, 'mysql-connector-j-9.1.0.jar')); % Agregar el conector MySQL desde una ruta relativa
    end

    % Establecer conexión
    try
        conn = java.sql.DriverManager.getConnection(url, dbUser, dbPassword);
         msg_box=msgbox('Conexión exitosa a la Base de Datos.', '¡Hecho!:Conexión BD', 'help');% Mostrar mensaje de éxito
         t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box)); % Temporizador para cerrar el msgbox después de 2 segundos
         start(t); 
    catch ME     
        msgbox(['Error al conectar a la Base de Datos: ', ME.message], 'Error: Conexión BD ', 'error'); % Si ocurre un error de conexión, mostrar una notificación de error
        logError(ME.message);
    end



    % Crear la consulta SQL con los valores correctos
    sqlquery = sprintf(['INSERT INTO usuarios (fecha, nombre, paquete, velocidad_paquete, velocidad_medida, jitter, latencia, disponibilidad) ' ...
                        'VALUES (''%s'', ''%s'', %d, %f, %f, %f, %f, %f)'], ...
                        excel_fecha, excel_nombre, excel_paquete, excel_velocidad_paquete, excel_velocidad_medida, excel_jitter, excel_latencia, excel_disponibilidad);

    % Ejecutar el query
    try
        stmt = conn.createStatement();  % Crear el statement
        stmt.executeUpdate(sqlquery);   % Ejecutar el INSERT INTO
        stmt.close();                   % Cerrar el statement
        
         msg_box = msgbox('BD: Datos insertados correctamente.', '¡Hecho!: Base de Datos', 'help');% Mostrar mensaje de éxito
         t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box));          % Temporizador para cerrar el msgbox después de 2 segundos
         start(t);
         
    catch ME                                                                     % Si ocurre un error al insertar los datos, mostrar una notificación de error
        msgbox(['BD:Error al insertar los datos: ', ME.message], 'Error: Base de Datos', 'error');
        logError(ME.message);
    end

    % Cerrar conexión si existe
    try
        if exist('conn', 'var') && ~isempty(conn)
            conn.close();
%             disp('Conexión cerrada.');
        end
    catch ME
%         disp('Error al cerrar la conexión:');
%         disp(ME.message);
        logError(ME.message);
    end
    


% --- Executes on button press in pb_limpiar.
function pb_limpiar_Callback(hObject, eventdata, handles)
set(handles.et_latencia, 'String'," ");
set(handles.et_jitter, 'String'," ");
set(handles.et_vbajada, 'String'," ");
set(handles.st_respuesta, 'String'," ");
set(handles.et_nom_cliente, 'String'," ");
set(handles.st_vel, 'BackgroundColor', [1 1 1]);
set(handles.st_vel, 'String'," ");
set(handles.st_jitt, 'BackgroundColor', [1 1 1]);
set(handles.st_jitt, 'String'," ");
set(handles.st_lat, 'BackgroundColor', [1 1 1]);
set(handles.st_lat, 'String'," ");
set(handles.st_disponibilidad, 'String'," ");
set(handles.st_disponibilidad, 'BackgroundColor', [1 1 1]);
set(handles.et_mi, 'String'," ");
set(handles.et_mf, 'String'," ");
set(handles.et_hi, 'String'," ");
set(handles.et_hf, 'String'," ");
set(handles.et_si, 'String'," ");
set(handles.et_sf, 'String'," ");

% GUARDAR EXCEL POR PAQUETE
%-------------------------------------------------------------------------------------------------
function guardarExcelPorPaquete(paquete, nombreTabla, nuevaFila)
    % Definir el nombre del archivo según el paquete
    archivoExcel = sprintf('Plan_%d.xlsx', paquete);
    
    % Verificar si el archivo Excel ya existe
    try
        if isfile(archivoExcel)
            % Si el archivo existe, leer los datos existentes y añadir la nueva fila
            datosExistentes = readtable(archivoExcel, 'Sheet', nombreTabla);
            datosActualizados = [datosExistentes; nuevaFila]; % Añadir la nueva fila
            writetable(datosActualizados, archivoExcel, 'Sheet', nombreTabla); % Sobrescribir la hoja con los datos actualizados
            msg_box = msgbox(sprintf('Datos guardados correctamente en el archivo Plan_%d.xlsx.', paquete), '¡Hecho!: Excel', 'help');
        else
            % Si el archivo no existe, crear uno nuevo y añadir la fila
            writetable(nuevaFila, archivoExcel, 'Sheet', nombreTabla);
            msg_box = msgbox(sprintf('Archivo Plan_%d.xlsx creado y datos guardados correctamente.', paquete), '¡Hecho!: Excel', 'help');
        end

        % Temporizador para cerrar el msgbox después de 3 segundos
        t = timer('StartDelay', 3, 'TimerFcn', @(~, ~)delete(msg_box)); 
        start(t);

    catch ME
        % Manejo de errores
        if strcmp(ME.identifier, 'MATLAB:table:write:FileOpenError')
            msgbox('Error: El archivo Excel está abierto. Por favor, ciérralo y vuelve a intentarlo.', 'Error: Excel', 'error');
        else
            msgbox(['Error: ', ME.message], 'Error: Excel', 'error');
        end
        logError(ME.message); % Guardar el error en un log
    end

% CONTROL DE ERRORES
function logError(errorMessage)
    
    logFile = 'error_log.txt';% Especificar el archivo donde se guardarán los errore   
    timestamp = datestr(now, 'yyyy-mm-dd HH:MM:SS');  % Obtener la hora y fecha actual   
    formattedMessage = sprintf('[%s] %s\n', timestamp, errorMessage); % Formatear el mensaje de error
    fid = fopen(logFile, 'a'); % Abrir el archivo en modo "append" y escribir el mensaje
    if fid == -1
        warning('No se pudo abrir el archivo de log.');
        return;
    end
    fprintf(fid, '%s', formattedMessage);
    fclose(fid);


% --- Executes during object creation, after setting all properties.
function varargout = ax_principal_OutputFcn(hObject, eventdata, handles)

% hObject    handle to ax_principal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate ax_principal
varargout{1} = handles.output;



function et_hi_Callback(hObject, eventdata, handles)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% hObject    handle to et_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_hi as text
%        str2double(get(hObject,'String')) returns contents of et_hi as a double


% --- Executes during object creation, after setting all properties.
function et_hi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_hi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_hf_Callback(hObject, eventdata, handles)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% hObject    handle to et_hf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_hf as text
%        str2double(get(hObject,'String')) returns contents of et_hf as a double


% --- Executes during object creation, after setting all properties.
function et_hf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_hf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_mi_Callback(hObject, eventdata, handles)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% hObject    handle to et_mi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_mi as text
%        str2double(get(hObject,'String')) returns contents of et_mi as a double


% --- Executes during object creation, after setting all properties.
function et_mi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_mi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_mf_Callback(hObject, eventdata, handles)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% hObject    handle to et_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_mf as text
%        str2double(get(hObject,'String')) returns contents of et_mf as a double


% --- Executes during object creation, after setting all properties.
function et_mf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_mf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_si_Callback(hObject, eventdata, handles)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% hObject    handle to et_si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_si as text
%        str2double(get(hObject,'String')) returns contents of et_si as a double


% --- Executes during object creation, after setting all properties.
function et_si_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_sf_Callback(hObject, eventdata, handles)
% hObject    handle to et_sf (see GCBO)
    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_sf as text
%        str2double(get(hObject,'String')) returns contents of et_sf as a double


% --- Executes during object creation, after setting all properties.
function et_sf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on et_jitter and none of its controls.
function et_jitter_KeyPressFcn(hObject, eventdata, handles)
    % Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end

% hObject    handle to et_jitter (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function et_vbajada_Callback(hObject, eventdata, handles)

    % Verificar y eliminar cualquier carácter no numérico
    contenido_actual = get(hObject, 'String');
    contenido_numerico = regexprep(contenido_actual, '[^\d]', ''); % Eliminar no numéricos
    if ~strcmp(contenido_actual, contenido_numerico)
        beep; % Sonido de error si se corrigió algo
    end
    set(hObject, 'String', contenido_numerico);

% hObject    handle to et_vbajada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_vbajada as text
%        str2double(get(hObject,'String')) returns contents of et_vbajada as a double


% --- Executes on key press with focus on et_vbajada and none of its controls.
function et_vbajada_KeyPressFcn(hObject, eventdata, handles)
    % Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_vbajada (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_latencia and none of its controls.
function et_latencia_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_latencia (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_hi and none of its controls.
function et_hi_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_hi (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_mi and none of its controls.
function et_mi_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_mi (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_si and none of its controls.
function et_si_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to et_si (see GCBO)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_hf and none of its controls.
function et_hf_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_hf (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_mf and none of its controls.
function et_mf_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_mf (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_sf and none of its controls.
function et_sf_KeyPressFcn(hObject, eventdata, handles)
% Captura la tecla presionada
    tecla = eventdata.Character;

    % Permitir solo números y teclas especiales (borrar, retroceso, enter, tab)
    if ~isempty(tecla) && ~ismember(tecla, '0123456789') && ~ismember(eventdata.Key, {'backspace', 'delete', 'return', 'tab'})
        beep; % Emitir sonido de error
        % Ignorar el carácter (eliminarlo de la entrada actual)
        set(hObject, 'String', regexprep(get(hObject, 'String'), '[^\d]', ''));
    end
% hObject    handle to et_sf (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on et_nom_cliente and none of its controls.
function et_nom_cliente_KeyPressFcn(hObject, eventdata, handles)
   % Capturar la tecla presionada
    key = eventdata.Key;
    
    % Si la tecla presionada es una letra, convertirla a mayúsculas
    if ismember(key, {'a':'z', 'A':'Z'})
        % Convertir a mayúscula si es una letra
        new_key = upper(key);
        % Actualizar el texto en el edit text con la tecla convertida
        current_text = get(hObject, 'String');
        set(hObject, 'String', [current_text(1:end-1), new_key]);
    end
% hObject    handle to et_nom_cliente (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to et_nom_cliente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_nom_cliente as text
%        str2double(get(hObject,'String')) returns contents of et_nom_cliente as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_nom_cliente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
