function Z=linearInterpolation(iField)
%  Linear interpolation function with interpolated echo length = 2*L-1
%  where L is the echo length of input complex data
s0=size(iField);
Z=zeros([s0(1:end-1) 2*s0(end)-1]);
Z(:,:,:,1:2:end)=iField;
Z(:,:,:,2:2:end)=(iField(:,:,:,1:end-1)+iField(:,:,:,2:end))/2;