
function out = nonliner_log(Img, pra)
% ͼ������Ա任
% �������Img����ԭͼ��
% �������pra�����߶ȱ���ϵ��
% �������out��������������ͼ��
% �����趨
if nargin == 1
    c = 1;
else
    c = pra(1);
end
% ����ͼ��
I = Img;
if ndims(I) == 3
    % ת���ɻҶ�ͼ��
    I = rgb2gray(I);
end
figure;
subplot(2, 2, 1); imshow(Img); title('ԭͼ')
subplot(2, 2, 2); imhist(I); title('ԭͼ��ֱ��ͼ')
% �������촦��
out = im2uint8(mat2gray(c*log(1+double(I))));
subplot(2, 2, 3); imshow(out, []); title('��������任ͼ��')
subplot(2, 2, 4); imhist(out); title('��������任ͼ��ֱ��ͼ')   
[rows, cols] = size(I); % ͼ��ά��
x = linspace(0, max(rows, cols))+1;
figure;
plot(x, log(x), 'r-')
title('�����任����');
set(gca, 'xticklabel', [], 'yticklabel', []);
xlabel('f(x, y)');
ylabel('g(x, y)');