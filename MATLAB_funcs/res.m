function [ resil ] = res( d )
%RESILIENCE
%   A positive fraction whose numerator is less than its denominator is
%   called a proper fraction. For any denominator, d, there will be d-1
%   proper fractions; for example with d=12: 1/12, 2/12, 3/12, 4/12, 5/12,
%   6/12 , 7/12, 8/12, 9/12, 10/12, 11/12. We shall call a fraction that
%   cannot be cancelled down a resilient fraction. Furthermore we shall
%   define the resilience of a denominator, R(d), to be the ratio of its
%   proper fractions that are resilient; for example, R(12) = 4/11.

%   STEP1   Give all the proper fractions for the denominator, d.
%   STEP2   For each of the fractions, check whether they can be cancelled
%           down.
%   STEP3   If the fraction cannot be cancelled down, add 1 to the counter.
%   STEP4   When all the fractions have been tested, divide the counter by
%           d-1.

m=1;
for i=2:d-1
    if gcd(i,d) == 1
        m=m+1;
    end
end

resil = m/(d-1);


end

