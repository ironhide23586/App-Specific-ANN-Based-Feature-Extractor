function [imgList] = readImgs(startnum, endnum, count, prefix)
    imgList = cell(1, count);
    j = 1;
    for i = startnum:endnum
        try
            img = imread(strcat(prefix, '_', num2str(i), '.jpg'));
            imgList{j} = img;
            j = j + 1;
        catch err
        end
    end
end