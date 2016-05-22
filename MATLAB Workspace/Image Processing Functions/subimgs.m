function [subimg] = subimgs(imgobj, imgbg)
    sz = size(imgbg);
    r = sz(1);
    c = sz(2);
    
    diffThreshold = 8;
    
    subimg = zeros(r, c, 3);
    
    imgobj = im2double(imgobj);
    imgbg = im2double(imgbg);
    
    for i = 1:r
        for j = 1:c
            diffR = imgobj(i, j, 1) - imgbg(i, j, 1);
            diffG = imgobj(i, j, 2) - imgbg(i, j, 2);
            diffB = imgobj(i, j, 3) - imgbg(i, j, 3);
%             [i j]
%             if (i == 185 && j==256)
%                 lol=0;
%             end
            diffRGBnet = ((abs(diffR) + abs(diffG) + abs(diffB))/3) * 100;
%             diffRGBnet = (diffRGB / 256) * 100;
            if (diffRGBnet < diffThreshold)
                for k = 1:3
                    subimg(i, j, k) = 0;
                end
            else
                for k = 1:3
                    subimg(i, j, k) = imgobj(i, j, k);
                end
            end
        end
    end
    
end