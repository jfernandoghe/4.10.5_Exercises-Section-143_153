% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 146
% 
% Suppose a randomly chosen individual’s verbal score X and quantitative 
% score Y on a nationallyadministered aptitude examination, each scaled 
% down to [0, 1], have joint pdf:
% 
% f(x,y)= 2/5(2x+3y)    0<=x<=1, 0<=y<=1
%          0            otherwise
% 
% (a) Write a program implementing the accept–reject method of this section 
%     to simulate (X, Y).
% (b) The engineering school at a certain university uses a weighted total 
%     T = 3X + 7Y as part of its admission process. Use your program in 
%     part (a) to simulate the rv T, and estimate P(T >= 9).
% (c) Suppose the engineering school decides to only admit students 
%     whose weighted totals are above the 85th percentile for the national 
%     distribution. That is, if η.85 is the 85th percentile of the 
%     distribution of T, a student’s weighted total must exceed η.85 for 
%     admission. Use your simulated values of T from part (b) to estimate 
%     η.85. [Hint: η.85 separates the bottom 85% of the T distribution 
%     from the remaining 15%. What value separates the lowest 85% of
%     simulated T values from the rest?]
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% (a)   Program implementing accept & reject
x=zeros(10000,1);
y=zeros(10000,1);
w=zeros(10000,1);
i=0;
while i<10000
    xstar=rand;
    ystar=rand;
    u=rand;
    if u<=4/5*xstar*ystar*(xstar+ystar<=1)
        i=i+1;
        x(i)=xstar;
        y(i)=ystar;
        T = 3*x + 7*y;      % (b)        
    end
end
mean(T);                    % (b)
std(T);                     % (b)
Tmean=mean(T>9);            % (c)
