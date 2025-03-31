% Starting in the top left corner of a 2×2 grid, and only being able to
% move to the right and down, there are exactly 6 routes to the bottom
% right corner.
% 
% How many such routes are there through a 20×20 grid?

A = zeros(21);
A(1,:) = 1;
A(:,1) = 1;
A(1,1) = 0;
for i=2:21
    for j=2:21
        A(i,j) = A(i,j) + A(i-1,j) + A(i,j-1);
    end
end

%   137846528820
%   Elapsed time is 0.001750 seconds.