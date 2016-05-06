
% Load database of 1 - 9 HOG from file or do in memory
HOG_Database = load_HOG_database(); % not implemented
% Run image through entropy maximization code
% input image for classification
I = imread('../data/5.jpg'); % read an image

[Invariant,~] = gfinvim(I,'entropy','shannon','demo',true);
% Generate HOG based on the invariant image
HOG = generate_HOG(Invariant); % not implemented
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
% run pmf through databse
class = classify_digit(pmf_hog,HOG_Database); % not implemented
% report class found

