function [ HOG_Database ] = load_HOG_database(bins)
%LOAD_HOG_DATABASE Summary of this function goes here
%   Detailed explanation goes here

digit_1 = imread('database_digits/1.png');
digit_1_gray = rgb2gray(digit_1);
digit_2 = imread('database_digits/2.png');
digit_2_gray = rgb2gray(digit_2);
digit_3 = imread('database_digits/3.png');
digit_3_gray = rgb2gray(digit_3);
digit_4 = imread('database_digits/4.png');
digit_4_gray = rgb2gray(digit_4);
digit_5 = imread('database_digits/5.png');
digit_5_gray = rgb2gray(digit_5);
digit_6 = imread('database_digits/6.png');
digit_6_gray = rgb2gray(digit_6);
digit_7 = imread('database_digits/7.png');
digit_7_gray = rgb2gray(digit_7);
digit_8 = imread('database_digits/8.png');
digit_8_gray = rgb2gray(digit_8);
digit_9 = imread('database_digits/9.png');
digit_9_gray = rgb2gray(digit_9);

HOG_Database = zeros(bins,9);
% fill the HOGS for our no shadow images

HOG_Database(1,:) = generate_HOG(digit_1_gray,bins);
HOG_Database(2,:) = generate_HOG(digit_2_gray,bins);
HOG_Database(3,:) = generate_HOG(digit_3_gray,bins);
HOG_Database(4,:) = generate_HOG(digit_4_gray,bins);
HOG_Database(5,:) = generate_HOG(digit_5_gray,bins);
HOG_Database(6,:) = generate_HOG(digit_6_gray,bins);
HOG_Database(7,:) = generate_HOG(digit_7_gray,bins);
HOG_Database(8,:) = generate_HOG(digit_8_gray,bins);
HOG_Database(9,:) = generate_HOG(digit_9_gray,bins);


end

