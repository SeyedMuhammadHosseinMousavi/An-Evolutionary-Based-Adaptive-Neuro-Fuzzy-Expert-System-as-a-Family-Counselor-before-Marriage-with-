clc;
clear;
close all;

%% Load Data

data=CreateData();

load traininput.mat
load traintarget.mat
load testinput.mat
load testtarget.mat
data.TrainInputs=0;
data.TrainInputs=traininput;
data.TrainTargets=0;
data.TrainTargets=traintarget;
data.TestInputs=0;
data.TestInputs=testinput;
data.TestTargets=0;
data.TestTargets=testtarget;
%% Generate Basic FIS

fis=CreateInitialFIS(data,10);

%% Tarin Using DE

fis=TrainUsingDE(fis,data);

%% Results

% Train Data
figure;
TrainOutputs=evalfis(data.TrainInputs,fis);
PlotResults(data.TrainTargets,TrainOutputs,'Train Data');
figure;
% Test Data
TestOutputs=evalfis(data.TestInputs,fis);
PlotResults(data.TestTargets,TestOutputs,'Test Data');
%%
clear;
load carbig
X = [MPG,Acceleration,Displacement,Weight,Horsepower];
varNames = {'MPG'; 'Acceleration'; 'Displacement'; 'Weight'; 'Horsepower'};
figure
gplotmatrix(X,[],Cylinders,['c' 'b' 'm' 'g' 'r'],[],[],false);
text([.08 .24 .43 .66 .83], repmat(-.1,1,5), varNames, 'FontSize',8);
text(repmat(-.12,1,5), [.86 .62 .41 .25 .02], varNames, 'FontSize',8, 'Rotation',90);
