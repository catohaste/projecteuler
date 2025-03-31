% The number, 197, is called a circular prime because all rotations of the
% digits: 197, 971, and 719, are themselves prime.
% 
% There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37,
% 71, 73, 79, and 97.
% 
% How many circular primes are there below one million?

P = primes(1000000);
CP=[];
for i=1:length(P)
    if ismember(P(i),CP)
        continue
    end
    str = num2str(P(i));
    len = length(str);
    circ(1) = P(i);
    if len == 2
        circ(2) = str2double(strcat(str(2),str(1)));
    elseif len == 3
        circ(2) = str2double(strcat(str(2),str(3),str(1)));
        circ(3) = str2double(strcat(str(3),str(1),str(2)));
    elseif len == 4
        circ(2) = str2double(strcat(str(2),str(3),str(4),str(1)));
        circ(3) = str2double(strcat(str(3),str(4),str(1),str(2)));
        circ(4) = str2double(strcat(str(4),str(1),str(2),str(3)));
    elseif len == 5
        circ(2) = str2double(strcat(str(2),str(3),str(4),str(5),str(1)));
        circ(3) = str2double(strcat(str(3),str(4),str(5),str(1),str(2)));
        circ(4) = str2double(strcat(str(4),str(5),str(1),str(2),str(3)));
        circ(5) = str2double(strcat(str(5),str(1),str(2),str(3),str(4)));
    elseif len == 6
        circ(2) = str2double(strcat(str(2),str(3),str(4),str(5),str(6),str(1)));
        circ(3) = str2double(strcat(str(3),str(4),str(5),str(6),str(1),str(2)));
        circ(4) = str2double(strcat(str(4),str(5),str(6),str(1),str(2),str(3)));
        circ(5) = str2double(strcat(str(5),str(6),str(1),str(2),str(3),str(4)));
        circ(6) = str2double(strcat(str(6),str(1),str(2),str(3),str(4),str(5)));
    end
    
    if ~ismember(0,ismember(circ,P))
        CP = horzcat(CP,circ);
    end
    
end

BOO = unique(CP);

%   55