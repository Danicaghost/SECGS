function [CA,OA] = ERGS_fun( countVectors,feature,Accuracy_cotton,Accuracy_Denim,Accuracy_Fleece,Accuracy_Nylon ,Accuracy_Polyester,Accuracy_silk,Accuracy_Terrycloth,Accuracy_Viscose,Accuracy_Wool)
%ERGS_fun 此处显示有关此函数的摘要
%   此处显示详细说明
R=[];R_cotton=[];R_Denim=[];R_Fleece=[];R_Nylon=[];R_Polyester=[];R_silk=[];R_Terrycloth=[];R_Viscose=[];R_Wool=[];
for i=1:9
    if i==1
        groups=double(ismember(feature,'cotton'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_cotton(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_cotton(1)/100)*1.732*sd;
            r_cotton=[r_u,r_o];
            R_cotton=[R_cotton;r_cotton];
        end
    elseif i==2
        groups=double(ismember(feature,'Denim'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Denim(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Denim(1)/100)*1.732*sd;
            r_Denim=[r_u,r_o];
            R_Denim=[R_Denim;r_Denim];
        end
    elseif i==3
        groups=double(ismember(feature,'Fleece'));
         A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Fleece(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Fleece(1)/100)*1.732*sd;
            r_Fleece=[r_u,r_o];
            R_Fleece=[R_Fleece;r_Fleece];
        end

    elseif i==4
        groups=double(ismember(feature,'Nylon'));
         A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Nylon(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Nylon(1)/100)*1.732*sd;
            r_Nylon=[r_u,r_o];
            R_Nylon=[R_Nylon;r_Nylon];
        end
        elseif i==5
        groups=double(ismember(feature,'Polyester'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Polyester(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Polyester(1)/100)*1.732*sd;
            r_Polyester=[r_u,r_o];
            R_Polyester=[R_Wool;r_Polyester];
        end
        elseif i==6
        groups=double(ismember(feature,'silk'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_silk(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_silk(1)/100)*1.732*sd;
            r_silk=[r_u,r_o];
            R_silk=[R_silk;r_silk];
        end
        elseif i==7
        groups=double(ismember(feature,'Terrycloth'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Terrycloth(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Terrycloth(1)/100)*1.732*sd;
            r_Terrycloth=[r_u,r_o];
            R_Terrycloth=[R_Wool;r_Terrycloth];
        end
        elseif i==8
        groups=double(ismember(feature,'Viscose'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Viscose(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Viscose(1)/100)*1.732*sd;
            r_Viscose=[r_u,r_o];
            R_Viscose=[R_Viscose;r_Viscose];
        end
        elseif i==9
        groups=double(ismember(feature,'Wool'));
        A=countVectors(find(groups==1),:);
        %A=a(randperm(size(a,1),1000),:);
        for j=1:size(A,1)
            clear ave sd;
            ave=mean(A(j,:));
            sd=std(A(j,:));
           r_u=ave-(1-Accuracy_Wool(1)/100)*1.732*sd;
           r_o=ave+(1-Accuracy_Wool(1)/100)*1.732*sd;
            r_Wool=[r_u,r_o];
            R_Wool=[R_Wool;r_Wool];
        end
    R=[R_cotton;R_Denim;R_Fleece;R_Nylon;R_Polyester;R_silk;R_Terrycloth;R_Viscose;R_Wool];
    end
end
%% =========== Part 3: compute Overlaping Area =============
[OA_cotton]=Overlaping(R_cotton);
[OA_Denim]=Overlaping(R_Denim);
[OA_Fleece]=Overlaping(R_Fleece);
[OA_Nylon]=Overlaping(R_Nylon);
[OA_Polyester]=Overlaping(R_Polyester);
[OA_silk]=Overlaping(R_silk);
[OA_Terrycloth]=Overlaping(R_Terrycloth);
[OA_Viscose]=Overlaping(R_Viscose);
[OA_Wool]=Overlaping(R_Wool);

OA=[OA_cotton,OA_Denim,OA_Fleece,OA_Nylon,OA_Polyester,OA_silk,OA_Terrycloth,OA_Viscose,OA_Wool];
% CA_pu=OA_pu/sum(OA);
% CA_canvas=OA_canvas/sum(OA);
% CA_Polyester=OA_Polyester/sum(OA);
% CA_Nylon=OA_Nylon/sum(OA);

CA_cotton=OA_cotton/max(R_cotton(:,2))-min(R_cotton(:,1));
CA_Denim=OA_Denim/max(R_Denim(:,2))-min(R_Denim(:,1));
CA_Fleece=OA_Fleece/max(R_Fleece(:,2))-min(R_Fleece(:,1));
CA_Nylon=OA_Nylon/max(R_Nylon(:,2))-min(R_Nylon(:,1));
CA_Polyester=OA_Polyester/max(R_Polyester(:,2))-min(R_Polyester(:,1));
CA_silk=OA_silk/max(R_silk(:,2))-min(R_silk(:,1));
CA_Terrycloth=OA_Terrycloth/max(R_Terrycloth(:,2))-min(R_Terrycloth(:,1));
CA_Viscose=OA_Viscose/max(R_Viscose(:,2))-min(R_Viscose(:,1));
CA_Wool=OA_Wool/max(R_Wool(:,2))-min(R_Wool(:,1));
CA=[CA_cotton,CA_Denim,CA_Fleece,CA_Nylon,CA_Polyester,CA_silk,CA_Terrycloth,CA_Viscose,CA_Wool];

end

