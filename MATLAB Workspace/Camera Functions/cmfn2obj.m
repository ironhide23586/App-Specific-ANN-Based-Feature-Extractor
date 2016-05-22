vid=videoinput('winvideo',1, 'YUY2_640x480'); 
figure(1);
pause(1);
imgbg = clkpic(vid);
cnt = 0;
while(1)
    imgobj = clkpic(vid);
    imgrev = bgrv2(imgobj, imgbg);
    imgrevgray = rgb2gray(imgrev);
    
    subplot(1, 2, 1)
    imshow(imgobj);

%     subplot(1, 3, 2);
%     imhist(imgrevgray, 10);
    
    subplot(1, 2, 2);
    imshow(imgrev);
%     imwrite(imgrev, strcat('Training Pics\BM_', num2str(cnt), '.jpg'), 'jpg');
    cnt = cnt + 1;
    
%     subplot(3, 3, 4);
%     stem(x, count);

    [count, x] = imhist(imgrevgray);
    ydiff = diff(count, 2);
%     subplot(3, 3, 5);
%     xdiff = x(1:254);
%     stem(xdiff, ydiff);
    
    [m, i] = max(ydiff);
    iReal = i + 3
    
    blackCoverage1 = shadeCover([1:iReal], imgrevgray)
    
    [i1, i2, i3, i4, i5, i6, i7, i8] = getImgCorners(imgrevgray);
    bcvr = zeros(1,8);
    bcvr(1) = shadeCover([1:iReal], i1);
    bcvr(2) = shadeCover([1:iReal], i2);
    bcvr(3) = shadeCover([1:iReal], i3);
    bcvr(4) = shadeCover([1:iReal], i4);
    
    bcvr(5) = shadeCover([1:iReal], i5);
    bcvr(6) = shadeCover([1:iReal], i6);
    bcvr(7) = shadeCover([1:iReal], i7);
    bcvr(8) = shadeCover([1:iReal], i8);
    
    blackCoverage2 = sum(bcvr)/8
    
    bFactor = (0.3*blackCoverage1  + 0.7*blackCoverage2)
    
    if (bFactor < 0.36)    
        imgbg = clkpic(vid);
    end
    
%     k = waitforbuttonpress;
%     
%     while (k ~= 1)
%         k = waitforbuttonpress;
%     end
    
    % Do all image processing and analysis here
end