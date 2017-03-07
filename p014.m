% The following iterative sequence is defined for the set of positive
% integers:
% 
% n ? n/2 (n is even)
% n ? 3n + 1 (n is odd)
% 
% Using the rule above and starting with 13, we generate the following
% sequence:
% 
% 13 ? 40 ? 20 ? 10 ? 5 ? 16 ? 8 ? 4 ? 2 ? 1 It can be seen that this
% sequence (starting at 13 and finishing at 1) contains 10 terms. Although
% it has not been proved yet (Collatz Problem), it is thought that all
% starting numbers finish at 1.
% 
% Which starting number, under one million, produces the longest chain?
% 
% NOTE: Once the chain starts the terms are allowed to go above one
% million.

tot=0;
for x=2:1000000   
    if rem(x,2) == 1
        n(1) = 3*x +1;
    else
        n(1) = x/2;
    end
    i=1;
    while n(i) ~= 1
        i=i+1;
        if rem(n(i-1),2)
            n(i) = 3*n(i-1) +1;
        else
            n(i) = n(i-1)/2;
        end
    end
    if i>tot
        tot = i+1;
        xnote = x;
    end
end

%   xnote=837799
%   11.430456