function [linImg] = linearizeImg(img)
    imgsz = size(img);
    imgr = imgsz(1);
    imgc = imgsz(2);
    len = imgr * imgc * 3;
    linImg = reshape(img, [1 len]);
end