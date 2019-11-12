a_1=imread('test.jpeg');
subplot(331);imshow(a_1);title('ԭͼ');
a_2=rgb2gray(a_1);%�Ҷȱ任
imwrite(a_2,'a_2.jpeg','jpeg');
a_3=imcomplement(a_2);%ȡ������
subplot(332);imshow(a_3);title('�Ҷȷ�ת');
imwrite(a_3,'a_3.jpeg','jpeg');
a_4=log(1+double(a_2));%�����任
subplot(333);imshow(a_4,[]);title('�����任');
imwrite(a_4,'a_4.jpeg','jpeg');
a_5_1=imadjust(a_1,[],[],0.5);
a_5_2=imadjust(a_1,[],[],1.0);
a_5_3=imadjust(a_1,[],[],1.5); 
subplot(334);imshow(a_5_1);title('٤��У��0.5');
subplot(335);imshow(a_5_2);title('٤��У��1.0');
subplot(336);imshow(a_5_3);title('٤��У��1.5');
imwrite(a_5_1,'a_5_1.jpeg','jpeg');
imwrite(a_5_2,'a_5_2.jpeg','jpeg');
imwrite(a_5_3,'a_5_3.jpeg','jpeg');
[a,b] = size(a_1);%����ԭʼͼ���С
a_6=im2double(a_1);%������ͼ��ת��Ϊ˫��������
a_6_zeros=zeros(a,b);%������ԭͼ����ͬ��С�������
x1=(10-0)/(20-0);%��һ�����ߵ�б��
x1=0-x1*0;%����ؾ�1
x2=(180-10)/(130-20);
x3=10-x2*20;
x4=(255-180)/(255-130);
x5=180-x4*130;
[m,n]=size(a_1);
for i=1:m
    for j=1:n
        a_7=a_1(i,j);
        if a_7(a_7<20)
            a_8(i,j)=x1*a_7+x1;
        elseif a_7(a_7>=20)&(a_7<=130)
            a_8(i,j)=x1*a_7+x1;
        else (a_7>=130)&(a_7<=255)
            a_8(i,j)=x4*a_7+x5;
        end
    end
end
figure;imshow(a_8);title('�Ҷȱ任��');
a_7=histeq(a_1);
subplot(338);imshow(a_7);title('ֱ��ͼ���⻯');
imwrite(a_7_1,'a_7_1.jpeg','jpeg');
subplot(339);imhist(a_7);title('ֱ��ͼ'); 
imwrite(a_7_2,'a_5_3.jpeg','jpeg');
