function [ bool ] = ispalin( number )
%ISPALIN
%   

str = num2str(number);
len = length(str);
sum = 0;

if mod(len,2) == 0
    for i=1:(len/2)
        if str(i) == str(len-i+1)
            sum = sum + 1;
        end
    end
    if sum == len/2
        bool = true;
    else
        bool=false;
    end
else
    for i=1:(len-1)/2
        if str(i) == str(len-i+1)
            sum = sum + 1;
        end
    end
    if sum == (len-1)/2
        bool = true;
    else
        bool=false;
    end
end

end

