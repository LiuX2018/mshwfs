% ZERNIKE_FLIPYMATRIX matrix to flip the pupil vertically.
%   [R] = ZERNIKE_FLIPYMATRIX(ZSTRUCT)
%
%   Example:
%     zs = zernike_table(6);
%     dd = linspace(-1, 1, 80);
%     [xx, yy] =  meshgrid(dd, dd);
%     zs = zernike_cache(zs, xx, yy);
% 
%     zc = (logspace(1, 0, zs.ncoeff)').*randn(zs.ncoeff, 1);
% 
%     sfigure();
%     subplot(2, 2, 1);
%     zernike_imagesc(zs, zc);
%     axis equal;
%     axis off;
%     subplot(2, 2, 2);
%     plot(zc, 'Marker', 'x');
%     grid on;
% 
%     zc1 = zernike_flipymatrix(zs)*zc;
%     subplot(2, 2, 3);
%     zernike_imagesc(zs, zc1);
%     axis equal;
%     axis off;
%     subplot(2, 2, 4);
%     plot(zc1, 'Marker', 'x');
%     grid on;
%
% Author: Jacopo Antonello, <jacopo@antonello.org>

function [R] = zernike_flipymatrix(zstruct)
jtonmtable = zstruct.jtonmtable;
ncoeff = size(jtonmtable, 1);
R = zeros(ncoeff, ncoeff);
for i=1:size(jtonmtable, 1)
    m = jtonmtable(i, 2);
    if m < 0
        R(i, i) = -1;
    else
        R(i, i) = 1;
    end
end
