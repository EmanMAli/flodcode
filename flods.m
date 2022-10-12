clc;
clear;
%set base directory of irisBasis directory
dourcedir = 'G:\flods\img';
clc;
T=[];
flodimg = dir(dourcedir);
x=1;y=1;z=1;

for i=1:size(flodimg,1)
if not(strcmp(flodimg(i).name,'.')|strcmp(flodimg(i).name,'..'))
flodfilename = [dourcedir, '\', flodimg(i).name];
F=imread(flodfilename);
xmax=512;
 ymax=512;
 BW = im2bw(F);
 BW1=double(BW);
 White_pix=0;
 Black_pix=0;
 Floc=0;
 for j=1:(xmax)-1
    for i=1:(ymax)-1
        if BW1(i,j)==0
            White_pix=White_pix+1;
        else
            Black_pix=Black_pix+1;
        end
    end
 end
  Black_pix
  White_pix


subplot(1,1,1);
imagesc(F);
subplot(2,2,2);
imagesc(BW1);
end
end





