function result = laplacian(size,deviation)
s = floor((size -1)/2);
[x,y] = meshgrid(-s:s,-s:s);
result = (- 2 / deviation ^2 ).* (1 - (x .* x + y .* y) / (2 * deviation ^2 ));

end