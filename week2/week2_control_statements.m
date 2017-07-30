v = zeros(10,1);
for i=1:10,
  v(i) = 2^i;
end;

indices = 1:10;
%for i=indices,
%  disp(i);
%end;

i = 1;
while i <= 5,
  v(i) = 100;
  i = i + 1;
end;

i = 1;
while true,
  v(i) = 999;
  i = i + 1;
  if i == 6,
    break;
  end;
end;

out = squareThisNumber(5);
[out1, out2] = squareAndCubeThisNumber(5);

X = [1, 1; 1, 2; 1, 3];
y = [1; 2; 3];
theta = [0; 1];   % h = 0 + 1 * x (diagonal)
j = costFunctionJ(X, y, theta); % j = 0, perfect
theta = [0; 0];   % h = 0 + 0 * x (horizontal on the zero)
j = costFunctionJ(X, y, theta); % j = 2.3333 (bad)
