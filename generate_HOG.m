function [ HOG ] = generate_HOG(input_image, nbins )
%GENERATE_HOG Summary of this function goes here
%   Detailed explanation goes here

% input image the digit to get a HOG from 
% nbins the number of bins

% allocate HOG 
HOG = zeros(1,nbins);
% calculate x and y gradients
[Gx, Gy] = imgradientxy(input_image);
% calculate the magnitude and orientation
[Gmag, Gdir] = imgradient(Gx, Gy);
% store in correct bins based on orientation and add magnitude to bin

[M, N] = size(Gmag);

for i = 1:M
   for j = 1:N
    % handles 0 gradients 
    if Gmag(i,j) > 0
        % correct orientation
        orientation = Gdir(i,j) + 180;
        % find bucket to store into HOG
		bucket = floor(orientation/10) + 1;
        % Update HOG
		HOG(:,bucket) = HOG(:,bucket) + Gmag(i,j);
    end
   end
end

end

