% A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91 × 99.
% 
% Find the largest palindrome made from the product of two 3-digit numbers.

addpath('MATLAB_funcs/')

a=999*999;
tot=0;
while tot==0 && a>0
    if ispalin(a) == 1 
        b=floor(sqrt(a));
        c = 0; 
        while c==0
            if mod(a,b) == 0
                c=c+b;
            end
            b=b-1;
        end
        d=a/c;
        lenc = length(num2str(c));
        lend = length(num2str(d));
        if lenc == 3 && lend == 3
            tot = tot + a
        end
    end
    a=a-1;
end

% ans = 906609