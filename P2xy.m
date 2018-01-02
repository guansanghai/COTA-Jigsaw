function [x,y] = P2xy(P,M,N)
%P2XY �� P ����ת��Ϊ x,y ����
%   P: P ����
%   M: ƴͼ����
%   N: ƴͼ����
%
%   CVX-Jigsaw

blockind = (reshape((1:M*N),N,M)).';
n = M * N;
x = zeros(n,1);
y = zeros(n,1);

for ii = 1:n
    ind = find(P(ii,:)==max(P(ii,:)),1);
    [y(ii),x(ii)] = find(blockind==ind);
end

end

