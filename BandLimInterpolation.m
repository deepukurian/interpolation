function [y]=BandLimInterpolation(x,F)

% eg: x=[2 5 9];
% F = 7;

alpha = 0.5;
h1 = intfilt(F,2,alpha);
xr = upsample(x,F);
y = filter(h1,1,xr);

% Display
% delay = mean(grpdelay(h1));
% y(1:delay) = [];
% stem(1:upfac:upfac*length(x),x)
% hold on
% plot(y)
% xlim([400 700])