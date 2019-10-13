function total = spiral_diag_sum(n)

% The function takes an odd positive integer n as an input and computes the
% sum of all the elements in the two diagonals of the n-by-n spiral matrix.
% For example, starting with the number 1 and moving to the right in a
% clockwise direction, a 5-by-5 spiral is formed as shown in the attached
% image. The sum of the red elements in the attached image is 101, which
% would be the output of the function.

S=spiral(n);
d1=diag(S);
r=size(S,1);
d2=S(r:r-1:end-1);
if n>1
    total=sum(d1)+sum(d2)-1;
elseif n==1
    total=1;
end