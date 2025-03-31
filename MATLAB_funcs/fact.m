function [ f ] = div( n )
%DIV Finds the divisors of input, n.
%   Similar to factor but includes non-prime factors and avoids repitition
%   of factors. Does not include 1.
f=[];
for i=2:floor(sqrt(n))
    if rem(n,i)==0
        f = horzcat(f,i);
    end
end
len=length(f);
for j=1:len
    g=n/f(j);
    f=horzcat(f,g);
end
f=horzcat(f,n);
f=sort(f);
end