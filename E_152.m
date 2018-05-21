% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 126
% 
% Consider the six-component system displayed below. 
% Let R1(t), . . ., R6(t) denote the reliability functions of the 
% components. Assume the six components operate independently.
% 
%          |___[1]___[2]___[3]___|
% _________|                     |_____
%          |___[4]___[5]___[6]___|
% 
% (a) Find the system reliability function.
% (b) Assuming all six components have exponentially distributed lifetimes 
%     with mean 100 h, find the mean time to failure for the system.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 152
% 
% Consider the system design illustrated in Exercise 126. Suppose that 
% components 1, 2, and 3 have exponential lifetimes with mean 250 h, while 
% components 4, 5, and 6 have exponential lifetimes with mean 300 h.
% (a) Write a program to simulate the lifetime of the system.
% (b) Let μ denote the true mean system lifetime. Provide an estimate of μ,
%     along with its estimated standard error.
% (c) Let p denote the true probability that the system lasts more than 
%     200 h. Provide an estimate of p, along with its estimated 
%     standard error.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% (a) Simulate distribution
T1 = random('exp',250,[10000,1]);       
T2 = random('exp',250,[10000,1]);   
T3 = random('exp',250,[10000,1]);       
T4 = random('exp',300,[10000,1]);   
T5 = random('exp',300,[10000,1]);       
T6 = random('exp',300,[10000,1]);   
T123 = min([T1, T2, T3],[],2);     
T456 = min([T4, T5, T6],[],2);                       
Tsys = max(T123,T456);
% (b) Total Mean and STD
Tmean = mean(Tsys);                     
Tstd = std(Tsys);    
Estd = Tstd/sqrt(10000);
% (c) Estimated Standart Error
STDe = sqrt((mean(Tsys<400)*(1-mean(Tsys<200)))/10000);