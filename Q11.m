%surf(X,Y,Z) creates a 3D surface map, which is a 3D surface with solid-coloured edges and solid-coloured faces. This function plots the values in the matrix Z as the height above the grid in the x-y plane defined by X and Y. The colour of the surface varies according to the height specified by Z.
[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
surf(X,Y,Z)