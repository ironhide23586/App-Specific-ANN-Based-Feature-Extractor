function [imgrev] = bgrv(img)
    for k = 1:2
        hsv = rgb2hsv(img);
        s = hsv(:, :, 2);
        fg1 = s > 0.25;
        fg2 = bwareaopen(fg1, 20000);

        for i = 1:3
            fg3(:, :, i) = fg2;
        end

        fg3 = im2uint8(fg3);
        imgrev = img .* fg3;
    end
end