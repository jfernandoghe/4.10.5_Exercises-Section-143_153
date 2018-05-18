% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Example 4.13
% In the manufacture of ceramic tiles used for heat shielding, the 
% proportion of tiles that meet the required thermal specifications varies 
% from day to day. Let P denote the proportion of tiles meeting 
% specifications on a randomly selected day, and suppose P can be 
% modeled by the following pdf:
% 
% f (p) = 9p8           0 < p < 1
%
% At the end of each day, a random sample of n =20 tiles is selected and 
% each tile is tested. Let Y represent the number of tiles among the 20 
% that meet specifications; conditional on P = p,Y ~ Bin(20, p). Find the 
% expected number of tiles meeting thermal specifications in a daily sample 
% of 20, and find the corresponding standard deviation.
% 
% From the properties of the binomial distribution, we know that 
% E(Y|P=p)=np=20p, so E(Y|P)=20P. Applying the Law of Total Expectation,
% 
% E(Y)=E[E(Y|P)]=E[20P]= \int {0 \to 1} 20p*f(p)dp 
%                      = \int {0 \to 1} 180p9dp=18
% 
% This is reasonable: since E(P) ¼ .9 by integration, the expected 
% proportion of good tiles is 90%, and thus the expected number of good 
% tiles in a random sample of 20 tiles is 18.Determining the standard 
% deviation of Y requires the two pieces of the Law of Total Variance.
% First, using the rescaling property of variance,
% 
% Var[E(Y|P)]=Var(20p)=20^2Var(P)=400Var(P)
% 
% The variance of the proportion P can be determined directly from the pdf 
% of P via integration. The result is Var(P) = 9/1100, so
% Var[E(Y|P)] = 400(9/1100) ¼ 36/11. Second, the binomial variance formula 
% np(1  p) implies that the conditional variance of Y given P is
% Var(Y|P) = 20P(1  P), so
% 
% E[Var(Y|P)]=E[20P(1-p)]=\int {0 \to 1} 20p(1-p)*9p^8dp = 18/11
% 
% Therefore, by the Law of Total Variance,
% 
% Var(Y)=Var[E(Y|P)]+E[Var(Y|P)]=(36/11)+(18/11)=(54/11)=4.909
% 
% and the standard deviation of Y is σY=sqrt(4.909)=2.22. This “total” 
% standard deviation accounts for two effects: day-to-day variation in 
% quality as modeled by P (the first term in the variance expression),and 
% random variation in the number of observed good tiles as modeled by the
%  binomial distribution (the second term). Here is an example where the 
% Laws of Total Expectation and Variance are helpful in finding the mean 
% and variance of a random variable that is neither discrete nor continuous
% 
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 148
% Consider the situation in Example 4.31: the proportion P of tiles meeting 
% thermal specifications varies according to the pdf:
% 
% f(p) = 9p8,           0 < p < 1; 
% 
% conditional on P = p, the number of inspected tiles that meet 
% specifications is a rv Y ~ Bin(20, p).
% (a) Write a program to simulate Y. Your program will first need to 
%     simulate a value of P, and then generate a variate from the 
%     appropriate binomial distribution. [Hint: Use your software’s 
%     built-in binomial simulation tool.]
% (b) Simulate (at least) 10,000 values of Y, and report estimates of both 
%     E(Y) and Var(Y). How do these compare to the exact answers found 
%    in Example 4.31?
% (c) Use your simulation to estimate both P(Y = 18) and P(Y >= 18).
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution