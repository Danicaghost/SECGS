clear ; close all; clc
% path = '/DATA/xqp/my01/fabric/newclusterCCAsvd/CON/11/';
% 
pathy = '/DATA/xqp/my01/fabric/score/';
% fileExt = '*.mat';
% files = dir(fullfile(path,fileExt));
% len = size(files,1);
% for i=1:len
%     fileName = strcat(path,files(i,1).name);
%     disp(fileName);
% end
% for i=1:len
%     fileNamex = files(i,1).name(1:end-4);
%     disp(fileNamex);
% end
% % load label
load('../robotjq/savefabric/gist/ALLGistFea.mat', 'feature')
% train = xlsread('../robotjq/scoref/train.xlsx');
% test  = xlsread('../robotjq/scoref/test.xlsx');
% cv = nchoosek(['SR101SR152','SR101SRXT101','SR50SR101','SR50SR152','SR50SRXT101','SR50SRXT50','SRXT101SR152','SRXT50SR101','SRXT50SR152','SRXT50SRXT101'],2);
% disp(cv);
cc_list={'NB','KNN','LR','RF','DT','SVM','GBDT','AdaBoost','XGBoost'};
feature_list={'SR101SR152','SR101SRXT101','SR50SR101','SR50SR152','SR50SRXT101','SR50SRXT50','SRXT101SR152','SRXT50SR101','SRXT50SR152','SRXT50SRXT101'};
% new_list = {'S10S15','S10X10','S5S10','S5S15','S5X10','S5X5','X10S15','X5S10','X5S15','X5X10'};
new_list = {'S1','S2','S3','S4','S5','S6','S7','S8','S9','S10'};

len = length(feature_list);
leno = length(cc_list);
% str=strrep(feature,'cotton','8');str=strrep(str,'Denim','1');str=strrep(str,'Fleece','2');str=strrep(str,'Nylon','3');str=strrep(str,'Polyester','4');str=strrep(str,'silk','9');str=strrep(str,'Terrycloth','5');str=strrep(str,'Viscose','6');str=strrep(str,'Wool','7');
%str=strrep(feature,'neg','1');str=strrep(str,'pos','2');


avg =[];
avg1 = [];
avg2 = [];
avg3 = [];
avg4 = [];
aaxd = [];
tx = combntns(new_list,9);
% for g = 1:453);
txo = combntns(feature_list,9);
lenx = size(tx);
% for i=1:lenx
%     a = tx(i,1);
%     b = tx(i,2);
%     c = tx(i,3);
%     d = tx(i,4);
%     e = tx(i,5);
%     f = tx(i,6);
%     ap = txo(i,1);
%     bp = txo(i,2);
%     cp = txo(i,3);
%     dp = txo(i,4);
%     ep = txo(i,5);
%     fp = txo(i,6);
%     disp(a);
% end

for ggg=1:4
    avgoo = [];
    
%     eval([avgoo '=axd';]);
    for ox=1:leno
        fused={};
        ahj=0;
