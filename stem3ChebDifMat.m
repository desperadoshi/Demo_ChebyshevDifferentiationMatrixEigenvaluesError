function [HandlePlot] = stem3ChebDifMat(ChebDifMat, PtsNMAX)
ViewAz = 30;
ViewEl = 15;

[PtsXPlot, PtsYPlot] = meshgrid(1:PtsNMAX, 1:PtsNMAX);
HandlePlot = stem3(PtsXPlot, PtsYPlot, ChebDifMat);
HandlePlot.LineStyle = 'none';
HandlePlot.Marker = '.';
HandlePlot.MarkerSize = 10;
title(['N = ', sprintf('%d', PtsNMAX)]);
view([ViewAz, ViewEl]);

end