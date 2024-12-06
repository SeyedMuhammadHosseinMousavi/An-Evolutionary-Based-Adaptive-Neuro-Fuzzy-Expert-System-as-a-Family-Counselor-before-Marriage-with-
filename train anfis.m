clc;clear;
load data.mat
load traininput.mat
load traintarget.mat
load testinput.mat
load testtarget.mat

%train
% train1=data(1:55,1:30);train2=data(73:82,1:30);train3=data(88:100,1:30);
% traintarget1=data(1:55,31);traintarget2=data(73:82,31);traintarget3=data(88:100,31);
% traininput=[train1;train2;train3]; traintarget=[traintarget1;traintarget2;traintarget3];
%test
% test1=data(56:72,1:30);test2=data(83:87,1:30);test3=data(101:115,1:30);
% testtarget1=data(56:72,31);testtarget2=data(83:87,31);testtarget3=data(101:115,31);
% testinput=[test1;test2;test3]; testtarget=[testtarget1;testtarget2;testtarget3];

trinput=traininput(:,1:30);
trtarget=traintarget;
tsinput=testinput(:,1:30);
tstarget=testtarget;

%% for classification lerner 
tr=[traininput traintarget];
ts=testinput;
% test with classification learner(after exporting model)
% yfit = trainedClassifier.predictFcn(ts) 

% for anfis app parts
antr=[traininput traintarget];
ants=[testinput tstarget];

% for nueral net pattern recognition
nuralinput=data(:,1:30);
nuraltarget(1:72,1)=1;  nuraltarget(73:87,2)=1;  nuraltarget(88:115,3)=1;

%% generate basic fis
fis=genfis3(trinput,trtarget,'sugeno',10);

%% train using anfis
MaxEpoch=50;
ErrorGoal=0;
InitialStepSize=0.01;
StepSizeDecreaseRate=0.9;
StepSizeIncreaseRate=1.1;
TrainOptions=[MaxEpoch ...
              ErrorGoal ...
              InitialStepSize ...
              StepSizeDecreaseRate ...
              StepSizeIncreaseRate];

DisplayInfo=true;
DisplayError=true;
DisplayStepSize=true;
DisplayFinalResult=true;
DisplayOptions=[DisplayInfo ...
                DisplayError ...
                DisplayStepSize ...
                DisplayFinalResult];

OptimizationMethod=1;
% 0: Backpropagation
% 1: Hybrid
fis=anfis([trinput trtarget],fis,TrainOptions,DisplayOptions,[],OptimizationMethod);
%% train
trainoutput=evalfis(trinput,fis);

trainerror=trtarget-trainoutput;
TrainMSE=mean(trainerror(:).^2);
TrainRMSE=sqrt(TrainMSE);
TrainErrorMean=mean(trainerror);
TrainErrorSTD=std(trainerror);
figure;
PlotResults(trtarget,trainoutput,'Train Data');

%% test
testoutput=evalfis(tsinput,fis);

testerror=tstarget-testoutput;
TestMSE=mean(testerror(:).^2);
TestRMSE=sqrt(TestMSE);
TestErrorMean=mean(testerror);
TestErrorSTD=std(testerror);
figure;
PlotResults(tstarget,testoutput,'Test Data');
