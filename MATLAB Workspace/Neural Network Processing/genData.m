% cnt1 = 32;
% cnt2 = 37;
% cnt3 = 43;
% cnt4 = 29;
% cnt5 = 32;

cnt1 = 3;
cnt2 = 3;
cnt3 = 3;
cnt4 = 3;
cnt5 = 3;

s1=5; e1=7;
s2=5; e2=7;
s3=5; e3=7;
s4=4; e4=6;
s5=6; e5=8;

% s1=5; e1=55;
% s2=5; e2=41;
% s3=5; e3=47;
% s4=4; e4=32;
% s5=5; e5=36;


l1 = readImgs(s1,e1,cnt1,'WSw');
l2 = readImgs(s2,e2,cnt2,'WSd');
l3 = readImgs(s3,e3,cnt3,'PA');
l4 = readImgs(s4,e4,cnt4,'GM');
l5 = readImgs(s5,e5,cnt5,'BM');

list = [l1 l2 l3 l4 l5];
imgset = genImgDataset(list);

for i=1:cnt1 %WSw
    o1(i,:) = [0 1 0 0 0 0];
end

for i=1:cnt2 %WSd
    o2(i,:) = [0 0 1 0 0 0];
end

for i=1:cnt3 %PA
    o3(i,:) = [0 0 0 1 0 0];
end

for i=1:cnt4 %GM
    o4(i,:) = [0 0 0 0 1 0];
end

for i=1:cnt5 %BM
    o5(i,:) = [0 0 0 0 0 1];
end

oExp = [o1; o2; o3; o4; o5];

gennet;