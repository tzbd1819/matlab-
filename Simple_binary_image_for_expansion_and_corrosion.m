img=imread('outline.tif');%��ȡԭʼͼ��
se_1= strel('square',3);
se_2= [0 1 0
      1 1 1
      0 1 0]; 
se_3= [0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0];
%���ͼ��Ϊ��ɫͼ�����ת��Ϊ�Ҷ�ͼ��img_r=rgb2gray(img);%ת��Ϊ�Ҷ�ͼ��
img_1=imdilate(img,se_1);%���ʹ���
img_2=imerode(img,se_1);%��ʴ����
subplot(331);imshow(img);title('ԭʼͼ��');
subplot(332);imshow(img_1);title('se_1���ʹ���ͼ��');
subplot(333);imshow(img_2);title('se_1��ʴ����ͼ��');
img_3=imdilate(img,se_2);%���ʹ���
img_4=imerode(img,se_2);%��ʴ����
subplot(334);imshow(img);title('ԭʼͼ��');
subplot(335);imshow(img_3);title('se_2���ʹ���ͼ��');
subplot(336);imshow(img_4);title('se_2��ʴ����ͼ��');
img_5=imdilate(img,se_3);%se_3���ʹ���
img_6=imerode(img,se_3);%se_3��ʴ����
subplot(337);imshow(img);title('ԭʼͼ��');
subplot(338);imshow(img_5);title('se_3���ʹ���ͼ��');
subplot(339);imshow(img_6);title('se_3��ʴ����ͼ��');