function [i1, i2, i3, i4, i5, i6, i7, i8] = getImgCorners(img)
    sz = size(img);
    h = sz(1);
    w = sz(2);
    div = h/6;
    i1 = img(1:div, 1: div);
    i2 = img(1:div, (w-div):w);
    i3 = img((h-div):h, 1:div);
    i4 = img((h-div):h, (w-div):w);
    
    midw = w/2;
    midh = h/2;
    hdiv = div/2;
    
    i5 = img(1:div, (midw-hdiv):(midw+hdiv));
    i6 = img((midh - hdiv):(midh + hdiv), 1:div);
    i7 = img((midh - hdiv):(midh + hdiv), (w-div):w);
    i8 = img((h-div):h, (midw-hdiv):(midw+hdiv));
end
    
    