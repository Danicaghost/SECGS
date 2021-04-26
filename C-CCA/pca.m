% load ('E:\study\my01\clustercca\sum\1\SR50SRXT50.mat');
% load('E:\study\my01\mat\REAL\resnet50R.mat');
load('E:\study\my01\mat\REAL\seresnet50Rn2.mat');
X=seresnet50Rn2;
%���һά
K = 500;
%�����ݹ�һ��
means = mean(X);
X_means = bsxfun(@minus, X, means);
sigma = std(X_means);
X_std = bsxfun(@rdivide, X_means, sigma);
%����ԭʼ����
scatter(X_std(:,1), X_std(:,2),'ro');
hold on;
[m n] = size(X);
%�����ά��һά�ı任����
sigma = 1/m * X_std' * X_std;
U = zeros(n);
%UΪ�����������ɵ�n*n����SΪ�ԽǾ��󣬶Խ����ϵ�Ԫ��Ϊ����ֵ
[U S D] = svd(sigma);
U_reduce = U(:,1:K);
Z = X_std * U_reduce;
X_rec = Z * U_reduce';
save('E:\study\my01\clustercca\sum\1\seresnet50Rn2_500.mat','Z');
csvwrite('E:\study\my01\clustercca\sum\1\seresnet50Rn2_500.csv',Z);
scatter(X_rec(:,1), X_rec(:,2),'bo');
%��ԭ���ݺͽ�ά������ݼ�����
for i = 1 : m
    plot([X_std(i,1) X_rec(i, 1)], [X_std(i, 2) X_rec(i, 2)], 'k');
end;
[c, cc] = min(X(:,1));
[d, dd] = max(X(:,1));
plot([X_rec(cc,1) X_rec(dd, 1)], [X_rec(cc,2) X_rec(dd, 2)], 'b');
axis([-3 3 -3 3]);
