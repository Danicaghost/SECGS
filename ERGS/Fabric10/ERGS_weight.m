function varargout = ERGS_weight(CA_1,CA_2,CA_3,CA_4,CA_5,CA_6,CA_7,CA_8,CA_9,CA_10)
% function [ w_1,w_2,w_3,w_4 ] = ERGS_weight( CA_1,CA_2,CA_3,CA_4 )
% function [ w_1,w_2,w_3 ] = ERGS_weight( CA_1,CA_2,CA_3)
%ERGS_weight �����ں�Ȩ��
%   �˴���ʾ��ϸ˵��
if nargin == 2
    for i=1:9   
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i));
    end
    varargout{1} = w_1; varargout{2} = w_2;
    
elseif nargin == 3
        %CA_4=[];
    for i=1:9   
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; 
    
elseif nargin == 4
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4;
    
elseif nargin == 5
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5;
elseif nargin == 6
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
        w_6(i)=CA_6(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5; varargout{6} = w_6;
elseif nargin == 7
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_6(i)=CA_6(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
        w_7(i)=CA_7(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5; varargout{6} = w_6; varargout{7} = w_7;
elseif nargin == 8
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_6(i)=CA_6(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_7(i)=CA_7(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
        w_8(i)=CA_8(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5; varargout{6} = w_6; varargout{7} = w_7; varargout{8} = w_8;
elseif nargin == 9
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_6(i)=CA_6(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_7(i)=CA_7(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_8(i)=CA_8(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
        w_9(i)=CA_9(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5; varargout{6} = w_6; varargout{7} = w_7; varargout{8} = w_8; varargout{9} = w_9;
elseif nargin == 10
    for i=1:9
        w_1(i)=CA_1(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_2(i)=CA_2(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_3(i)=CA_3(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_4(i)=CA_4(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_5(i)=CA_5(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_6(i)=CA_6(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_7(i)=CA_7(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_8(i)=CA_8(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_9(i)=CA_9(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
        w_10(i)=CA_10(i)/(CA_1(i)+CA_2(i)+CA_3(i)+CA_4(i)+CA_5(i)+CA_6(i)+CA_7(i)+CA_8(i)+CA_9(i)+CA_10(i));
    end
    varargout{1} = w_1; varargout{2} = w_2; varargout{3} = w_3; varargout{4} = w_4; varargout{5} = w_5; varargout{6} = w_6; varargout{7} = w_7; varargout{8} = w_8; varargout{9} = w_9; varargout{10} = w_10;

end

