function [accuracy_FU5,precision_FU5_cotton,precision_FU5_Denim,precision_FU5_Fleece,precision_FU5_Nylon,precision_FU5_Polyester,precision_FU5_silk,precision_FU5_Terrycloth,precision_FU5_Viscose,precision_FU5_Wool]=ERGSmain2(groups,test,SUM)
label=groups(find(test==1));
[max_sum,predi_label]=max(SUM,[],2);
accuracy_FU5=size(find(label==predi_label))/size(label);
label_cotton=double(ismember(label,1));
predi_label_cotton=double(ismember(predi_label,1));
if(sum(predi_label_cotton)==0)
    TP=0;
    precision_FU5_cotton=0;
else
    i=find(label_cotton==predi_label_cotton);
    TP_TN_cotton=label_cotton(i);%%TP+TN
     precision_FU5_cotton=size(find(TP_TN_cotton==1))/size(find(predi_label==1));%%TP/TP+FP
end

label_Denim=double(ismember(label,2));
predi_label_Denim=double(ismember(predi_label,2));
if(predi_label_Denim==0)
    TP=0;

    precision_FU5_Denim=0;

else
    j=find(label_Denim==predi_label_Denim);
    TP_TN_Denim=label_Denim(j);%%TP+TN
   precision_FU5_Denim=size(find(TP_TN_Denim==1))/size(find(predi_label==2));%%TP/TP+FP
end
    
label_Fleece=double(ismember(label,3));
predi_label_Fleece=double(ismember(predi_label,3));
if(predi_label_Fleece==0)
    TP=0;
      precision_FU5_Fleece=0;
else
    m=find(label_Fleece==predi_label_Fleece);
    TP_TN_Fleece=label_Fleece(m);%%TP+TN
    precision_FU5_Fleece=size(find(TP_TN_Fleece==1))/size(find(predi_label==3));%%TP/TP+FP
end

label_Nylon=double(ismember(label,4));
predi_label_Nylon=double(ismember(predi_label,4));
if(predi_label_Nylon==0)
    TP=0;
     precision_FU5_Nylon=0;
else
    n=find(label_Nylon==predi_label_Nylon);
    TP_TN_Nylon=label_Nylon(n);%%TP+TN
    precision_FU5_Nylon=size(find(TP_TN_Nylon==1))/size(find(predi_label==4));%%TP/TP+FP
end

label_Polyester=double(ismember(label,5));
predi_label_Polyester=double(ismember(predi_label,5));
if(predi_label_Polyester==0)
    TP=0;
    precision_FU5_Polyester=0;
else
    n=find(label_Polyester==predi_label_Polyester);
    TP_TN_Polyester=label_Polyester(n);%%TP+TN
    precision_FU5_Polyester=size(find(TP_TN_Polyester==1))/size(find(predi_label==5));%%TP/TP+FP
end

label_silk=double(ismember(label,6));
predi_label_silk=double(ismember(predi_label,6));
if(predi_label_silk==0)
    TP=0;
     precision_FU5_silk=0;
else
    n=find(label_silk==predi_label_silk);
    TP_TN_silk=label_silk(n);%%TP+TN
    precision_FU5_silk=size(find(TP_TN_silk==1))/size(find(predi_label==6));%%TP/TP+FP
end

label_Terrycloth=double(ismember(label,7));
predi_label_Terrycloth=double(ismember(predi_label,7));
if(predi_label_Terrycloth==0)
    TP=0;
     precision_FU5_Terrycloth=0;
else
    n=find(label_Terrycloth==predi_label_Terrycloth);
    TP_TN_Terrycloth=label_Terrycloth(n);%%TP+TN
    precision_FU5_Terrycloth=size(find(TP_TN_Terrycloth==1))/size(find(predi_label==7));%%TP/TP+FP
end

label_Viscose=double(ismember(label,8));
predi_label_Viscose=double(ismember(predi_label,8));
if(predi_label_Viscose==0)
    TP=0;
     precision_FU5_Viscose=0;
else
    n=find(label_Viscose==predi_label_Viscose);
    TP_TN_Viscose=label_Viscose(n);%%TP+TN
    precision_FU5_Viscose=size(find(TP_TN_Viscose==1))/size(find(predi_label==8));%%TP/TP+FP
end

label_Wool=double(ismember(label,9));
predi_label_Wool=double(ismember(predi_label,9));
if(predi_label_Wool==0)
    TP=0;
    precision_FU5_Wool=0;
else
    n=find(label_Wool==predi_label_Wool);
    TP_TN_Wool=label_Wool(n);%%TP+TN
    precision_FU5_Wool=size(find(TP_TN_Wool==1))/size(find(predi_label==9));%%TP/TP+FP
end