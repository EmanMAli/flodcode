F=firstimg;
f2=secondimg;
f3=thirdimg;

BW = im2bw(F);
 BW1=double(BW);
 imshow(BW1);
 
BW2 = im2bw(f2);
 BW22=double(BW2);
 imshow(BW22);
 
BW3 = im2bw(f3);
 BW33=double(BW3);
 imshow(BW33);
 
 
subplot(1,3,1), imshow(BW1)
subplot(1,3,2), imshow(BW22)
subplot(1,3,3), imshow(BW33)

White_pix=0;
 Black_pix=0;
 
 White_pix1=0;
 Black_pix1=0;
 
 White_pix2=0;
 Black_pix2=0;
 
 dif=0;
 xmax=512;
 ymax=512;
 
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
for j=1:(xmax)-1
    for i=1:(ymax)-1
        if BW22(i,j)==0
            White_pix1=White_pix1+1;
        else
            Black_pix1=Black_pix1+1;
        end
    end
end
 

 for j=1:(xmax)-1
    for i=1:(ymax)-1
        if BW33(i,j)==0
            White_pix2=White_pix2+1;
        else
            Black_pix2=Black_pix2+1;
        end
    end
 end

 
  for j=1:(xmax)-1
    for i=1:(ymax)-1
        if BW1(i,j)==BW22(i,j)
            dif=dif+1;
       
        end
    end
  end
 
 ratio= Black_pix1/Black_pix*100
 mess="the difference ratio between the same region in the first year and the second year is   " + ratio;
  
 for j=1:(xmax)-1
    for i=1:(ymax)-1
        if BW22(i,j)==BW33(i,j)
            dif=dif+1;
       
        end
    end
  end
 
 ratio= Black_pix2/Black_pix1*100
 mess=mess+"and the difference ratio in the second year and the third year " + ratio;
 msgbox (mess)