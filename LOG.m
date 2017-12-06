function [filter] = LOG(s,d)
s = floor(s/2)+1;
[X,Y] = meshgrid(-s:s,-s:s);
filter = (- 1) / ( pi * d ^ 4) .* ( 1 - (X.*X + Y.*Y)./(2*d^2)).*exp(-((X.*X+Y.*Y)/(2*d^2)));
end