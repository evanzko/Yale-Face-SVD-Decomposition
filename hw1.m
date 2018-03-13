clear all; close all; clc

% A1 = double(imread('yaleB01_P00A+000E+00','pgm'));
% subplot(2,3,1),pcolor(flipud(A1)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% A2 = double(imread('yaleB01_P00A+000E+20','pgm'));
% subplot(2,3,2),pcolor(flipud(A2)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% A3 = double(imread('yaleB01_P00A+000E+45','pgm'));
% subplot(2,3,3),pcolor(flipud(A3)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% A4 = double(imread('yaleB01_P00A+000E+90','pgm'));
% subplot(2,3,4),pcolor(flipud(A4)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% A5 = double(imread('yaleB01_P00A+000E-20','pgm'));
% subplot(2,3,5),pcolor(flipud(A5)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% A6 = double(imread('yaleB01_P00A+000E-35','pgm'));
% subplot(2,3,6),pcolor(flipud(A6)), shading interp, colormap(gray),set(gca,'Xtick',[],'Ytick',[])
% 
% D = [reshape(A1,1,192*168)
%         reshape(A2,1,192*168)
%         reshape(A3,1,192*168)
%         reshape(A4,1,192*168)
%         reshape(A5,1,192*168)
%         reshape(A6,1,192*168)];
% C = (D')*D;

%%
cd
folderList = dir('./CroppedYale');
for i = 3:length(folderList)
    imglist = dir(strcat('./CroppedYale/',folderList(i).name));
    if ~isempty(imglist)
        for j = 3:length(imglist)
            imglist(j).name
            [X,map] = imread(strcat('./CroppedYale/',folderList(i).name,'/',imglist(j).name));
        end
    end
end
% for k = 1:L
%     fname = folders(k).name
% end