% calculate number of bins for HOG
nbins = 360/10;
% Load database of 1 - 9 HOG from file or do in memory
[HOG_Database] = load_HOG_database(nbins);
% input image for classification
I = imread('test_data_digits/9_shadow_red.png'); % read an image
% apply preprocess stage of bluring
I = preprocess(I);
figure; imshow(I);
% Run image through entropy maximization code
[Invariant,~] = gfinvim(I,'entropy','shannon','demo',false);
figure;imshow(Invariant); 
% binarization of invariant image
Ivariant2 = im2uint8(Invariant);
Ivariant2 = im2bw(Ivariant2, 0.3);
Ivariant2 = Ivariant2 .* 255;
% apply postprocess stage dialation
Ivariant2 = postprocess( Ivariant2 ); 
% Generate HOG based on the invariant image
figure;imshow(Ivariant2); 
HOG = generate_HOG(Ivariant2,nbins);
% Create pmf of HOG
pmf_hog = generate_pmf(HOG);
%figure; hold on; bar(pmf_hog,'r'); bar(HOG_Database(1,:)); 
%legend('Shadow Free PMF','Database PMF of 1');
%title('Shadow Free PMF verse Databse PMF of 1');
%figure; hold on; bar(pmf_hog,'r'); bar(HOG_Database(3,:));
%legend('Shadow Free PMF','Database PMF of 3');
%title('Shadow Free PMF verse Databse PMF of 3');
%figure; hold on; bar(pmf_hog,'r'); bar(HOG_Database(5,:));
%legend('Shadow Free PMF','Database PMF of 5');
%title('Shadow Free PMF verse Databse PMF of 5');
% run pmf through databse
espilion = 14.0;
class = classify_digit(pmf_hog,HOG_Database,espilion); 
% report class found

