function [img] = clkpic(vid)
    img = getsnapshot(vid);
    img = ycbcr2rgb(img);
end