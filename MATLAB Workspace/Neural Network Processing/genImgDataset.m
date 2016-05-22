function [imgdataset] = genImgDataset(imglist)
    imgsz = size(imglist{1});
    imgr = imgsz(1);
    imgc = imgsz(2);
    len = imgr * imgc * 3;
    
    imgcnt = size(imglist);
    imgcnt = imgcnt(2); % No. of images
    
    imgdataset = zeros(imgcnt, len);
    
    for i = 1:imgcnt
        imgdataset(i, 1:len) = linearizeImg(imglist{i});
    end
end
    
    