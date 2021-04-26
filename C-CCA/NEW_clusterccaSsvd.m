%%
clc;
clear;
% global train_a
% global train_b
global unq_a_label
global unq_b_label
global card_a
global card_b
global Cxx
global Cyy
global train_a_mean
global train_b_mean
global Cxy
global Cyx
global Wx
global Wy
global r
global m
global c
global d
global mu_x
global mu_y
global trainX
global trainY
global testX
global testY
global test_index
global train_index
global trainZ1
global testZ1
global r
% global U
% global V
% global r
% global A
% global B


load('../MLABELDCA.mat');
load('../3DCAMTEST.mat');
test = test3;

label = mattrsetdca';
% create saving path
% save_path= 'E:\study\my01\clustercca\55\sum\2\';
save_path= '../mattreset/newclusterCCASVD/SUM/3333/';
% save_path= 'E:\study\my01\DCAF\CCCASUM\1\CLUT\';
if ~exist(save_path,'dir')
    mkdir(save_path);
end



load('../REAL1/resnet50R.mat');
load('../REAL1/resnet152R2.mat');
load('../REAL1/resnet101R2.mat');
load('../REAL1/resnetxt50R.mat');
load('../REAL1/resnetxt101R.mat');
load('../REAL1/senet154R.mat');
load('../REAL1/seresnet50Rn2.mat');
load('../REAL1/seresnet101R2n.mat');
load('../REAL1/seresnet152R2n.mat');
load('../REAL1/seresnetxt50R.mat');
load('../REAL1/seresnetxt101R.mat');
R152 = resnet152R';
R50 = resnet50R';
R101 = resnet101R';
RXT50 = resnetxt50R';
RXT101 = resnetxt101R';
SE154 = senet154R';
SR152 = seresnet152R';
SR50 = seresnet50Rn2';
SR101 = seresnet101R';
SRXT50 = seresnetxt50R';
SRXT101 = seresnetxt101R';
% D1D2 = importdata('E:\study\my01\DCAF\CCCACON\1\D1D2_0.csv')';
feature_list = {'R50','RXT101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','SR50'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R101','SR101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R152','SR152'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'RXT101','SRXT101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'RXT50','SRXT50'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'SR50','SRXT50'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'SR101','SRXT101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','RXT50'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R101','RXT101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','SR101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','SR152'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','R101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'R50','R152'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'SR50','SR101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'SR50','SR152'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
feature_list = {'SR50','SRXT101'};
len = length(feature_list);
for i=1:len-1
    for j=i+1:len
        fprintf("dca fuse %s : %s  \n",feature_list{i},feature_list{j});
        new_feature_name = [feature_list{i} feature_list{j}];
        X= eval(feature_list{i});
        Y = eval(feature_list{j});
        fused_feature = getclusterccaSnewsvd(X,Y,label,test)';
        eval([new_feature_name '=fused_feature;']);
        savepath = [save_path new_feature_name ];
        fprintf("save path : %s\n",savepath);
        save(savepath,new_feature_name);
        csvwrite([savepath '.csv'],eval(new_feature_name));
        %     fprintf("i:%.0f len: %.0f\n",kk, len_kk);
    end
end
