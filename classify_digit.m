function class  = classify_digit( pmf_hog,HOG_Database,espilion )
%CLASSIFY_DIGIT Summary of this function goes here
%   Detailed explanation goes here

best_score = 100;
class = 0;
[M, ~] = size(HOG_Database);
% do a brute force comparison between queyr pmf hog and the entire database
% of pmf hogs
for i=1:M
    diff = kl_divergence(pmf_hog,HOG_Database(i,:));
    if (diff > 0 - espilion && diff < espilion && diff < best_score)
        best_score = diff;
        class = i;
    end
end

end

