function diff = kl_divergence( P, Q )
%KL_DIVERGENCE Summary of this function goes here
%   Detailed explanation goes here

[M1, N1] = size(P);
[M2, N2] = size(Q);

if M1 ~= M2 || N1 ~= N2
    error('Not Matching Rows and Cols');
end

sum_diff = 0;
valid_diff = 0;
for i=1 : N1
    if Q(:,i) ~= 0 && P(:,i) ~= 0
        sum_diff = sum_diff + P(:,i) * log(P(:,i) / Q(:,i));
        valid_diff = 1;
    end
end

if valid_diff == 1
    diff = sum_diff;
else
    diff = 100000;
end

end

