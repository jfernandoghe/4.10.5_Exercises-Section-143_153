% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 1
% 
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
x=zeros(10000,1);
y=x;
for i=1:10000
    u=rand;
    if u<0.10
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
        x(i)=2; y(i)=2;
    end
% (b)   P(X <= 1 and Y <= 1)
    s1=sum((x<1));
    s2=sum((y<1));
end
sprintf('%f', (s1+s2)/10000)    % (b)   P(X <= 1 and Y <= 1)
D=abs(x-y);
mean(D);                        % (c)   Mean
std(D);                         % (c)   STD