%         fused = cell(1,45);
        for i=1:lenx
            a = char(tx(i,1));
            b = char(tx(i,2));
            c = char(tx(i,3));
            d = char(tx(i,4));
            e = char(tx(i,5));
            f = char(tx(i,6));
            g = char(tx(i,7));
            h = char(tx(i,8));
            z = char(tx(i,9));
            ap = char(txo(i,1));
            bp = char(txo(i,2));
            cp = char(txo(i,3));
            dp = char(txo(i,4));
            ep = char(txo(i,5));
            fp = char(txo(i,6));
            gp = char(txo(i,7));
            hp = char(txo(i,8));
            zp = char(txo(i,9));
            
            
            ahj=ahj+1;
            ghsd = num2str(ggg*100000+ggg*10000+ggg*1000+ggg*100+ggg*10+ggg*1);
            patho = '/DATA/xqp/my01/fabric/newclusterCCAsvd/CON/';
            pathx = [patho 'f' ghsd '/'];
            disp(pathx);
            pathtr = ['/DATA/xqp/my01/fabric/label/f' num2str(ggg) '_7525_train.xlsx'];
            pathte = ['/DATA/xqp/my01/fabric/label/f' num2str(ggg) '_7525_test.xlsx'];
            train = xlsread(pathtr);
            test  = xlsread(pathte);
            str=strrep(feature,'cotton','8');str=strrep(str,'Denim','1');str=strrep(str,'Fleece','2');str=strrep(str,'Nylon','3');str=strrep(str,'Polyester','4');str=strrep(str,'silk','9');str=strrep(str,'Terrycloth','5');str=strrep(str,'Viscose','6');str=strrep(str,'Wool','7');
            groups=transpose(str2num(cell2mat(str)))';
            label=groups(find(test==1.0));
            fprintf("ergs fuse %s : %s : %s : %s : %s : %s : %s : %s : %s \n",a,b,c,d,e,f,g,h,z);
            new_feature_name = [a '_' b '_' c '_' d '_' e '_' f '_' g '_' h '_' z];
            disp(new_feature_name);
            new_feature_name_path1 = [pathx a '.mat'];
            new_feature_name_path2 = [pathx b '.mat'];
            new_feature_name_path3 = [pathx c '.mat'];
            new_feature_name_path4 = [pathx d '.mat'];
            new_feature_name_path5 = [pathx e '.mat'];
            new_feature_name_path6 = [pathx f '.mat'];
            new_feature_name_path7 = [pathx g '.mat'];
            new_feature_name_path8 = [pathx h '.mat'];
            new_feature_name_path9 = [pathx z '.mat'];
            scorepath1 = [pathy ap '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath2 = [pathy bp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath3 = [pathy cp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath4 = [pathy dp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath5 = [pathy ep '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath6 = [pathy fp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath7 = [pathy gp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath8 = [pathy hp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            scorepath9 = [pathy zp '_' cc_list{ox} '_' num2str(ggg) '_score.mat'];
            score1 = ['abb_score'];
            score2 = ['acc_score'];
            score3 = ['add_score'];
            score4 = ['aee_score'];
            score5 = ['aff_score'];
            score6 = ['agg_score'];
            score7 = ['ahh_score'];
            score8 = ['aii_score'];
            score9 = ['ajj_score'];
            load(new_feature_name_path1);
            load(new_feature_name_path2);
            load(new_feature_name_path3);
            load(new_feature_name_path4);
            load(new_feature_name_path5);
            load(new_feature_name_path6);
            load(new_feature_name_path7);
            load(new_feature_name_path8);
            load(new_feature_name_path9);
            load(scorepath1);
            load(scorepath2);
            load(scorepath3);
            load(scorepath4);
            load(scorepath5);
            load(scorepath6);
            load(scorepath7);
            load(scorepath8);
            load(scorepath9);
            abb = ['abb'];
            eval([abb '=' a ';']);
            acc = ['acc'];
            eval([acc '=' b ';']);
            add = ['add'];
            eval([add '=' c ';']);
            aee = ['aee'];
            eval([aee '=' d ';']);
            aff = ['aff'];
            eval([aff '=' e ';']);
            agg = ['agg'];
            eval([agg '=' f ';']);
            ahh = ['ahh'];
            eval([ahh '=' g ';']);
            aii = ['aii'];
            eval([aii '=' h ';']);
            ajj = ['ajj'];
            eval([ajj '=' z ';']);
            eval([score1 '=' ap '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score2 '=' bp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score3 '=' cp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score4 '=' dp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score5 '=' ep '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score6 '=' fp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score7 '=' gp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score8 '=' hp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
            eval([score9 '=' zp '_' cc_list{ox} '_' num2str(ggg) '_score' ';']);
           % % sort
            accuracy1 = ['sort_accuracy_' ap '_' cc_list{ox} '_' num2str(ggg)];
            cotton1 = ['precision_' ap '_' 'cotton' '_' num2str(ggg)];
            Denim1 = ['precision_' ap '_' 'Denim' '_' num2str(ggg)];
            Fleece1 = ['precision_' ap '_' 'Fleece' '_' num2str(ggg)];
            Nylon1 = ['precision_' ap '_' 'Nylon' '_' num2str(ggg)];
            Polyester1 = ['precision_' ap '_' 'Polyester' '_' num2str(ggg)];
            silk1 = ['precision_' ap '_' 'silk' '_' num2str(ggg)];
            Terrycloth1 = ['precision_' ap '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose1 = ['precision_' ap '_' 'Viscose' '_' num2str(ggg)];
            Wool1 = ['precision_' ap '_' 'Wool' '_' num2str(ggg)];
            accuracy2 = ['sort_accuracy_' bp '_' cc_list{ox} '_' num2str(ggg)];
            cotton2 = ['precision_' bp '_' 'cotton' '_' num2str(ggg)];
            Denim2 = ['precision_' bp '_' 'Denim' '_' num2str(ggg)];
            Fleece2 = ['precision_' bp '_' 'Fleece' '_' num2str(ggg)];
            Nylon2 = ['precision_' bp '_' 'Nylon' '_' num2str(ggg)];
            Polyester2 = ['precision_' bp '_' 'Polyester' '_' num2str(ggg)];
            silk2 = ['precision_' bp '_' 'silk' '_' num2str(ggg)];
            Terrycloth2 = ['precision_' bp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose2 = ['precision_' bp '_' 'Viscose' '_' num2str(ggg)];
            Wool2 = ['precision_' bp '_' 'Wool' '_' num2str(ggg)];
            accuracy3 = ['sort_accuracy_' cp '_' cc_list{ox} '_' num2str(ggg)];
            cotton3 = ['precision_' cp '_' 'cotton' '_' num2str(ggg)];
            Denim3 = ['precision_' cp '_' 'Denim' '_' num2str(ggg)];
            Fleece3 = ['precision_' cp '_' 'Fleece' '_' num2str(ggg)];
            Nylon3 = ['precision_' cp '_' 'Nylon' '_' num2str(ggg)];
            Polyester3 = ['precision_' cp '_' 'Polyester' '_' num2str(ggg)];
            silk3 = ['precision_' cp '_' 'silk' '_' num2str(ggg)];
            Terrycloth3 = ['precision_' cp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose3 = ['precision_' cp '_' 'Viscose' '_' num2str(ggg)];
            Wool3 = ['precision_' cp '_' 'Wool' '_' num2str(ggg)];
            accuracy4 = ['sort_accuracy_' dp '_' cc_list{ox} '_' num2str(ggg)];
            cotton4 = ['precision_' dp '_' 'cotton' '_' num2str(ggg)];
            Denim4 = ['precision_' dp '_' 'Denim' '_' num2str(ggg)];
            Fleece4 = ['precision_' dp '_' 'Fleece' '_' num2str(ggg)];
            Nylon4 = ['precision_' dp '_' 'Nylon' '_' num2str(ggg)];
            Polyester4 = ['precision_' dp '_' 'Polyester' '_' num2str(ggg)];
            silk4 = ['precision_' dp '_' 'silk' '_' num2str(ggg)];
            Terrycloth4 = ['precision_' dp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose4 = ['precision_' dp '_' 'Viscose' '_' num2str(ggg)];
            Wool4 = ['precision_' dp '_' 'Wool' '_' num2str(ggg)];
            accuracy5 = ['sort_accuracy_' ep '_' cc_list{ox} '_' num2str(ggg)];
            cotton5 = ['precision_' ep '_' 'cotton' '_' num2str(ggg)];
            Denim5 = ['precision_' ep '_' 'Denim' '_' num2str(ggg)];
            Fleece5 = ['precision_' ep '_' 'Fleece' '_' num2str(ggg)];
            Nylon5 = ['precision_' ep '_' 'Nylon' '_' num2str(ggg)];
            Polyester5 = ['precision_' ep '_' 'Polyester' '_' num2str(ggg)];
            silk5 = ['precision_' ep '_' 'silk' '_' num2str(ggg)];
            Terrycloth5 = ['precision_' ep '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose5 = ['precision_' ep '_' 'Viscose' '_' num2str(ggg)];
            Wool5 = ['precision_' ep '_' 'Wool' '_' num2str(ggg)];
            accuracy6 = ['sort_accuracy_' fp '_' cc_list{ox} '_' num2str(ggg)];
            cotton6 = ['precision_' fp '_' 'cotton' '_' num2str(ggg)];
            Denim6 = ['precision_' fp '_' 'Denim' '_' num2str(ggg)];
            Fleece6 = ['precision_' fp '_' 'Fleece' '_' num2str(ggg)];
            Nylon6 = ['precision_' fp '_' 'Nylon' '_' num2str(ggg)];
            Polyester6 = ['precision_' fp '_' 'Polyester' '_' num2str(ggg)];
            silk6 = ['precision_' fp '_' 'silk' '_' num2str(ggg)];
            Terrycloth6 = ['precision_' fp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose6 = ['precision_' fp '_' 'Viscose' '_' num2str(ggg)];
            Wool6 = ['precision_' fp '_' 'Wool' '_' num2str(ggg)];
            accuracy7 = ['sort_accuracy_' gp '_' cc_list{ox} '_' num2str(ggg)];
            cotton7 = ['precision_' gp '_' 'cotton' '_' num2str(ggg)];
            Denim7 = ['precision_' gp '_' 'Denim' '_' num2str(ggg)];
            Fleece7 = ['precision_' gp '_' 'Fleece' '_' num2str(ggg)];
            Nylon7 = ['precision_' gp '_' 'Nylon' '_' num2str(ggg)];
            Polyester7 = ['precision_' gp '_' 'Polyester' '_' num2str(ggg)];
            silk7 = ['precision_' gp '_' 'silk' '_' num2str(ggg)];
            Terrycloth7 = ['precision_' gp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose7 = ['precision_' gp '_' 'Viscose' '_' num2str(ggg)];
            Wool7 = ['precision_' gp '_' 'Wool' '_' num2str(ggg)];
            accuracy8 = ['sort_accuracy_' hp '_' cc_list{ox} '_' num2str(ggg)];
            cotton8 = ['precision_' hp '_' 'cotton' '_' num2str(ggg)];
            Denim8 = ['precision_' hp '_' 'Denim' '_' num2str(ggg)];
            Fleece8 = ['precision_' hp '_' 'Fleece' '_' num2str(ggg)];
            Nylon8 = ['precision_' hp '_' 'Nylon' '_' num2str(ggg)];
            Polyester8 = ['precision_' hp '_' 'Polyester' '_' num2str(ggg)];
            silk8 = ['precision_' hp '_' 'silk' '_' num2str(ggg)];
            Terrycloth8 = ['precision_' hp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose8 = ['precision_' hp '_' 'Viscose' '_' num2str(ggg)];
            Wool8 = ['precision_' hp '_' 'Wool' '_' num2str(ggg)];
            accuracy9 = ['sort_accuracy_' zp '_' cc_list{ox} '_' num2str(ggg)];
            cotton9 = ['precision_' zp '_' 'cotton' '_' num2str(ggg)];
            Denim9 = ['precision_' zp '_' 'Denim' '_' num2str(ggg)];
            Fleece9 = ['precision_' zp '_' 'Fleece' '_' num2str(ggg)];
            Nylon9 = ['precision_' zp '_' 'Nylon' '_' num2str(ggg)];
            Polyester9 = ['precision_' zp '_' 'Polyester' '_' num2str(ggg)];
            silk9 = ['precision_' zp '_' 'silk' '_' num2str(ggg)];
            Terrycloth9 = ['precision_' zp '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose9 = ['precision_' zp '_' 'Viscose' '_' num2str(ggg)];
            Wool9 = ['precision_' zp '_' 'Wool' '_' num2str(ggg)];
            [accuracy_GIST_GBDT,precision_GIST_cotton,precision_GIST_Denim,precision_GIST_Fleece,precision_GIST_Nylon,precision_GIST_Polyester,precision_GIST_silk,precision_GIST_Terrycloth,precision_GIST_Viscose,precision_GIST_Wool]=softmian(label,abb_score);
            eval([accuracy1 '=accuracy_GIST_GBDT;']);
            eval([cotton1 '=precision_GIST_cotton;']);
            eval([Denim1 '=precision_GIST_Denim;']);
            eval([Fleece1 '=precision_GIST_Fleece;']);
            eval([Nylon1 '=precision_GIST_Nylon;']);
            eval([Polyester1 '=precision_GIST_Polyester;']);
            eval([silk1 '=precision_GIST_silk;']);
            eval([Terrycloth1 '=precision_GIST_Terrycloth;']);
            eval([Viscose1 '=precision_GIST_Viscose;']);
            eval([Wool1 '=precision_GIST_Wool;']);
            savepathsort1 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy1 '.mat'];
            fprintf("save path sort1 : %s\n",savepathsort1);
            save(savepathsort1,accuracy1,cotton1,Denim1,Fleece1,Nylon1,Polyester1,silk1,Terrycloth1,Viscose1,Wool1);
%                save('../accuracyf/accuracy_GIST_GBDT.mat','accuracy_GIST_GBDT','precision_GIST_cotton','precision_GIST_Denim','precision_GIST_Fleece','precision_GIST_Nylon','precision_GIST_Polyester','precision_GIST_silk','precision_GIST_Terrycloth','precision_GIST_Viscose','precision_GIST_Wool');
            [accuracy_SIFT_GBDT,precision_SIFT_cotton,precision_SIFT_Denim,precision_SIFT_Fleece,precision_SIFT_Nylon,precision_SIFT_Polyester,precision_SIFT_silk,precision_SIFT_Terrycloth,precision_SIFT_Viscose,precision_SIFT_Wool]=softmian(label,acc_score);
            eval([accuracy2 '=accuracy_SIFT_GBDT;']);
            eval([cotton2 '=precision_SIFT_cotton;']);
            eval([Denim2 '=precision_SIFT_Denim;']);
            eval([Fleece2 '=precision_SIFT_Fleece;']);
            eval([Nylon2 '=precision_SIFT_Nylon;']);
            eval([Polyester2 '=precision_SIFT_Polyester;']);
            eval([silk2 '=precision_SIFT_silk;']);
            eval([Terrycloth2 '=precision_SIFT_Terrycloth;']);
            eval([Viscose2 '=precision_SIFT_Viscose;']);
            eval([Wool2 '=precision_SIFT_Wool;']);
            savepathsort2 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy2 '.mat'];
            fprintf("save path sort2 : %s\n",savepathsort2);
            save(savepathsort2,accuracy2,cotton2,Denim2,Fleece2,Nylon2,Polyester2,silk2,Terrycloth2,Viscose2,Wool2);
            [accuracy_HOG_GBDT,precision_HOG_cotton,precision_HOG_Denim,precision_HOG_Fleece,precision_HOG_Nylon,precision_HOG_Polyester,precision_HOG_silk,precision_HOG_Terrycloth,precision_HOG_Viscose,precision_HOG_Wool]=softmian(label,add_score);
            eval([accuracy3 '=accuracy_HOG_GBDT;']);
            eval([cotton3 '=precision_HOG_cotton;']);
            eval([Denim3 '=precision_HOG_Denim;']);
            eval([Fleece3 '=precision_HOG_Fleece;']);
            eval([Nylon3 '=precision_HOG_Nylon;']);
            eval([Polyester3 '=precision_HOG_Polyester;']);
            eval([silk3 '=precision_HOG_silk;']);
            eval([Terrycloth3 '=precision_HOG_Terrycloth;']);
            eval([Viscose3 '=precision_HOG_Viscose;']);
            eval([Wool3 '=precision_HOG_Wool;']);
            savepathsort3 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy3 '.mat'];
            fprintf("save path sort3 : %s\n",savepathsort3);
            save(savepathsort3,accuracy3,cotton3,Denim3,Fleece3,Nylon3,Polyester3,silk3,Terrycloth3,Viscose3,Wool3);

            [accuracy_LBP_GBDT,precision_LBP_cotton,precision_LBP_Denim,precision_LBP_Fleece,precision_LBP_Nylon,precision_LBP_Polyester,precision_LBP_silk,precision_LBP_Terrycloth,precision_LBP_Viscose,precision_LBP_Wool]=softmian(label,aee_score);
            eval([accuracy4 '=accuracy_LBP_GBDT;']);
            eval([cotton4 '=precision_LBP_cotton;']);
            eval([Denim4 '=precision_LBP_Denim;']);
            eval([Fleece4 '=precision_LBP_Fleece;']);
            eval([Nylon4 '=precision_LBP_Nylon;']);
            eval([Polyester4 '=precision_LBP_Polyester;']);
            eval([silk4 '=precision_LBP_silk;']);
            eval([Terrycloth4 '=precision_LBP_Terrycloth;']);
            eval([Viscose4 '=precision_LBP_Viscose;']);
            eval([Wool4 '=precision_LBP_Wool;']);
            savepathsort4 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy4 '.mat'];
            fprintf("save path sort4 : %s\n",savepathsort4);
            save(savepathsort4,accuracy4,cotton4,Denim4,Fleece4,Nylon4,Polyester4,silk4,Terrycloth4,Viscose4,Wool4);

            [accuracy_RMB_GBDT,precision_RMB_cotton,precision_RMB_Denim,precision_RMB_Fleece,precision_RMB_Nylon,precision_RMB_Polyester,precision_RMB_silk,precision_RMB_Terrycloth,precision_RMB_Viscose,precision_RMB_Wool]=softmian(label,aff_score);
            eval([accuracy5 '=accuracy_RMB_GBDT;']);
            eval([cotton5 '=precision_RMB_cotton;']);
            eval([Denim5 '=precision_RMB_Denim;']);
            eval([Fleece5 '=precision_RMB_Fleece;']);
            eval([Nylon5 '=precision_RMB_Nylon;']);
            eval([Polyester5 '=precision_RMB_Polyester;']);
            eval([silk5 '=precision_RMB_silk;']);
            eval([Terrycloth5 '=precision_RMB_Terrycloth;']);
            eval([Viscose5 '=precision_RMB_Viscose;']);
            eval([Wool5 '=precision_RMB_Wool;']);
            savepathsort5 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy5 '.mat'];
            fprintf("save path sort5 : %s\n",savepathsort5);
            save(savepathsort5,accuracy5,cotton5,Denim5,Fleece5,Nylon5,Polyester5,silk5,Terrycloth5,Viscose5,Wool5);

            [accuracy_RCF_GBDT,precision_RCF_cotton,precision_RCF_Denim,precision_RCF_Fleece,precision_RCF_Nylon,precision_RCF_Polyester,precision_RCF_silk,precision_RCF_Terrycloth,precision_RCF_Viscose,precision_RCF_Wool]=softmian(label,agg_score);
            eval([accuracy6 '=accuracy_RCF_GBDT;']);
            eval([cotton6 '=precision_RCF_cotton;']);
            eval([Denim6 '=precision_RCF_Denim;']);
            eval([Fleece6 '=precision_RCF_Fleece;']);
            eval([Nylon6 '=precision_RCF_Nylon;']);
            eval([Polyester6 '=precision_RCF_Polyester;']);
            eval([silk6 '=precision_RCF_silk;']);
            eval([Terrycloth6 '=precision_RCF_Terrycloth;']);
            eval([Viscose6 '=precision_RCF_Viscose;']);
            eval([Wool6 '=precision_RCF_Wool;']);
            savepathsort6 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy6 '.mat'];
            fprintf("save path sort6 : %s\n",savepathsort6);
            save(savepathsort6,accuracy6,cotton6,Denim6,Fleece6,Nylon6,Polyester6,silk6,Terrycloth6,Viscose6,Wool6);

            [accuracy_RTY_GBDT,precision_RTY_cotton,precision_RTY_Denim,precision_RTY_Fleece,precision_RTY_Nylon,precision_RTY_Polyester,precision_RTY_silk,precision_RTY_Terrycloth,precision_RTY_Viscose,precision_RTY_Wool]=softmian(label,agg_score);
            eval([accuracy7 '=accuracy_RTY_GBDT;']);
            eval([cotton7 '=precision_RTY_cotton;']);
            eval([Denim7 '=precision_RTY_Denim;']);
            eval([Fleece7 '=precision_RTY_Fleece;']);
            eval([Nylon7 '=precision_RTY_Nylon;']);
            eval([Polyester7 '=precision_RTY_Polyester;']);
            eval([silk7 '=precision_RTY_silk;']);
            eval([Terrycloth7 '=precision_RTY_Terrycloth;']);
            eval([Viscose7 '=precision_RTY_Viscose;']);
            eval([Wool7 '=precision_RTY_Wool;']);
            savepathsort7 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy7 '.mat'];
            fprintf("save path sort7 : %s\n",savepathsort7);
            save(savepathsort7,accuracy7,cotton7,Denim7,Fleece7,Nylon7,Polyester7,silk7,Terrycloth7,Viscose7,Wool7);

            [accuracy_TYU_GBDT,precision_TYU_cotton,precision_TYU_Denim,precision_TYU_Fleece,precision_TYU_Nylon,precision_TYU_Polyester,precision_TYU_silk,precision_TYU_Terrycloth,precision_TYU_Viscose,precision_TYU_Wool]=softmian(label,agg_score);
            eval([accuracy8 '=accuracy_TYU_GBDT;']);
            eval([cotton8 '=precision_TYU_cotton;']);
            eval([Denim8 '=precision_TYU_Denim;']);
            eval([Fleece8 '=precision_TYU_Fleece;']);
            eval([Nylon8 '=precision_TYU_Nylon;']);
            eval([Polyester8 '=precision_TYU_Polyester;']);
            eval([silk8 '=precision_TYU_silk;']);
            eval([Terrycloth8 '=precision_TYU_Terrycloth;']);
            eval([Viscose8 '=precision_TYU_Viscose;']);
            eval([Wool8 '=precision_TYU_Wool;']);
            savepathsort8 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy8 '.mat'];
            fprintf("save path sort8 : %s\n",savepathsort8);
            save(savepathsort8,accuracy8,cotton8,Denim8,Fleece8,Nylon8,Polyester8,silk8,Terrycloth8,Viscose8,Wool8);

            [accuracy_GHY_GBDT,precision_GHY_cotton,precision_GHY_Denim,precision_GHY_Fleece,precision_GHY_Nylon,precision_GHY_Polyester,precision_GHY_silk,precision_GHY_Terrycloth,precision_GHY_Viscose,precision_GHY_Wool]=softmian(label,agg_score);
            eval([accuracy9 '=accuracy_GHY_GBDT;']);
            eval([cotton9 '=precision_GHY_cotton;']);
            eval([Denim9 '=precision_GHY_Denim;']);
            eval([Fleece9 '=precision_GHY_Fleece;']);
            eval([Nylon9 '=precision_GHY_Nylon;']);
            eval([Polyester9 '=precision_GHY_Polyester;']);
            eval([silk9 '=precision_GHY_silk;']);
            eval([Terrycloth9 '=precision_GHY_Terrycloth;']);
            eval([Viscose9 '=precision_GHY_Viscose;']);
            eval([Wool9 '=precision_GHY_Wool;']);
            savepathsort9 = ['/DATA/xqp/my02/ergs/accuracyf9/' accuracy9 '.mat'];
            fprintf("save path sort9 : %s\n",savepathsort9);
            save(savepathsort9,accuracy9,cotton9,Denim9,Fleece9,Nylon9,Polyester9,silk9,Terrycloth9,Viscose9,Wool9);

            % % ERGS
            sumall = ['sum_' new_feature_name '_' cc_list{ox} '_' num2str(ggg)];
            w1 = ['w_' ap '_' num2str(ggg)];
            w2 = ['w_' bp '_' num2str(ggg)];
            w3 = ['w_' cp '_' num2str(ggg)];
            w4 = ['w_' dp '_' num2str(ggg)];
            w5 = ['w_' ep '_' num2str(ggg)];
            w6 = ['w_' fp '_' num2str(ggg)];
            w7 = ['w_' gp '_' num2str(ggg)];
            w8 = ['w_' hp '_' num2str(ggg)];
            w9 = ['w_' zp '_' num2str(ggg)];
            [sum_GS_GBDT,w_G,w_S,w_H,w_L,w_R,w_T,w_U,w_Q,w_B] = ERGSmain1(cotton1,Denim1,Fleece1,Nylon1,Polyester1,silk1,Terrycloth1,Viscose1,Wool1,cotton2,Denim2,Fleece2,Nylon2,Polyester2,silk2,Terrycloth2,Viscose2,Wool2,cotton3,Denim3,Fleece3,Nylon3,Polyester3,silk3,Terrycloth3,Viscose3,Wool3,cotton4,Denim4,Fleece4,Nylon4,Polyester4,silk4,Terrycloth4,Viscose4,Wool4,cotton5,Denim5,Fleece5,Nylon5,Polyester5,silk5,Terrycloth5,Viscose5,Wool5,cotton6,Denim6,Fleece6,Nylon6,Polyester6,silk6,Terrycloth6,Viscose6,Wool6,cotton7,Denim7,Fleece7,Nylon7,Polyester7,silk7,Terrycloth7,Viscose7,Wool7,cotton8,Denim8,Fleece8,Nylon8,Polyester8,silk8,Terrycloth8,Viscose8,Wool8,cotton9,Denim9,Fleece9,Nylon9,Polyester9,silk9,Terrycloth9,Viscose9,Wool9,train,abb_score,acc_score,add_score,aee_score,aff_score,agg_score,ahh_score,aii_score,ajj_score,abb,acc,add,aee,aff,agg,ahh,aii,ajj,feature);
%                 sumxx = ['sum'];
            eval([sumall '=sum_GS_GBDT;']);
            eval([w1 '=w_G;']);
            eval([w2 '=w_S;']);
            eval([w3 '=w_H;']);
            eval([w4 '=w_L;']);
            eval([w5 '=w_R;']);
            eval([w6 '=w_T;']);
            eval([w7 '=w_U;']);
            eval([w8 '=w_Q;']);
            eval([w9 '=w_B;']);
            savepathsum = ['/DATA/xqp/my02/ergs/fusionf9/' sumall '.mat'];
            fprintf("save path sum : %s\n",savepathsum);
            save(savepathsum,sumall,w1,w2,w3,w4,w5,w6,w7,w8,w9);

            accuracy_all = ['all_accuracy_' new_feature_name '_' cc_list{ox} '_' num2str(ggg)];
            cotton_all = ['precision_' new_feature_name '_' 'cotton' '_' num2str(ggg)];
            Denim_all = ['precision_' new_feature_name '_' 'Denim' '_' num2str(ggg)];
            Fleece_all = ['precision_' new_feature_name '_' 'Fleece' '_' num2str(ggg)];
            Nylon_all = ['precision_' new_feature_name '_' 'Nylon' '_' num2str(ggg)];
            Polyester_all = ['precision_' new_feature_name '_' 'Polyester' '_' num2str(ggg)];
            silk_all = ['precision_' new_feature_name '_' 'silk' '_' num2str(ggg)];
            Terrycloth_all = ['precision_' new_feature_name '_' 'Terrycloth' '_' num2str(ggg)];
            Viscose_all = ['precision_' new_feature_name '_' 'Viscose' '_' num2str(ggg)];
            Wool_all = ['precision_' new_feature_name '_' 'Wool' '_' num2str(ggg)];

%                save('../SUMf/sum_GS_GBDT.mat','sum_GS_GBDT','w_G','w_S');
            [accuracy_GS_GBDT,precision_GS_cotton,precision_GS_Denim,precision_GS_Fleece,precision_GS_Nylon,precision_GS_Polyester,precision_GS_silk,precision_GS_Terrycloth,precision_GS_Viscose,precision_GS_Wool]=ERGSmain2(groups,test,sum_GS_GBDT);
%                save('../fusionf/accuracy_GS_GBDT.mat','accuracy_GS_GBDT','precision_GS_cotton','precision_GS_Denim','precision_GS_Fleece','precision_GS_Nylon','precision_GS_Polyester','precision_GS_silk','precision_GS_Terrycloth','precision_GS_Viscose','precision_GS_Wool')
            eval([accuracy_all '=accuracy_GS_GBDT;']);
            eval([cotton_all '=precision_GS_cotton;']);
            eval([Denim_all '=precision_GS_Denim;']);
            eval([Fleece_all '=precision_GS_Fleece;']);
            eval([Nylon_all '=precision_GS_Nylon;']);
            eval([Polyester_all '=precision_GS_Polyester;']);
            eval([silk_all '=precision_GS_silk;']);
            eval([Terrycloth_all '=precision_GS_Terrycloth;']);
            eval([Viscose_all '=precision_GS_Viscose;']);
            eval([Wool_all '=precision_GS_Wool;']);
            savepathall = ['/DATA/xqp/my02/ergs/fusionf9/' accuracy_all '.mat'];
            fprintf("save path all : %s\n",savepathall);
            save(savepathall,accuracy_all,cotton_all,Denim_all,Fleece_all,Nylon_all,Polyester_all,silk_all,Terrycloth_all,Viscose_all,Wool_all);
            avgoo = [avgoo accuracy_GS_GBDT];
            fused{1,ahj} = new_feature_name;
                        
                


%                save('../accuracyf/accuracy_SIFT_GBDT.mat','accuracy_SIFT_GBDT','precision_SIFT_cotton','precision_SIFT_Denim','precision_SIFT_Fleece','precision_SIFT_Nylon','precision_SIFT_Polyester','precision_SIFT_silk','precision_SIFT_Terrycloth','precision_SIFT_Viscose','precision_SIFT_Wool');
           
        end
        save('/DATA/xqp/my02/ergs/fusionf9/list.mat','fused');
    end
    avgxx = ['avg_' num2str(ggg)];
    eval([avgxx '=avgoo';]);
    saveppp = ['/DATA/xqp/my02/ergs/fusionf9/' 'accuracy_esm' '_' num2str(ggg) '.mat'];
    save(saveppp,avgxx);
    
end

    

% for g = 1:45
%     for k =
%     load('/DATA/xqp/my01/fabric/newclusterCCAsvd/CON/11/SR50SR101.mat')
%     load('/DATA/xqp/my01/fabric/newclusterCCAsvd/CON/11/SR50SR152.mat')
%     load('/DATA/xqp/my01/fabric/score/gist_GBDT_score.mat');
%     load('/DATA/xqp/my01/fabric/score/sift_GBDT_score.mat');

