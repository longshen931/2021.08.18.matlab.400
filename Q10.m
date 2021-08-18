%Displaying greyscale images in the plot window I. imshow uses the default display range of the image data type and optimises the plot window, coordinate area and image object properties to display the image.
[corn_indexed,map] = imread('corn.tif',1);
imshow(corn_indexed,map)