% The prime factors of 13195 are 5, 7, 13 and 29.
%
% What is the largest prime factor of the number 600851475143 ?

x=600851475143;
y=sqrt(x);
z=floor(y);
sum = 0;
while sum == 0 
    if mod(x,z) == 0 && isprime(z) == 1
        sum = sum + z;
    end
    z=z-1;
end

sum

% ans = 6857