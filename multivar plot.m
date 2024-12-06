clear;
load traininput.mat
load traintarget.mat
X = [traininput(:,2),traininput(:,3),traininput(:,7),traininput(:,11),traininput(:,14)];
varNames = {'Education'; 'Economic Similarity'; 'Common Interests'; 'Independency'; 'Engagement Time'};
figure
gplotmatrix(X,[],traintarget,['r' 'g' 'b' ],[],[],false);
text([.08 .24 .43 .66 .83], repmat(-.1,1,5), varNames, 'FontSize',8);
text(repmat(-.12,1,5), [.86 .62 .41 .25 .02], varNames, 'FontSize',8, 'Rotation',90);
% Andrews Plots
% Another similar type of multivariate visualization is the Andrews plot. This plot represents each observation 
% as a smooth function over the interval [0,1].
figure;
Cyl468 = ismember(traintarget,[1 2 3]);
andrewsplot(X(Cyl468,:), 'group',traintarget(Cyl468), 'standardize','on')
% Parallel Coordinates Plots
%  Each observation is represented in the plot as a series of connected line segments.
figure;
Cyl468 = ismember(traintarget,[1 2 3]);
parallelcoords(X(Cyl468,:), 'group',traintarget(Cyl468), ...
               'standardize','on', 'labels',varNames)