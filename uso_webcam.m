clear all
close all
clc

webcamlist();

cam = webcam(1);
img_b = imread("ant-rozetsky-Jzf8cyxg76g-unsplash.jpg");
img_b = imresize(img_b,[1080, 1920]);
alfa = 0.3;

while true

img = snapshot(cam);
mezclado = alfa*img_b + (1-alfa)*img;
figure(1)
imshow(mezclado);
end