% load ('E:\study\my01\clustercca\sum\1\SR50SRXT50.mat');
% load('E:\study\my01\mat\REAL\resnet50R.mat');
load('E:\study\my01\mat\REAL\seresnet50Rn2.mat');
X=seresnet50Rn2;
%变成一维
K = 500;
%对数据归一化
means = mean(X);
X_means = bsxfun(@minus, X, means);
sigma = std(X_means);
X_std = bsxfun(@rdivide, X_means, sigma);
%绘制原始数据
scatter(X_std(:,1), X_std(:,2),'ro');
hold on;
[m n] = size(X);
%计算二维到一维的变换矩阵
sigma = 1/m * X_std' * X_std;
U = zeros(n);
%U为特征向量构成的n*n矩阵，S为对角矩阵，对角线上的元素为特征值
[U S D] = svd(sigma);
U_reduce = U(:,1:K);
Z = X_std * U_reduce;
X_rec = Z * U_reduce';
save('E:\study\my01\clustercca\sum\1\seresnet50Rn2_500.mat','Z');
csvwrite('E:\study\my01\clustercca\sum\1\seresnet50Rn2_500.csv',Z);
scatter(X_rec(:,1), X_rec(:,2),'bo');
%在原数据和降维后的数据间连线
for i = 1 : m
    plot([X_std(i,1) X_rec(i, 1)], [X_std(i, 2) X_rec(i, 2)], 'k');
end;
[c, cc] = min(X(:,1));
[d, dd] = max(X(:,1));
plot([X_rec(cc,1) X_rec(dd, 1)], [X_rec(cc,2) X_rec(dd, 2)], 'b');
axis([-3 3 -3 3]);
