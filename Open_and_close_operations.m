img=imread('cameraman.jpg');%��ȡԭʼͼ��
se_1=strel('square',3);
se_2=strel('disk',5);
subplot(231);imshow(img);title('ԭʼͼ��');
img_w=im2bw(img,graythresh(img));%��ֵ������
subplot(232);imshow(img_w);title('��ֵ������ͼ��');
img_1=imopen(img_w,se_1);%������
subplot(233);imshow(img_1);title('se_1������');
img_2=imclose(img_w,se_1);%������
subplot(234);imshow(img_2);title('se_1������');
img_3=imopen(img_w,se_2);%������
subplot(235);imshow(img_1);title('se_2������');
img_4=imclose(img_w,se_2);%������
subplot(236);imshow(img_2);title('se_2������');