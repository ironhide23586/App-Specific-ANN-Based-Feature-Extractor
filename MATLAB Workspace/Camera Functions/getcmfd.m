% dev_info = imaqhwinfo('winvideo',1);
% sFormats = dev_info.SupportedFormats;
% sz = size(sFormats);
% len = sz(2);
% vFormat = sFormats(len);
vid = videoinput('winvideo',1, 'YUY2_640x480');
% preview(vid);