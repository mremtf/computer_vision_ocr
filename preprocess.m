function [ I_pre ] = preprocess( I )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    %1-4,5,6,7,8,:

    I_pre = imfilter(I, fspecial('gaussian', 7, 1.5) );
    %I_pre = I;

end

