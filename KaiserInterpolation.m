function [s]=KaiserInterpolation(x,F)

% Objective: This code implements the Kaisser Bessel interpolation for a
% One dimensional signal
% Inputs-----------------------------------------------------------------
% x: Temporal Signal with dim=Necho X 1 eg:x=[1 3 2 3 1];
% F: Interpolation factor (constant) eg:F=5;
% Output---------------------------------------------------------------- 
% s: interpolated signal with dim=(Necho*F+1) X 1  
%------------------------------------------------------------------------
kb= @KaiserBessel;
% B=5;L=3;
B=1;L=7; %Kaiser bessel shape parameters

t=(1:1/F:numel(x));
s=0;
for n=1:numel(x)
    s=s+x(n)*kb((t-n)/max(t),B,L);
end


function[c] = KaiserBessel(x,B,L)

argmnt = sqrt( (pi^2)*(L^2)*(x.^2)-(B^2)*ones(size(x)) );
c=sin(argmnt) ./ argmnt;
c=c/max(c);
