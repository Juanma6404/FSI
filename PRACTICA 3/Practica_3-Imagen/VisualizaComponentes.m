function img_comp = VisualizaComponentes(imc)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %
    % Funcion que visualiza componentes (R,G,B) %
    % en su color original. %
    % %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    imR = imc;
    imG = imc;
    imB = imc;

    imY = imc;
    imM = imc;
    imC = imc;% Inicio
%     imR(:,:,[2 3]) = 0; % Parte roja
%     imG(:,:,[1 3]) = 0; % Parte verde
%     imB(:,:,[1 2]) = 0; % Parte azul
    %img_comp = [imc imR imG imB]; % Concatenar imagenes

    imY(:,:,3) = 0; % Parte roja
    imM(:,:,2) = 0; % Parte verde
    imC(:,:,1) = 0; % Parte azul

    img_comp = [imc imY imM imC];
    imshow(img_comp); % Display


    %IMREAD,IM2DOUBLE---IM1 0 A 255 IM2 DE 0 A 1

    %.BMP IMAGEN RGB N FILAS Y M COLUMNAS---HACES IMREAD NXMX3

    %ESCALA DE GRISES Y HACES IMREAD ----ENTRE 0 Y 255

    %Si el archivo "imagen.bmp" contiene una imagen RGB tras ejecutar los comandos:
    %im3 = imread('imagen.bmp');
    %G = im3(:,:,1);
    %R = im3(:,:,2);
    %B = im3(:,:,3);---------G contendrá la componente roja de la imagen


    %El siguiente código, siendo "imagen.bmp" una imagen RGB:
    %imc = imread("imagen.bmp");
    %imR = imc;
    %imR(:,:,[2]) = 0;
    %figure
    %imshow(imR)-----Muestra las componentes rojas y azules de la imagen


    %IM2=2*IM1()---------MAYOR CONTRASTE(IM1 ESCALA DE GRISES FORMATO DOUBLE)


end