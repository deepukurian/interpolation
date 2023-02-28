function [RDFInterpol]=interpolationMain (RDFslice,F)
% Interpolation calling function

% F=5;

tic
RDFInterpol=zeros(size(RDFslice,1),size(RDFslice,2),(size(RDFslice,3)-1)*F+1);
for i=1:size(RDFslice,1)
    for j=1:size(RDFslice,2)
        RDFInterpol(i,j,:)=sincInterpolation(squeeze(RDFslice(i,j,:))',F);
        
    end
end
toc