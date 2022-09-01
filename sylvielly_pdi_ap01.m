%PROCESSAMENTO DIGITAL DE IMAGENS
%AUTHOR: SYLVIELLY S SOUSA
%ENGENHARIA DE CONTROLE E AUTOMACAO - IFCE CAMPUS MARACANAU
%MATRICULA: 20162045070410

%AVALIACAO AP 01 

%carregamento e rotacionar
img = imread("photo.jpg");          %carrega imagem        
img_rot = imrotate(img,0);        %rotacionar imagem

%plotagem da imagem sem processamento
figure(1)
subplot(1,1,1)
title("Imagem antes do processamento");
imshow(img_rot);
grid on

%trasnformar em escala de cinza
img_gray = rgb2gray(img_rot);
figure(2)
subplot(1,1,1)
title("Imagem em escala cinza");
imshow(img_gray);
grid on

%redimensionar a imagem
img_gray_red = imresize(img_gray,0.5);          
figure(3)
subplot(1,1,1)
title("Imagem em escala cinza e redimensionada");
imshow(img_gray_red);
grid on
