clc
clear all
close all


%% LEctura de imágen 
img = imread("neom-kXbit_yx8t4-unsplash.jpg");
% figure(1)
% imshow(img)

%% Extraccion de canales
img_R = img;        % Red
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;

img_G = img;        % Red
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;

img_B = img;        % Red
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;

figure(2)
imshow([img_R,img_G,img_B])

%% operaciones con imagenes
comb_1 = img_R + img_B;
figure(3)
imshow(comb_1)

comb_2 = img_R + img_G;
figure(4)
imshow(comb_2)

comb_3 = img_G + img_B;
figure(5)
imshow(comb_3)

%% Escala de grises
img_gris = rgb2gray(img);
figure(6)
imshow(img_gris);

%% Aumento de brillo

img_brillo = img -100;
figure(7)
imshow(img_brillo);

%% Combinacion de imagenes
img_anillo = imread('ant-rozetsky-Jzf8cyxg76g-unsplash.jpg');
[renglones, columnas, canales] = size(img);
img_anillo = imresize(img_anillo,[renglones, columnas]);

%% Mezclado Alpha
alfa = 0.5;
mezclado = alfa.*img_anillo + (1-alfa).*img;
figure(8)
imshow(mezclado)

imwrite(mezclado, "mezclado.jpg") %Guardar imagenes