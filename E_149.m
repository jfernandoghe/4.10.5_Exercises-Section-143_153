% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Example 4.1
% A large insurance agency services a number of customers who have 
% purchased both a homeowner’s policy and an automobile policy from the 
% agency. For each type of policy, a deductible amount must be specified. 
% For an automobile policy, the choices are $100 and $250, whereas for a
% homeowner’s policy, the choices are 0, $100, and $200. Suppose an 
% individual with both types of policy is selected at random from the 
% agency’s files. Let X ¼ the deductible amount on the auto policy and 
% Y = the deductible amount on the homeowner’s policy. Possible 
% (X, Y) pairs are then (100, 0), (100, 100), (100, 200), (250, 0), 
% (250, 100), and (250, 200); the joint pmf specifies the probability 
% associated with each one of these pairs, with any other pair having 
% probability zero. Suppose the joint pmf is as given in the accompanying 
% joint probability table:
%                            y
%   p(x,y)          0       100     200
%       x   100     0.20    0.10    0.20
%           250     0.05    0.15    0.30
% 
% Then p(100, 100) = P(X = 100 and Y = 100) = P($100 deductible on both 
% policies) = .10. The probability P(Y  100) is computed by summing 
% probabilities of all (x, y) pairs for which y  100:
% 
% P(>=100)=p(100,100)+p(250,100)+p(100,200)+p(250,250)=0.75
% 
% Looking at the joint probability table in Example 4.1, we see that 
% P(X=100), i.e. px(100), equals .20+.10+.20=.50, and similarly 
% pX(250)=.05+.15+.30=.50 as well. That is, the pmf of X at a specified 
% number is calculated by fixing an x value (say, 100 or 250) and summing 
% across all possible y values; e.g., 
% pX(250) = p(250,0) + p(250,100) + p(250,200). The pmf of Y can be 
% obtained by analogous summation (adding “down” the table instead of 
% “across”). In fact, by adding across rows and down columns, we could
%  imagine writing these probabilities in the margins of the joint 
% probability table; for this reason, pX and pY are called the marginal
%  distributions of X and Y. 
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 149
% 
% The conditional distributions method described in this section can 
% also be applied to joint discrete rvs. Refer back to the joint pmf
% presented in this section, which is originally from Example 4.1.
% (a) Determine the marginal pmf of X. (This should be very easy.)
% (b) Determine the conditional pmfs of Y given X = 100 and given X = 250.
% (c) Write a program that first simulates X using its marginal pmf, 
%     then simulates Y via the appropriate conditional pmf. [Hint: For each
%     stage, use your program’s built-in discrete simulator (randsample in 
%     Matlab, sample in R).]
% (d) Use your program in part (c) to simulate at least 10000 (X, Y) pairs.
%     Verify that the relative frequencies of the six possible pairs in 
%     your sample are close to the probabilities specified in the original 
%     joint pmf table
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% (a)
% From table px(100)=0.5 px(250)=0.5
% 
% 
% (b) Re-formating table
% 
%       y       0       100     200
%    p(y|100)   0.4     0.2     0.4
% 
%       y       0       100     200
%    p(y|250)   0.1     0.3     0.6
%  
% (c) Simulate
x=zeros(10000, 1);
y=zeros(10000, 1);
ys=[0 100 200];
py100=[.4 .2 .4];
py250=[.1 .3 .6];
for i=1:10000
    x(i)=randsample([100 250], 1);
    if x(i)==100
        y(i)=randsample(ys, 1, true,py100);
    else
        y(i)=randsample(ys, 1, true,py250);
    end
end
% (d) Table
crosstab(x,y);