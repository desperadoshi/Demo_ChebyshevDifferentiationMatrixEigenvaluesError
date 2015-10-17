function [HandlePlot] = plotEigenMag4ChebDifMat(ChebDifMat, PtsNMAX)

Eigenvalues = eig(ChebDifMat);
HandlePlot = plot(1:1:PtsNMAX, abs(Eigenvalues));
HandlePlot.LineStyle = 'none';
HandlePlot.Marker = 'o';
HandlePlot.MarkerSize = 6;
title(['N = ', sprintf('%d', PtsNMAX)]);
disp(['At N = ', sprintf('%d', PtsNMAX), ...
    ', Minimum eigenvalue is: ', ...
    sprintf( '%.14f', (-1)*min(abs(Eigenvalues)) ) ])
end