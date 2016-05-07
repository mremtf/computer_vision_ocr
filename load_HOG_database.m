function [ PMF_HOG_Database ] = load_PMF_HOG_Database(bins)
%LOAD_PMF_HOG_Database Summary of this function goes here
%   Detailed explanation goes here

digit_1 = imread('database_digits/1.png');
digit_1_gray = im2bw(rgb2gray(digit_1),.784);
digit_1_gray = digit_1_gray .* 255;

digit_2 = imread('database_digits/2.png');
digit_2_gray = im2bw(rgb2gray(digit_2),.784) ;
digit_2_gray = digit_2_gray .* 255;

digit_3 = imread('database_digits/3.png');
digit_3_gray = im2bw(rgb2gray(digit_3),.784);
digit_3_gray = digit_3_gray .* 255;

digit_4 = imread('database_digits/4.png');
digit_4_gray = im2bw(rgb2gray(digit_4),.784);
digit_4_gray = digit_4_gray .* 255;

digit_5 = imread('database_digits/5.png');
digit_5_gray = im2bw(rgb2gray(digit_5),.784);
digit_5_gray = digit_5_gray .* 255;

digit_6 = imread('database_digits/6.png');
digit_6_gray = im2bw(rgb2gray(digit_6),.784);
digit_6_gray = digit_6_gray .* 255;

digit_7 = imread('database_digits/7.png');
digit_7_gray = im2bw(rgb2gray(digit_7),.784);
digit_7_gray = digit_7_gray .* 255;

digit_8 = imread('database_digits/8.png');
digit_8_gray = im2bw(rgb2gray(digit_8),.784);
digit_8_gray = digit_8_gray .* 255;

digit_9 = imread('database_digits/9.png');
digit_9_gray = im2bw(rgb2gray(digit_9),.784);
digit_9_gray = digit_9_gray .* 255;

PMF_HOG_Database = zeros(9,bins);
% fill the HOGS for our no shadow images

PMF_HOG_Database(1,:) = generate_pmf(generate_HOG(digit_1_gray,bins));
PMF_HOG_Database(2,:) = generate_pmf(generate_HOG(digit_2_gray,bins));
PMF_HOG_Database(3,:) = generate_pmf(generate_HOG(digit_3_gray,bins));
PMF_HOG_Database(4,:) = generate_pmf(generate_HOG(digit_4_gray,bins));
PMF_HOG_Database(5,:) = generate_pmf(generate_HOG(digit_5_gray,bins));
PMF_HOG_Database(6,:) = generate_pmf(generate_HOG(digit_6_gray,bins));
PMF_HOG_Database(7,:) = generate_pmf(generate_HOG(digit_7_gray,bins));
PMF_HOG_Database(8,:) = generate_pmf(generate_HOG(digit_8_gray,bins));
PMF_HOG_Database(9,:) = generate_pmf(generate_HOG(digit_9_gray,bins));


end

