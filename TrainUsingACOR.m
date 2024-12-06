function bestfis=TrainUsingACOR(fis,data)

    %% Problem Definition
    
    p0=GetFISParams(fis);
    
    Problem.CostFunction=@(x) TrainFISCost(x,fis,data);
    
    Problem.nVar=numel(p0);
    
    alpha=1;
    Problem.VarMin=-(10^alpha);
    Problem.VarMax=10^alpha;

    %% ACOR Params
    Params.MaxIt=100;
    Params.nPop=30;

    %% Run ACOR
    
    results=RunACOR(Problem,Params);
    
    %% Get Results
    
    p=results.BestSol.Position.*p0;
    bestfis=SetFISParams(fis,p);
    
end

function results=RunACOR(Problem,Params)

    disp('Starting ACOR ...');

    %% Problem Definition

    CostFunction=Problem.CostFunction;        % Cost Function

    nVar=Problem.nVar;          % Number of Decision Variables

    VarSize=[1 nVar];           % Size of Decision Variables Matrix

    VarMin=Problem.VarMin;      % Lower Bound of Variables
    VarMax=Problem.VarMax;      % Upper Bound of Variables

    %% ACOR Parameters

    MaxIt=Params.MaxIt;          % Maximum Number of Iterations

    nPop=Params.nPop;            % Population Size (Archive Size)

    nSample=2*nPop;     % Sample Size

    q=0.4;              % Intensification Factor (Selection Pressure)

    zeta=1;             % Deviation-Distance Ratio

    %% Initialization

    % Create Empty Individual Structure
    empty_individual.Position=[];
    empty_individual.Cost=[];

    % Create Population Matrix
    pop=repmat(empty_individual,nPop,1);

    % Initialize Population Members
    for i=1:nPop

        % Create Random Solution
        if i>1
           pop(i).Position=unifrnd(VarMin,VarMax,VarSize);
        else
           pop(i).Position=ones(VarSize);
        end

        % Evaluation
        pop(i).Cost=CostFunction(pop(i).Position);

    end

    % Sort Population
    [~, SortOrder]=sort([pop.Cost]);
    pop=pop(SortOrder);

    % Update Best Solution Ever Found
    BestSol=pop(1);

    % Array to Hold Best Cost Values
    BestCost=zeros(MaxIt,1);

    % Solution Weights
    w=1/(sqrt(2*pi)*q*nPop)*exp(-0.5*(((1:nPop)-1)/(q*nPop)).^2);

    % Selection Probabilities
    p=w/sum(w);


    %% ACOR Main Loop

    for it=1:MaxIt

        % Means
        s=zeros(nPop,nVar);
        for l=1:nPop
            s(l,:)=pop(l).Position;
        end

        % Standard Deviations
        sigma=zeros(nPop,nVar);
        for l=1:nPop
            D=0;
            for r=1:nPop
                D=D+abs(s(l,:)-s(r,:));
            end
            sigma(l,:)=zeta*D/(nPop-1);
        end

        % Create New Population Array
        newpop=repmat(empty_individual,nSample,1);
        for t=1:nSample

            % Initialize Position Matrix
            newpop(t).Position=zeros(VarSize);

            % Solution Construction
            for i=1:nVar

                % Select Gaussian Kernel
                l=RouletteWheelSelection(p);

                % Generate Gaussian Random Variable
                newpop(t).Position(i)=s(l,i)+sigma(l,i)*randn;

            end

            % Evaluation
            newpop(t).Cost=CostFunction(newpop(t).Position);

        end

        % Merge Main Population (Archive) and New Population (Samples)
        pop=[pop
             newpop];

        % Sort Population
        [~, SortOrder]=sort([pop.Cost]);
        pop=pop(SortOrder);

        % Delete Extra Members
        pop=pop(1:nPop);

        % Update Best Solution Ever Found
        BestSol=pop(1);

        % Store Best Cost
        BestCost(it)=BestSol.Cost;

        % Show Iteration Information
        disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCost(it))]);

    end
    
    disp('End of ACOR.');
    disp(' ');
    
    %% Results

    results.BestSol=BestSol;
    results.BestCost=BestCost;
    
end
