
nbins = 360/36;
% Load database of 1 - 9 HOG from file or do in memory
[HOG_Database,Class] = load_HOG_database(nbins); % not implemented

% input image for classification
I = imread('../test_data_digits/1.jpg'); % read an image
% Run image through entropy maximization code
[Invariant,~] = gfinvim(I,'entropy','shannon','demo',true);
% Generate HOG based on the invariant image
HOG = generate_HOG(Invariant,nbins); % not implemented
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
% run pmf through databse
class = classify_digit(pmf_hog,HOG_Database,Class); % not implemented
% report class found

