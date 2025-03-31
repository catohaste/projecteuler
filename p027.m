% Euler discovered the remarkable quadratic formula:
% 
%                       n^2 + n + 41
% 
% It turns out that the formula will produce 40 primes for the consecutive
% integer values 0?n?39. However, when n=40,
% 
%                40^2 + 40 + 41 = 40(40 + 1) + 41
% 
% is divisible by 41, and certainly when n=41,
% 
%                       41^2 + 41 + 41
% 
% is clearly divisible by 41.
% 
% The incredible formula 
% 
%                       n^2 ? 79n + 1601
% 
% was discovered, which produces 80 primes for the consecutive values
% 0?n?79. The product of the coefficients, ?79 and 1601, is ?126479.
% 
% Considering quadratics of the form:
% 
%                        n^2 + an + b,
% 
% where |a|<1000 and |b|?1000, where |n| is the modulus/absolute value of n
% e.g. |11|=11 and |?4|=4. Find the product of the coefficients, a and b,
% for the quadratic expression that produces the maximum number of primes
% for consecutive values of n, starting with n=0.

addpath('MATLAB_funcs')

tot=0;
for a=-1000:1000
    for b=-1000:1000
        n=0;
        i=0;
        while isprime2(p027quadr(a,b,n)) == 1
            i=i+1;
            n=n+1;
        end
        if i>tot
            tot=i;
            notea = a;
            noteb = b;
        end
    end
end

%if n=0 gives a prime number but n=1 doesn't, then the while loop leaves
%i=1 and n=1.

%tot = 71
%notea = -61
%noteb = 971
% notea*noteb = -59231
