img=imread('cameraman.jpg');%��ȡԭʼͼ��
[a,b]=imread('cameraman.jpg');%��ȡԭʼͼ��ת��Ϊ��ֵͼ��
img_double=im2bw(a,b,0.5);
se_1= [0 1 0
      1 1 1
      0 1 0]; 
se_2= [0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0
       0  1  1 0 0];

img_1=bwhitmiss(img_double,se_1);%se_1����/�����б任
img_2=bwhitmiss(img_double,se_2);%se_2����/�����б任
subplot(221);imshow(img);title('ԭʼͼ��');
subplot(222);imshow(img_double);title('��ֵͼ��');
subplot(223);imshow(img_1);title('se_1����/�����б任');
subplot(224);imshow(img_2);title('se_2����/�����б任');
