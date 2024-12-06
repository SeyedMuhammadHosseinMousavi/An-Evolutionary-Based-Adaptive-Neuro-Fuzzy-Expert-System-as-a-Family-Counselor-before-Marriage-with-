clear;
%% class 1 : marriage
lowerbound = 60;
upperbound = 100;
numberofdata=72;
for i=1: 30
    x = (upperbound-lowerbound).*rand(numberofdata,1) + lowerbound;
datax(1:numberofdata,i)=x;
end;
% changing range according to xls file
%colume 2
 datax(:,2) = (datax(:,2) - min(datax(:,2))) / ( max(datax(:,2)) - min(datax(:,2)));
 datax(:,2)=datax(:,2)*5;
 datax(:,2)=round(datax(:,2)); 
 for i=1: 72
     if datax(i,2)==0
         datax(i,2)=1;end;end;
 %colume 7
 datax(:,7) = (datax(:,7) - min(datax(:,7))) / ( max(datax(:,7)) - min(datax(:,7)));
 datax(:,7)=datax(:,7)*50;  
 datax(:,7)=datax(:,7)+50;
 %colume 9
 datax(:,9) = (datax(:,9) - min(datax(:,9))) / ( max(datax(:,9)) - min(datax(:,9)));
 datax(:,9)=datax(:,9)*5;
 datax(:,9)=round(datax(:,9)); 
 for i=1: 72
     if datax(i,9)==0
         datax(i,9)=1;end;end;
  %colume 11
 datax(:,11) = (datax(:,11) - min(datax(:,11))) / ( max(datax(:,11)) - min(datax(:,11)));
 datax(:,11)=datax(:,11)*2;
  datax(:,11)=round(datax(:,11)); 
 for i=1: 72
     if datax(i,11)==0
         datax(i,11)=1;end;end;
   %colume 14
 datax(:,14) = (datax(:,14) - min(datax(:,14))) / ( max(datax(:,14)) - min(datax(:,14)));
 datax(:,14)=datax(:,14)*10;
    %colume 15
 datax(:,15) = (datax(:,15) - min(datax(:,15))) / ( max(datax(:,15)) - min(datax(:,15)));
 datax(:,15)=datax(:,15)*100;
 for i=1: 72
     if datax(i,15)<30
         datax(i,15)=30;end;end;
     %colume 16
 datax(:,16) = (datax(:,16) - min(datax(:,16))) / ( max(datax(:,16)) - min(datax(:,16)));
 datax(:,16)=datax(:,16)*100;
 for i=1: 72
     if datax(i,16)<40
         datax(i,16)=40;end;end;
      %colume 17
 datax(:,17) = (datax(:,17) - min(datax(:,17))) / ( max(datax(:,17)) - min(datax(:,17)));
 datax(:,17)=datax(:,17)*50;
  datax(:,17)=datax(:,17)+50;
        %colume 18
 datax(:,18) = (datax(:,18) - min(datax(:,18))) / ( max(datax(:,18)) - min(datax(:,18)));
 datax(:,18)=datax(:,18)*100;
 for i=1: 72
     if datax(i,18)<10
         datax(i,18)=10;end;end;
         %colume 19
 datax(:,19) = (datax(:,19) - min(datax(:,19))) / ( max(datax(:,19)) - min(datax(:,19)));
 datax(:,19)=datax(:,19)*90;
  %colume 20
 datax(:,20) = (datax(:,20) - min(datax(:,20))) / ( max(datax(:,20)) - min(datax(:,20)));
 datax(:,20)=datax(:,20)*5;
 datax(:,20)=round(datax(:,20)); 
 for i=1: 72
     if datax(i,20)==0
         datax(i,20)=1;end;end;
   %colume 21
 datax(:,21) = (datax(:,21) - min(datax(:,21))) / ( max(datax(:,21)) - min(datax(:,21)));
 datax(:,21)=datax(:,21)*50;
    %colume 22
 datax(:,22) = (datax(:,22) - min(datax(:,22))) / ( max(datax(:,22)) - min(datax(:,22)));
 datax(:,22)=datax(:,22)*5;
     %colume 23
 datax(:,23) = (datax(:,23) - min(datax(:,23))) / ( max(datax(:,23)) - min(datax(:,23)));
 datax(:,23)=datax(:,23)*100;
  for i=1: 72
     if datax(i,23)<20
         datax(i,23)=20;end;end;
      %colume 26
 datax(:,26) = (datax(:,26) - min(datax(:,26))) / ( max(datax(:,26)) - min(datax(:,26)));
 datax(:,26)=datax(:,26)*100;
  for i=1: 72
     if datax(i,26)<40
         datax(i,26)=40;end;end;
       %colume 27
 datax(:,27) = (datax(:,27) - min(datax(:,27))) / ( max(datax(:,27)) - min(datax(:,27)));
 datax(:,27)=datax(:,27)*10;
       %colume 28
 datax(:,28) = (datax(:,28) - min(datax(:,28))) / ( max(datax(:,28)) - min(datax(:,28)));
 datax(:,28)=datax(:,28)*10;
        %colume 29
 datax(:,29) = (datax(:,29) - min(datax(:,29))) / ( max(datax(:,29)) - min(datax(:,29)));
 datax(:,29)=datax(:,29)*10;
