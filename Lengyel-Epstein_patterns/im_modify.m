clear; clc; close all;

for it=1:500
    s=sprintf('0/pattern_%d.jpg',it);  % image path
    a=imread(s);
    % cut the empty space & set images grayscale
    a=rgb2gray(a(50:582,186:718,:));
    imwrite(a,s);
    imshow(a);
end