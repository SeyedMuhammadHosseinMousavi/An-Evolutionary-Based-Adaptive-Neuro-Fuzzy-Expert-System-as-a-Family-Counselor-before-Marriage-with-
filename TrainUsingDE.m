function bestfis=TrainUsingDE(fis,data)

    %% Problem Definition
    
    p0=GetFISParams(fis);
    
    Problem.CostFunction=@(x) TrainFISCost(x,fis,data);
    
    Problem.nVar=numel(p0);
    
    alpha=1;
    Problem.VarMin=-(10^alpha);
    Problem.VarMax=10^alpha;

    %% DE Params
    Params.MaxIt=100;
    Params.nPop=20;

    %% Run DE
    results=RunDE(Problem,Params);
    
    %% Get Results
    
    p=results.BestSol.Position.*p0;
    bestfis=SetFISParams(fis,p);
    
end

function results=RunDE(Problem,Params)

    disp('Starting DE ...');

    %% Problem Definition

    CostFunction=Problem.CostFunction;        % Cost Function

    nVar=Problem.nVar;          % Number of Decision Variables

    VarSize=[1 nVar];           % Size of Decision Variables Matrix

    VarMin=Problem.VarMin;      % Lower Bound of Variables
    VarMax=Problem.VarMax;      % Upper Bound of Variables

    %% DE Parameters

    MaxIt=Params.MaxIt;      % Maximum Number of Iterations

    nPop=Params.nPop;        % Population Size

    beta_min=0.2;   % Lower Bound of Scaling Factor
    beta_max=0.8;   % Upper Bound of Scaling Factor

    pCR=0.1;        % Crossover Probability

    %% Initialization

    empty_individual.Position=[];
    empty_individual.Cost=[];

    BestSol.Cost=inf;

    pop=repmat(empty_individual,nPop,1);

    for i=1:nPop

        if i>1
            pop(i).Position=unifrnd(VarMin,VarMax,VarSize);
        else
            pop(i).Position=ones(VarSize);
        end
        
        pop(i).Cost=CostFunction(pop(i).Position);

        if pop(i).Cost<BestSol.Cost
            BestSol=pop(i);
        end

    end

    BestCost=zeros(MaxIt,1);

    %% DE Main Loop

    for it=1:MaxIt

        for i=1:nPop

            x=pop(i).Position;

            A=randperm(nPop);

            A(A==i)=[];

            a=A(1);
            b=A(2);
            c=A(3);

            % Mutation
            %beta=unifrnd(beta_min,beta_max);
            beta=unifrnd(beta_min,beta_max,VarSize);
            y=pop(a).Position+beta.*(pop(b).Position-pop(c).Position);

            % Crossover
            z=zeros(size(x));
            j0=randi([1 numel(x)]);
            for j=1:numel(x)
                if j==j0 || rand<=pCR
                    z(j)=y(j);
                else
                    z(j)=x(j);
                end
            end

            NewSol.Position=z;
            NewSol.Cost=CostFunction(NewSol.Position);

            if NewSol.Cost<pop(i).Cost
                pop(i)=NewSol;

                if pop(i).Cost<BestSol.Cost
                   BestSol=pop(i);
                end
            end

        end

        % Update Best Cost
        BestCost(it)=BestSol.Cost;

        % Show Iteration Information
        disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCost(it))]);

    end

    disp('End of DE.');
    disp(' ');
    
    %% Results

    results.BestSol=BestSol;
    results.BestCost=BestCost;
    
end
