function [OA] = Overlaping(R)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
OA=0;
for m=1:size(R,1)
    for n=1:size(R,1)
        if m~=n
            OA_t= R(m,2)-R(n,1);
            if OA_t>0
                OA=OA+OA_t;
            end
        end
    end
end

end

