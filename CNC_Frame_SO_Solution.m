clear, clc, close all

% Albert Patterson
% Case Study 1 Shape Optimization Code
% Manufacturabiliy Constraint Formulation for Design Under Hybrid
% Additive-Subtractive Manufacturing. 2018 ASME DETC Conference
% Submission.

%% Manufacturbility Constraints
% The manufacturability constraints are defined here, with the exception of
% the constraint on x(10), which was defined using 'nonlcon_CNC_Frame'.
% Here, the x0(10), LB(10), and UP(10) are arbitary values which loosly
% bound the variable to ensure that fmincon is functional. 

% All units = mm
x0 = [100,10,8,8,6,8,60,30,10,10];   
LB = [100,4,4,4,4,4,60,20,4,1];
UB = [101,15,15,15,8,15,61,100,15,100];

% Solving
[x,xopt,exitflag,feval] = fmincon('Fun_CNC_Frame',x0,[],[],[],[],LB,UB,'nonlcon_CNC_Frame',[])

% End    






