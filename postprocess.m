function [ I_post ] = postprocess( I )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    if( median(I(:)) < 30 )
        I = imcomplement(I);
    end
    
    se = strel('disk', 10, 8);
    I_post = imerode( I, se );
    %I_post = I;
    
end

