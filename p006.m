% The sum of the squares of the first ten natural numbers is,
% 
%                  1^2 + 2^2 + ... + 10^2 = 385
% The square of the sum of the first ten natural numbers is,
% 
%               (1 + 2 + ... + 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the first ten
% natural numbers and the square of the sum is 3025 ? 385 = 2640.
% 
% Find the difference between the sum of the squares of the first one
% hundred natural numbers and the square of the sum.

suma = 0;
sumb = 0;

for i=1:100
   suma = suma + i;
   sumb = sumb + i^2;
end

suma*suma - sumb

% ans = 25164150