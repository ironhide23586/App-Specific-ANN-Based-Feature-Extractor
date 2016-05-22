vid=videoinput('winvideo',1, 'YUY2_640x480'); 
%preview(vid);
%pause(3);
while(1)
    img=getsnapshot(vid);
    img=ycbcr2rgb(img);
    imgrev = bgrv(img); % function version not working due to mysterious reasons :O
    imshow(imgrev);
    % Do all image processing and analysis here
end