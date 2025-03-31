% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% 
% Find the sum of all the primes below two million.

sum = 0;
for i=1:2000000
    if isprime(i) == 1
        sum = sum + i;
    end
end

sprintf('%.16f',sum)

% ans = 142913828922