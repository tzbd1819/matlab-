img=imread('test.bmp');% ��ȡͼ�� 
figure;imshow(img);
img_0=rgb2gray(img);%  ��ɫͼ��ҶȻ�
img_1=edge(img_0,'sobel'); %��SOBEL���ӽ��б�Ե��� 
img_2=edge(img_0,'roberts');%��Roberts���ӽ��б�Ե��� 
img_3=edge(img_0,'log'); %��log���ӽ��б�Ե��� 
img_4=edge(img_0,'canny'); %��canny���ӽ��б�Ե��� 
figure;
subplot(221);imshow(img_1);title('SOBEL���ӽ��б�Ե���');
subplot(222);imshow(img_2);title('��Roberts���ӽ��б�Ե���');
subplot(223);imshow(img_3);title('��log���ӽ��б�Ե���');
subplot(224);imshow(img_4);title('��canny���ӽ��б�Ե���');