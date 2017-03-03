function [ isp ] = isprime2(X)
%ISPRIME2 Checks whether a number is prime.
%   Allows for input of negative numbers. For negative numbers always
%   returns false (0). Only input 1d integers.


if ~isreal(X) || floor(X) ~= X || iscell(X)
  error(message('MATLAB:isprime:InputNotPosInt')); 
end
isp = false;
if X > 2^32
    error(message('MATLAB:isprime:InputOutOfRange'));
end

p = primes(sqrt(X));

isp = all(rem(X, p(p<X)));


% p(p<1) would give an empty matrix and all([]) returns true.
% we need to correct isp for this case.
isp(X==1 | X==0) = false;

if X < 0
    isp = false;
end

end

