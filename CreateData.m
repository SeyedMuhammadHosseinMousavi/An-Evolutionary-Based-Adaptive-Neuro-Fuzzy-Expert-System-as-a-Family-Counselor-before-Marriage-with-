function data=CreateData()

    % Model
    f=@(x) sin(x);

    % Train Data
    TrainInputs=linspace(0,2*pi,50)';
    TrainTargets=f(TrainInputs);

    % Test Data
    TestInputs=linspace(0,2*pi,1000)';
    TestTargets=f(TestInputs);
    
    data.TrainInputs=TrainInputs;
    data.TrainTargets=TrainTargets;
    data.TestInputs=TestInputs;
    data.TestTargets=TestTargets;

end