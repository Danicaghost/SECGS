function [ estimate ] = estimateW_fun( prob_estimates,weight)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:9
    for j=1:size(prob_estimates,1)
        estimate(j,i)=prob_estimates(j,i)*weight(i);
    end
end

end

