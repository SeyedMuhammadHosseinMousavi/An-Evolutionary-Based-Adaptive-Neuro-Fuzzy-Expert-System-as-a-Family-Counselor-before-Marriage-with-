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

%% Tarin Using ANFIS Method

fis=TrainUsingANFIS(fis,data);

%% Results

% Train Data
figure;
TrainOutputs=evalfis(data.TrainInputs,fis);
PlotResults(data.TrainTargets,TrainOutputs,'Train Data');
figure;
% Test Data
TestOutputs=evalfis(data.TestInputs,fis);
PlotResults(data.TestTargets,TestOutputs,'Test Data');
