% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.

sum=0;
for i=1:999
    if rem(i,15) == 0
        sum = sum + i;
    elseif rem(i,5) == 0
        sum = sum + i;
    elseif rem(i,3) == 0
        sum = sum + i;
    end
end

sum

% ans = 233168