function [imrev] = bgrv2(imgobj, imgbg)
%     imrev = imgobj - imgbg;
    imrev = subimgs(imgobj, imgbg);
end
    