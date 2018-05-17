% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 1
% A service station has both self-service and full-service islands. 
% On each island, there is a single regular unleaded pump with two hoses. 
% Let X denote the number of hoses being used on the selfservice island at 
% a particular time, and let Y denote the number of hoses on the 
% full-service island in use at that time. The joint pmf of X and Y appears
% in the accompanying table.
%               y
%  p(x, y)      0       1       2
%    x    0     0.10    0.04    0.02
%         1     0.08    0.20    0.06
%         2     0.06    0.14    0.30
% (a) What is P(X = 1 and Y = 1)?       
% Answer:   0.20
% (b) Compute P(X <= 1 and Y <= 1).
% Answer:   0.42
% (c) Give a word description of the event {X != 0 and Y != 0}, and 
%     compute the probability of this event.
% Answer:   0.70
% (d) Compute the marginal pmf of X and of Y. 
%     Using pX(x), what is P(X <= 1)?
% Answer:   px(x)=0.16, 0.35, 0.50 for x=0,1,2
%           py(y)=0.24, 0.38, 0.38 for y=0,1,2
%           p(X <= 1)=0.50
% (e) Are X and Y independent rvs? Explain
% Answer:   No
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 143
% 
% Consider the service station scenario presented in Exercise 1.
% (a) Write a program to simulate the rvs (X, Y) described in that exercise
% (b) Use your program to estimate P(X <= 1 and Y <= 1), and compare your 
%     estimate to the exact answer from the joint pmf. 
%     Use at least 10,000 simulation runs.
% (c) Define a new variable D = |X - Y|, the (absolute) difference in the
%     number of hoses in use at the two gas pumps. 
%     Use your program (with at least 10,000 runs) to simulate D, and
%     estimate both the mean and standard deviation of D
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% Re-formating the table
% (x,y)     (0,0) (0,1) (0,2)   (1,0) (1,1) (1,2)     (2,0) (2,1) (2,2)
%            0.1   0.04  0.02    0.08  0.20  0.06      0.06  0.14  0.30
% cum prob   0.1   0.14  0.16    0.24  0.44  0.50      0.56  0.70  1.0
% 
% (a)   To simulate rvs (X, Y)
for i=1:10000
    x=zeros(10000,1); 
    y=x;
    u=rand;
    if u<0.1
        x(i)=0; y(i)=0;
    elseif u<0.14
        x(i)=0; y(i)=1;
    elseif u<0.16
        x(i)=0; y(i)=2;
    elseif u<0.24
        x(i)=1; y(i)=0;
    elseif u<0.44
        x(i)=1; y(i)=1;
    elseif u<0.50
        x(i)=1; y(i)=2;
    elseif u<0.56
        x(i)=2; y(i)=0;
    elseif u<0.70
        x(i)=2; y(i)=1;
    else
        x(i)=250; y(i)=2;
    end
end
% (b)   P(X <= 1 and Y <= 1)
px=1; py=1;                                 % For (1,1)
% px=randi([0 2],1,1); py=randi([0 2],1,1);   % For random values
for i=1:10000
    if px==0 && py==0
        p=0.1;
    elseif px==0 && py==1
        p=0.14;
    elseif px==0 && py==2
        p=0.16;
    elseif px==1 && py==0
        p=0.24;
    elseif px==1 && py==1
        p=0.44;
    elseif px==1 && py==2
        p=0.50;
    elseif px==2 && py==0
        p=0.56;
    elseif px==2 && py==1
        p=0.70;
    elseif px==2 && py==2
        p=1;
    end
end
% (c)   D = |X - Y|
% Re-formating the table
% (x,y)     (0,0) (0,1) (0,2)   (1,0) (1,1) (1,2)     (2,0) (2,1) (2,2)
% cum prob   0.1   0.14  0.16    0.24  0.44  0.50      0.56  0.70  1.0
%   D         0     1     2       1     0     1         2     1     0
%            0.1   0.04  0.02    0.08  0.20  0.06      0.06  0.14  0.30
% So table for cmd(D) stands as:
%       D   0       1       2
%          0.6     0.32    0.08
for i=1:10000
    D=randi([0 2],1,1);
    if D==0
        pd=0.6;
    elseif D==1
        pd=0.32;
    elseif D==2
        pd=0.08;
    end
end