%Michael Moloney
%CSC 4630 Homework #8
%Account: mmoloney1
%Due Date: October 16, 2018

%Get image and save it as variable 'x'
%then display it.
x = imread('PICT0009.JPG');
imshow(x);

%ginput is used to select 2 corners of a
%rectangle which are stored in variable p
title('Select 2 points');
p = ginput(2);

%Store the x and y corner coordinates as ints
sp(1) = min(floor(p(1)), floor(p(2))); % x min
sp(2) = min(floor(p(3)), floor(p(4))); % y min
sp(3) = max(ceil(p(1)), ceil(p(2))); % x max
sp(4) = max(ceil(p(3)), ceil(p(4))); % y max

%create a cropped image of 'x' using the coordinates
%collected and store as new image 'y'
y = x(sp(2):sp(4), sp(1):sp(3));
%display image y
figure();
imshow(y);
title('cropped version');