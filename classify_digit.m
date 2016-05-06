function class  = classify_digit( pmf_hog,HOG_Database,espilion )
%CLASSIFY_DIGIT Summary of this function goes here
%   Detailed explanation goes here

best_score = 100;
class = 0;
[M ~] = size(HOG_Database);
for i=1:M
    diff = kl_divergence(pmf_p,HOG_Database(i,:));
    if (diff < best_score)
        best_score = diff;
        class = i;
    end
end

end

