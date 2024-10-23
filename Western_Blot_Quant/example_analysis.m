%read in the image
actin_image = fliplr(imread('antiActin 20240710_131425_Ch_Chemi.tif'));

%display and click bands
imshow(actin_image,[0 15000])
title({'click center of bands, click on an background area, then press enter'})
band_locations=ginput

%adjust the bandW and bandH as needed by trial-and-error
bandW = 50;
bandH = 20;

%quantify band intensities
band_quant=QuantifyWestern(actin_image,band_locations,bandW,bandH)
band_quant_background_subtracted = band_quant(1:end-1) - band_quant(end); %subtract the background band

%plot calcualted intensities
bar(band_quant_background_subtracted)
xlabel('Lane')
ylabel('Intensity (Arbitrary Units)')