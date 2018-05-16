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
% (b) Compute P(X <= 1 and Y <= 1).
% (c) Give a word description of the event {X != 0 and Y != 0}, and 
%     compute the probability of this event.
% (d) Compute the marginal pmf of X and of Y. 
%     Using pX(x), what is P(X <= 1)?
% (e) Are X and Y independent rvs? Explain
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 143
% 
% Consider the service station scenario presented in Exercise 1.
% (a) Write a program to simulate the rvs (X, Y) described in that exercise
% (b) Use your program to estimate P(X <= 1 and Y <= 1), and compare your 
%     estimate to the exact answer from the joint pmf. 
%     Use at least 10,000 simulation runs.
% (c) Define a new variable D ¼ jX  Yj, the (absolute) difference in the
%     number of hoses in use at the two gas pumps. 
%     Use your program (with at least 10,000 runs) to simulate D, and
%     estimate both the mean and standard deviation of D
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
