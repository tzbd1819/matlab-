img=imread('test.bmp');
img_2=fspecial('prewitt' );
img_d=im2double(img);%��fת��Ϊ��һ����double��ͼ��
img_r_2=imfilter(img_d,img_2,'replicate');%ͼ���Сͨ��������߽��ֵ����չ
img_jia_2=img_d-img_r_2;img_jian_2=img_d+img_r_2;%prewitt����ģ��
figure;
imshow(img);title('ԭʼͼ��');
figure;
subplot(121);imshow(img_jia_2);title('prewitt���ӱ�Ե���');
subplot(122);imshow(img_jian_2);title('prewitt���ӱ�Ե���');