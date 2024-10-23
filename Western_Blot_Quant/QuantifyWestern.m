function band_values=QuantifyWestern(image,band_locations,bandW,bandH)
I=double(image);

imshow(imadjust(image),[])
hold on
for i=1:rows(band_locations)
    plot(band_locations(i,1),band_locations(i,2),'r+')
    plot([band_locations(i,1)-bandW,band_locations(i,1)+bandW],ones(1,2)*(band_locations(i,2)-bandH),'r')
    plot([band_locations(i,1)-bandW,band_locations(i,1)+bandW],ones(1,2)*(band_locations(i,2)+bandH),'r')
    box=imcrop(I,[band_locations(i,1)-bandW,band_locations(i,2)-bandH,2*bandW,2*bandH]);
    box2=imcrop(I,[band_locations(i,1)-bandW,band_locations(i,2)-bandH,4*bandW,4*bandH]);
    bg(i)=getVal(box(:),0,.1);
    band_values(i)=getVal(box(:),0.01,.99);
end