clear globals; close all; clc
matrix = ones(192*168,2414); 
folderList = dir('./CroppedYale');
for i = 3:length(folderList)
    imglist = dir(strcat('./CroppedYale/',folderList(i).name));
    if ~isempty(imglist)
        for j = 3:length(imglist)
            imglist(j).name;
            [X,map] = imread(strcat('./CroppedYale/',folderList(i).name,'/',imglist(j).name));
            dX = double(X);
            rX = reshape(dX,192*168,1);
            matrix(:,(i-2)*(j-2)) = rX;
        end
    end
end
[u,s,v] = svd(matrix);
%%
q = 1-diag(s);
figure(1)
plot(q(1:100)/sum(q(1:100)),'ro')

%%
A1 = reshape(matrix(:,1),192,168);
figure(2)
subplot(2,2,1),pcolor(flipud(A1)), shading interp,set(gca,'Xtick',[],'Ytick',[])

for j=1:3
   ff = u(:,1:j)*s(1:j,1:j)*v(:,1:j).';
   subplot(2,2,j+1)
   pcolor(flipud(ff)), shading interp,set(gca,'Xtick',[],'Ytick',[])
end

%%
aa = u(:,1:955)*s(1:955,1:955)*v(:,1:955).';
figure(3),pcolor(flipud(ff)), shading interp,set(gca,'Xtick',[],'Ytick',[])
