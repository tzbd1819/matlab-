BW=imread('text.tif');
level=graythresh(BW);
img=im2bw(BW,level);
BW1 = bwmorph(BW,'thin',Inf);
BW2 = bwmorph(BW,'skel',Inf);
subplot(221);imshow(BW);title('ԭʼͼ��');
subplot(222);imshow(img);title('��ֵͼ��');
subplot(223);imshow(BW1);title('�Ǽ���ȡ');
subplot(224);imshow(BW2);title('����ͼ��');
