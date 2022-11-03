clear all;
close all;

pkg load image

I=imread("imof.jpg");
I=imrotate(I,-90);
figure
imshow(I);
Ig=rgb2gray(I);
figure
imshow(Ig);
Ig1=Ig(:,1000:2000);
imshow(Ig1);
BW=edge(Ig1,"log");
figure
imshow(BW);
[H, theta, rho] = hough (BW);
figure, imshow (mat2gray (H), [], "XData", theta, "YData", rho);
title ("Hough transform of edge image \n 2 peaks marked");
axis on; xlabel("theta [degrees]"); ylabel("rho [pixels]");
peaks = houghpeaks (H, 2);
peaks_rho = rho(peaks(:,1));
peaks_theta = theta(peaks(:,2));
hold on; plot (peaks_theta, peaks_rho, "sr"); hold off;
lines = houghlines (BW, theta, rho, peaks);
 figure, imshow (Ig1), hold on;
 for n = 1:length (lines)
    points = [lines(n).point1; lines(n).point2];
    plot (points(:,1), points(:,2), "r");
 endfor
 title ("the two strongest lines (edges) in the image"), hold off;