datax(:,29)=round(datax(:,29)); 
 for i=1: 72
     if datax(i,29)==0
         datax(i,29)=1;end;end;
       %colume 30
 datax(:,30) = (datax(:,30) - min(datax(:,30))) / ( max(datax(:,30)) - min(datax(:,30)));
 datax(:,30)=datax(:,30)*40;
 datax(:,30)=round(datax(:,30)); 
  for i=1: 72
     if datax(i,30)<15
         datax(i,30)=15;end;end;

 
 
%% class 2 : returned not marriad
lowerbound = 10;
upperbound = 70;
numberofdata=15;
for i=1: 30
    y = (upperbound-lowerbound).*rand(numberofdata,1) + lowerbound;
datay(1:numberofdata,i)=y;
end;

% changing range according to xls file
%colume 2
 datay(:,2) = (datay(:,2) - min(datay(:,2))) / ( max(datay(:,2)) - min(datay(:,2)));
 datay(:,2)=datay(:,2)*3;
 datay(:,2)=round(datay(:,2)); 
 for i=1: 15
     if datay(i,2)==0
         datay(i,2)=1;end;end;
 %colume 7
 datay(:,7) = (datay(:,7) - min(datay(:,7))) / ( max(datay(:,7)) - min(datay(:,7)));
 datay(:,7)=datay(:,7)*25;  
 datay(:,7)=datay(:,7)+25;
 %colume 9
 datay(:,9) = (datay(:,9) - min(datay(:,9))) / ( max(datay(:,9)) - min(datay(:,9)));
 datay(:,9)=datay(:,9)*3;
 datay(:,9)=round(datay(:,9)); 
 for i=1: 15
     if datay(i,9)==0
         datay(i,9)=1;end;end;
  %colume 11
 datay(:,11) = (datay(:,11) - min(datay(:,11))) / ( max(datay(:,11)) - min(datay(:,11)));
 datay(:,11)=datay(:,11)*2;
  datay(:,11)=round(datay(:,11)); 
 for i=1: 15
     if datay(i,11)==0
         datay(i,11)=1;end;end;
   %colume 14
 datay(:,14) = (datay(:,14) - min(datay(:,14))) / ( max(datay(:,14)) - min(datay(:,14)));
 datay(:,14)=datay(:,14)*5;
    %colume 15
 datay(:,15) = (datay(:,15) - min(datay(:,15))) / ( max(datay(:,15)) - min(datay(:,15)));
 datay(:,15)=datay(:,15)*50;
 for i=1: 15
     if datay(i,15)<30
         datay(i,15)=30;end;end;
     %colume 16
 datay(:,16) = (datay(:,16) - min(datay(:,16))) / ( max(datay(:,16)) - min(datay(:,16)));
 datay(:,16)=datay(:,16)*60;
 for i=1: 15
     if datay(i,16)<40
         datay(i,16)=40;end;end;
      %colume 17
 datay(:,17) = (datay(:,17) - min(datay(:,17))) / ( max(datay(:,17)) - min(datay(:,17)));
 datay(:,17)=datay(:,17)*10;
  datay(:,17)=datay(:,17)+50;
        %colume 18
 datay(:,18) = (datay(:,18) - min(datay(:,18))) / ( max(datay(:,18)) - min(datay(:,18)));
 datay(:,18)=datay(:,18)*60;
 for i=1: 15
     if datay(i,18)<10
         datay(i,18)=10;end;end;
         %colume 19
 datay(:,19) = (datay(:,19) - min(datay(:,19))) / ( max(datay(:,19)) - min(datay(:,19)));
 datay(:,19)=datay(:,19)*50;
  %colume 20
 datay(:,20) = (datay(:,20) - min(datay(:,20))) / ( max(datay(:,20)) - min(datay(:,20)));
 datay(:,20)=datay(:,20)*3;
 datay(:,20)=round(datay(:,20)); 
 for i=1: 15
     if datay(i,20)==0
         datay(i,20)=1;end;end;
   %colume 21
 datay(:,21) = (datay(:,21) - min(datay(:,21))) / ( max(datay(:,21)) - min(datay(:,21)));
 datay(:,21)=datay(:,21)*20;
    %colume 22
 datay(:,22) = (datay(:,22) - min(datay(:,22))) / ( max(datay(:,22)) - min(datay(:,22)));
 datay(:,22)=datay(:,22)*3;
     %colume 23
 datay(:,23) = (datay(:,23) - min(datay(:,23))) / ( max(datay(:,23)) - min(datay(:,23)));
 datay(:,23)=datay(:,23)*60;
  for i=1: 15
     if datay(i,23)<20
         datay(i,23)=20;end;end;
      %colume 26
 datay(:,26) = (datay(:,26) - min(datay(:,26))) / ( max(datay(:,26)) - min(datay(:,26)));
 datay(:,26)=datay(:,26)*60;
  for i=1: 15
     if datay(i,26)<40
         datay(i,26)=40;end;end;
       %colume 27
 datay(:,27) = (datay(:,27) - min(datay(:,27))) / ( max(datay(:,27)) - min(datay(:,27)));
 datay(:,27)=datay(:,27)*60;
       %colume 28
 datay(:,28) = (datay(:,28) - min(datay(:,28))) / ( max(datay(:,28)) - min(datay(:,28)));
 datay(:,28)=datay(:,28)*60;
        %colume 29
 datay(:,29) = (datay(:,29) - min(datay(:,29))) / ( max(datay(:,29)) - min(datay(:,29)));
 datay(:,29)=datay(:,29)*60;
