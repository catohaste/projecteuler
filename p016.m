% 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
% 
% What is the sum of the digits of the number 2^1000?

i=2;
x = num2str(2^1000,i);
while x(2)=='.'
    i=i+1;
    x = num2str(2^1000,i);
end

y=nan(302,1);
for j=1:302
    y(j)=str2double(x(j));
end
sum(y)