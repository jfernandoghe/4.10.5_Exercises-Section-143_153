% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 151
% 
% The conditional distributions method of this section can be implemented 
% to simulate a bivariate normal distribution, providing an alternative to 
% built-in multivariate simulation tools or Expression (4.10). 
% Let X and Y have a bivariate normal distribution with parameters 
% μ1, σ1, μ2,σ2, and ρ
% (a) What are the marginal distribution of X and the conditional 
%     distribution of Y given X = x? [Hint: Refer back to Sect. 4.7.]
% (b) Write a program to simulate (X, Y) values from a bivariate normal 
%     distribution by first simulating X and then YjX = x. The inputs to 
%     your program should be the five parameters and the desired number of 
%     simulated values; the outputs should be vectors containing the
%     simulated values of X and Y.
% (c) Use your program to simulate the height-weight distribution from the 
%     previous exercise. Verify that the sample mean and standard deviation 
%     of your simulated Y values are roughly 170 and 20, respectively.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% (b) Simulate (X, Y)
function [X,Y] = bivnorm(mu1,sigma1, mu2,sigma2,rho,n)
X  =zeros(n,1); Y=zeros(n,1);
for i=1:n
    X(i) = random('norm',mu1,sigma1);
    m = mu2+rho*sigma2/sigma1*(X(i)-mu1);
    s = sigma2*sqrt(1-rho^2);
    Y(i) = random('norm',m,s);
end
% (c) Mean-STD See E_150.m
ymean = mean(Y);
ystd = std(Y);