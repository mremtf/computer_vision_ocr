% calculate number of bins for HOG
nbins = 360/10;
% Load database of 1 - 9 HOG from file or do in memory
[HOG_Database] = load_HOG_database(nbins);
% input image for classification
I = imread('test_data_digits/1_shadow_red.png'); % read an image
    
% Generate HOG based on the invariant image
HOG = generate_HOG(,nbins); % not implemented
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
% run pmf through databse
espilion = 8.9;
class = classify_digit(pmf_hog,HOG_Database,espilion); 
% report class found