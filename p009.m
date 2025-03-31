% A Pythagorean triplet is a set of three natural numbers, a < b < c, for
% which,
% 
%                            a^2 + b^2 = c^2
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
% 
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.

for a=1:1000
    for b=1:1000
        c=sqrt(a^2+b^2);
        if c - floor(c) == 0
            sum = a + b + c;
            if sum == 1000
                a*b*c
                break
            end
        end
    end
end

% ans = 31875000