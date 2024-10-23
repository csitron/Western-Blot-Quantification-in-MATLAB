Western Blot Quantification Toolkit in Matlab

Project description:
This package allows you to quantify the intensity of bands on a western blot.

How to install the project:
All required functions are either stock with Matlab or supplied here.

Quantifying bands on a western blot:
First, read in your image with an image-reading function such as imread. Display the image (e.g. with 
imshow) and use ginput to click on the center of each band. To subtract the background signal, we also 
recommend clicking on a region of the blot with no specific signal. Then run the QuantifyWestern 
function, which takes four arguments:
image = the image of your blot, read in as a matrix
band_locations = the location of the center of the bands, selected using ginput
bandW = width of the western blot bands (in pixels)
bandH = height of the western blot bands (in pixels)

After running the function, your image will be displayed with boxes around the areas that were 
quantified. If the position, width, or height of the boxes do not properly align to the bands, you can 
adjust these by finding selecting new band centers with ginput and/or adjusting bandW/bandH.
The function will return a matrix called band_values that will contain the quantified intensity values for 
each band, in the order given by band_locations. For an example of how to run the code, see 
“example_analysis.m.”

Acknowledgments:
We acknowledge Prof. Onn Brandman (Stanford University) for writing the original version of the 
QuantifyWestern and getVal functions.

