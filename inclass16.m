%% 1: write a few lines of code or use FIJI to separately save the
% nuclear channel of the image Colony1.tif for segmentation in Ilastik

%% 2: train a classifier on the nuclei
% Read your nuclear image into ilastik
% try to get the get nuclei completely but separate them where you can
% save  both the simple segmentation and the probabilities in different
% files

%% 3: use h5read to read your Ilastik simple segmentation into matlab
% and display the binary masks produced by Ilastik 
% the syntax for this is: mask = h5read(filename,datasetname);
% (datasetname = '/exported_data')
% Ilastik has the image transposed relative to matlab
% values are integers corresponding to segmentation classes you defined,
% figure out which value corresponds to nuclei

%% 3b: show segmentation as overlay on the original image

%% 4: visualize the connected components using label2rgb
% probably a lot of nuclei will be connected into large objects

%% 5: use h5read to read your Ilastik probabilities and visualize
% it will have a channel for each segmentation class you defined

%%6: threshold probabilities to separate nuclei better

%% 7: use these thresholded propeties as seeds for watershed 
% to fill in the  segmentation better 
%% 8: clean up the results more 
% using imopen, imclose, etc