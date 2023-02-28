function [s]=sincInterpolation(x,F)

% Inputs-----------------------------------------------------------------
% x: Temporal Signal with dim=Necho X 1 eg:x=[1 3 2 3 1];
% F: Interpolation factor (constant)
% Outputs---------------------------------------------------------------- 
% s: interpolated signal with dim=(Necho*F+1) X 1  eg:F=5;
%------------------------------------------------------------------------

t=(1:1/F:numel(x));
s=0;
for n=1:numel(x)
    s=s+x(n)*sinc((t-n));
end