datay(:,29)=round(datay(:,29)); 
 for i=1: 15
     if datay(i,29)==0
         datay(i,29)=1;end;end;
       %colume 30
 datay(:,30) = (datay(:,30) - min(datay(:,30))) / ( max(datay(:,30)) - min(datay(:,30)));
 datay(:,30)=datay(:,30)*20;
 datay(:,30)=round(datay(:,30)); 
  for i=1: 15
     if datay(i,30)<15
         datay(i,30)=15;end;end;

 
 
%% class 3 : divorce

lowerbound = 30;
upperbound = 80;
numberofdata=28;
for i=1: 30
    z = (upperbound-lowerbound).*rand(numberofdata,1) + lowerbound;
dataz(1:numberofdata,i)=z;
end;


% changing range according to xls file
%colume 2
 dataz(:,2) = (dataz(:,2) - min(dataz(:,2))) / ( max(dataz(:,2)) - min(dataz(:,2)));
 dataz(:,2)=dataz(:,2)*4;
 dataz(:,2)=round(dataz(:,2)); 
 for i=1: 28
     if dataz(i,2)==0
         dataz(i,2)=1;end;end;
 %colume 7
 dataz(:,7) = (dataz(:,7) - min(dataz(:,7))) / ( max(dataz(:,7)) - min(dataz(:,7)));
 dataz(:,7)=dataz(:,7)*35;  
 dataz(:,7)=dataz(:,7)+35;
 %colume 9
 dataz(:,9) = (dataz(:,9) - min(dataz(:,9))) / ( max(dataz(:,9)) - min(dataz(:,9)));
 dataz(:,9)=dataz(:,9)*4;
 dataz(:,9)=round(dataz(:,9)); 
 for i=1: 28
     if dataz(i,9)==0
         dataz(i,9)=1;end;end;
  %colume 11
 dataz(:,11) = (dataz(:,11) - min(dataz(:,11))) / ( max(dataz(:,11)) - min(dataz(:,11)));
 dataz(:,11)=dataz(:,11)*2;
  dataz(:,11)=round(dataz(:,11)); 
 for i=1: 28
     if dataz(i,11)==0
         dataz(i,11)=1;end;end;
   %colume 14
 dataz(:,14) = (dataz(:,14) - min(dataz(:,14))) / ( max(dataz(:,14)) - min(dataz(:,14)));
 dataz(:,14)=dataz(:,14)*7;
    %colume 15
 dataz(:,15) = (dataz(:,15) - min(dataz(:,15))) / ( max(dataz(:,15)) - min(dataz(:,15)));
 dataz(:,15)=dataz(:,15)*70;
 for i=1: 28
     if dataz(i,15)<30
         dataz(i,15)=30;end;end;
     %colume 16
 dataz(:,16) = (dataz(:,16) - min(dataz(:,16))) / ( max(dataz(:,16)) - min(dataz(:,16)));
 dataz(:,16)=dataz(:,16)*80;
 for i=1: 28
     if dataz(i,16)<40
         dataz(i,16)=40;end;end;
      %colume 17
 dataz(:,17) = (dataz(:,17) - min(dataz(:,17))) / ( max(dataz(:,17)) - min(dataz(:,17)));
 dataz(:,17)=dataz(:,17)*20;
  dataz(:,17)=dataz(:,17)+50;
        %colume 18
 dataz(:,18) = (dataz(:,18) - min(dataz(:,18))) / ( max(dataz(:,18)) - min(dataz(:,18)));
 dataz(:,18)=dataz(:,18)*70;
 for i=1: 28
     if dataz(i,18)<10
         dataz(i,18)=10;end;end;
         %colume 19
 dataz(:,19) = (dataz(:,19) - min(dataz(:,19))) / ( max(dataz(:,19)) - min(dataz(:,19)));
 dataz(:,19)=dataz(:,19)*70;
  %colume 20
 dataz(:,20) = (dataz(:,20) - min(dataz(:,20))) / ( max(dataz(:,20)) - min(dataz(:,20)));
 dataz(:,20)=dataz(:,20)*4;
 dataz(:,20)=round(dataz(:,20)); 
 for i=1: 28
     if dataz(i,20)==0
         dataz(i,20)=1;end;end;
   %colume 21
 dataz(:,21) = (dataz(:,21) - min(dataz(:,21))) / ( max(dataz(:,21)) - min(dataz(:,21)));
 dataz(:,21)=dataz(:,21)*30;
    %colume 22
 dataz(:,22) = (dataz(:,22) - min(dataz(:,22))) / ( max(dataz(:,22)) - min(dataz(:,22)));
 dataz(:,22)=dataz(:,22)*4;
     %colume 23
 dataz(:,23) = (dataz(:,23) - min(dataz(:,23))) / ( max(dataz(:,23)) - min(dataz(:,23)));
 dataz(:,23)=dataz(:,23)*70;
  for i=1: 28
     if dataz(i,23)<20
         dataz(i,23)=20;end;end;
      %colume 26
 dataz(:,26) = (dataz(:,26) - min(dataz(:,26))) / ( max(dataz(:,26)) - min(dataz(:,26)));
 dataz(:,26)=dataz(:,26)*70;
  for i=1: 28
     if dataz(i,26)<40
         dataz(i,26)=40;end;end;
       %colume 27
 dataz(:,27) = (dataz(:,27) - min(dataz(:,27))) / ( max(dataz(:,27)) - min(dataz(:,27)));
 dataz(:,27)=dataz(:,27)*70;
       %colume 28
 dataz(:,28) = (dataz(:,28) - min(dataz(:,28))) / ( max(dataz(:,28)) - min(dataz(:,28)));
 dataz(:,28)=dataz(:,28)*70;
        %colume 29
 dataz(:,29) = (dataz(:,29) - min(dataz(:,29))) / ( max(dataz(:,29)) - min(dataz(:,29)));
 dataz(:,29)=dataz(:,29)*70;
dataz(:,29)=round(dataz(:,29)); 
 for i=1: 28
     if dataz(i,29)==0
         dataz(i,29)=1;end;end;
       %colume 30
 dataz(:,30) = (dataz(:,30) - min(dataz(:,30))) / ( max(dataz(:,30)) - min(dataz(:,30)));
 dataz(:,30)=dataz(:,30)*30;
 dataz(:,30)=round(dataz(:,30)); 
  for i=1: 28
     if dataz(i,30)<15
         dataz(i,30)=15;end;end;
 
 
 
%% labeling for classification learner and nuero fuzzy disugner apps
%colect
data=datax;
data(73:87,:)=datay;
data(88:115,:)=dataz;
%label
data(1:72,31)=1;
data(73:87,31)=2;
data(88:115,31)=3;
%% labeling for neural net pattern recognition app
neurodata=data(:,1:30);
label(1:72,1)=1;
label(73:87,2)=1;
label(88:115,3)=1;


