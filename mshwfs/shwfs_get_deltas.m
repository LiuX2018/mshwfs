% SHWFS_GET_DELTAS.
%   [DELTAS, MOVED] = SHWFS_GET_DELTAS(IMG, SHSTRUCT).
%
% Author: Jacopo Antonello, <jacopo@antonello.org>

function [deltas, moved] = shwfs_get_deltas(img, shstruct)

centres = shstruct.ord_centres;
moved = shwfs_get_centres(img, shstruct, shstruct.centroid);

deltas = moved - centres;

end


