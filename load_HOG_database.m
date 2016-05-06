function [ HOG_Database, Class ] = load_HOG_database(bins)
%LOAD_HOG_DATABASE Summary of this function goes here
%   Detailed explanation goes here

digit_1 = imread('database_digits/digit_1.png');
digit_2 = imread('database_digits/digit_2.png');
digit_3 = imread('database_digits/digit_3.png');
digit_4 = imread('database_digits/digit_4.png');
digit_5 = imread('database_digits/digit_5.png');
digit_6 = imread('database_digits/digit_6.png');
digit_7 = imread('database_digits/digit_7.png');
digit_8 = imread('database_digits/digit_8.png');
digit_9 = imread('database_digits/digit_9.png');

HOG_Database = zeros(bins,9);
% fill the HOGS for our no shadow images

HOG_Database(1,:) = generate_HOG(digit_1,bins);
HOG_Database(2,:) = generate_HOG(digit_2,bins);
HOG_Database(3,:) = generate_HOG(digit_3,bins);
HOG_Database(4,:) = generate_HOG(digit_4,bins);
HOG_Database(5,:) = generate_HOG(digit_5,bins);
HOG_Database(6,:) = generate_HOG(digit_6,bins);
HOG_Database(7,:) = generate_HOG(digit_7,bins);
HOG_Database(8,:) = generate_HOG(digit_8,bins);
HOG_Database(9,:) = generate_HOG(digit_9,bins);

Class = zeros(9);
for i=1 : 9
    Class(:,i) = i;
end


end

