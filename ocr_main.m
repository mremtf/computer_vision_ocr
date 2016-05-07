% calculate number of bins for HOG
nbins = 360/10;
% Load database of 1 - 9 HOG from file or do in memory
[HOG_Database] = load_HOG_database(nbins);
% input image for classification
I = imread('test_data_digits/2_shadow_red.png'); % read an image
% Run image through entropy maximization code
[Invariant,~] = gfinvim(I,'entropy','shannon','demo',false);
figure;imshow(Invariant); 
Ivariant2 = im2uint8(Invariant);
Ivariant2 = im2bw(Ivariant2, 0.3);
%I2 = imread('database_digits/1.png');
%I2 = im2bw(rgb2gray(I2),.784);
Ivariant2 = Ivariant2 .* 255;
% Generate HOG based on the invariant image
figure;imshow(Ivariant2);
HOG = generate_HOG(Ivariant2,nbins); % not implemented
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
% run pmf through databse
espilion = 14.0;
class = classify_digit(pmf_hog,HOG_Database,espilion); 
% report class found

