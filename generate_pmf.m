function [ pmf ] = generate_pmf( histogram )
%GENERATE_PMF Summary of this function goes here
%   Detailed explanation goes here

% find the total sum of histogram
    total = sum (histogram);
    if total == 0
        pmf = zeros(size(histogram));
    else
        % normalize the histogram, creating a pmf
        pmf = histogram ./ total;
    end
end

