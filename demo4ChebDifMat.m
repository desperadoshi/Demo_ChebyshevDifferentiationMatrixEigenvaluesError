% Demo
% Chebyshev difference matrix grows with the number of collocation points.
% So does maximum eigenvalue. 
clear;clc;
%%%%%%%%%%%%%%%%%%%
% Show how the difference matrix grows.
%%%%%%%%%%%%%%%%%%%
Order = 2;
disp([ 'Minimum eigenvalue is: ', sprintf('%.14f', -(pi/2)^2) ])
format long;
SubplotRowNMAX = 4;
SubplotColNMAX = 2;
PtsNMAXRepo = 2.^(7+[1:1:SubplotRowNMAX]);
for IndRow = 1 : SubplotRowNMAX
    PtsNMAX = PtsNMAXRepo(IndRow);
    [PtsCheb, ChebDifMatAll] = chebdif(PtsNMAX, Order);
    ChebDifMat = ChebDifMatAll(2:end-1, 2:end-1, Order);
    % 1
    Ind = (IndRow-1)*SubplotColNMAX + 1;
    subplot(SubplotRowNMAX, SubplotColNMAX, Ind);
    stem3ChebDifMat(ChebDifMat, PtsNMAX-2);
    % 2
    Ind = Ind + 1;
    subplot(SubplotRowNMAX, SubplotColNMAX, Ind);
    plotEigenMag4ChebDifMat(ChebDifMat, PtsNMAX-2);
end