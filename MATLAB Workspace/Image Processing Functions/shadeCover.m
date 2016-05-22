function [cvr] = shadeCover(range, img)
    sz = size(img);
    pixelCount = sz(1) * sz(2);
    [count, x] = imhist(img);
    cvr = trapz(range, count(range)) / pixelCount;
end