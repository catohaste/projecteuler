% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
% see that the 6th prime is 13.
% 
% What is the 10 001st prime number?

i=0;
a=1;
while i<10001
    if isprime(a) == 1
        i=i+1;
    end
    a=a+1;
end

a-1

% ans = 104743