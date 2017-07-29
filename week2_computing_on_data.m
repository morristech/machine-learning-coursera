A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
C = [1 1; 2 2];
%A*C     % Matrix multiplication
%A .* B  % dot is for element operation
%A .^ 2  % power operation per element

v = [1; 2; 3];
%1 ./ v  % each element do 1/element
%1 ./ A
%log(v)  % log on element
%exp(v)  % exp on element
%abs(v)  % absolute on element
%-v      % negative of all elements
%v + ones(length(v), 1) % same as v + 1
%v + 1
%ones(3, 1)

%A'      % transpose A

a = [1, 15, 2, 0.5];
%val = max(a)
%[val, idx] = max(a) % sets val as the max and idx as the index of the max val
%a < 3   % element comparison
%find(a < 3) % which are the elements of a that < 3

A = magic(3);          % generates a 3x3 matrix
[r, c] = find(A >= 7); % r = row id, c = col id that are >= 7
%A(2, 3)               % get the element at row 2, column 3

% sum(a)  % sum of all elements
% prod(a) % product of all elements
% floor(a)  % rounding down
% ceil(a)   % round up


%max(rand(3), rand(3)) % returns a new matrix with the maxes of each matrix

%max(A, [], 1) % max per row
%max(A, [], 2) % max per column

%A(:)      % A as vector
%max(A(:)) % max element of A

A = magic(9);
%sum(A, 1)   % sum per column
%sum(A, 2)   % sum per row

%eye(9)      % identity matrix

%A .* eye(9) % multiplies each element per the identity matrix leaving 1 val per row/col

temp = pinv(A);      % inverse of A 
round(temp * A)