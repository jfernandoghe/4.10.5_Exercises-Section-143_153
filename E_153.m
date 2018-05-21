% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 127
% 
% Consider the six-component system displayed below. 
% Let R1(t), . . ., R6(t) denote the component reliability functions. 
% Assume the six components operate independently.
% 
%           |[1]|     |[3]|      |[5]|   
%       ____|   |_____|   |______|   |___
%           |[2]|     |[4]|      |[6]|
% 
% (a) Find the system reliability function.
% (b) Assuming all six components have exponentially distributed lifetimes with mean 100 h,
% find the mean time to failure for the system.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Exercise 153
% 
% Consider the system design illustrated in Exercise 127. Suppose the 
% odd-numbered components have exponential lifetimes with mean 250 h, 
% while the even-numbered components have gamma lifetime distributions with
% α = 2 and β = 125. (This second distribution also has mean 250 h.)
% (a) Write a program to simulate the lifetime of the system. [You might 
%     want to use your software’s built-in gamma random number generator.]
% (b) Let μ denote the true mean system lifetime. Provide an estimate of μ, 
%     along with its estimated standard error.
% (c) Let p denote the true probability that the system fails prior to 
%     400 h. Provide an estimate of p, along with its estimated 
%     standard error.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% (a) Simulate distribution
T1 = random('exp',250,[10000,1]);       
T2 = random('gamma',2,125,[10000,1]);   
T3 = random('exp',250,[10000,1]);       
T4 = random('gamma',2,125,[10000,1]);   
T5 = random('exp',300,[10000,1]);       
T6 = random('gamma',2,125,[10000,1]);   
T12 = max(T1,T2); T34=max(T3,T4);       
T56 = max(T5,T6);                       
Tsys = min([T12,T34,T56],[],2); 
% (b) Total Mean and STD
Tmean = mean(Tsys);                     
Tstd = std(Tsys);    
Estd = Tstd/sqrt(10000);
% (c) Estimated Standart Error
STDe = sqrt((mean(Tsys<400)*(1-mean(Tsys<400)))/10000);