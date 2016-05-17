wally1=imread('wally_big2.jpg');
NewWally=rgb2gray(wally1);
figure(4);clf
imshow(NewWally);
CroppedWally=imread('wally_mid3.png');
NewFace=rgb2gray(CroppedWally);
figure(3);
imshow(NewFace);
cc=normxcorr2(NewFace,NewWally);
figure(5);
surf(cc), shading flat;
[max_c,imax]=max(abs(cc(:)));
[ypeak,xpeak]=ind2sub(size(cc),imax(1));
figure(1);
imshow(NewWally);
hold on;
rectangle('Position',[(xpeak-25) (ypeak-25) 50 50],'LineWidth',2,'EdgeColor','b');