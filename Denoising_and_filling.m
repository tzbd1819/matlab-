img=imread('noisy_rectangle.tif');%ԭʼͼ��
img_1=im2bw(img);%��ֵ��
img_2=imfill(img_1,'holes');%���ͼ��
img_3=bwareaopen(img_2,5000);%��ͼ�����Ƴ�СĿ��
subplot(221);imshow(img);title('ԭʼͼ��');
subplot(222);imshow(img_1);title('��ֵ��ͼ��');
subplot(223);imshow(img_2);title('���ͼ��');
subplot(224);imshow(img_3);title('��ͼ�����Ƴ�СĿ��');
