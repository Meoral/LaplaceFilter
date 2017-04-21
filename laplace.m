clc,clear;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=[0,1,0;                      %laplaceÂË²¨Æ÷
    1,-4,1;
    0,1,0];
resultPic=myFilter(h1,originalPic);
subplot(1,2,1),imshow(originalPic),title('\fontsize{16}Ô­Ê¼Í¼Æ¬');
subplot(1,2,2),imshow(resultPic),title('\fontsize{16}À­ÆÕÀ­Ë¹ÂË²¨Í¼Æ¬');
set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');