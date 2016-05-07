% calculate number of bins for HOG
nbins = 360/10;
% Load database of 1 - 9 HOG from file or do in memory
[HOG_Database] = load_HOG_database(nbins);
% input image for classification
I = imread('database_digits/4.png'); % read an image
bwI = im2bw(I, 0.784);
bwI = bwI .* 255;
% Generate HOG based on the invariant image
HOG = generate_HOG(bwI,nbins); % not implemented
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
% run pmf through databse
espilion = 8.9;
class = classify_digit(pmf_hog,HOG_Database,espilion); 
% report class found