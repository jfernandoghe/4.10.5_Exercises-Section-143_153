% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Example 4.5
% A nut company markets cans of deluxe mixed nuts containing almonds, 
% cashews, and peanuts. Suppose the net weight of each can is exactly 1 lb,
% but the weight contribution of each type ofnut is random. Because the
% three weights sum to 1, a joint probability model for any two gives all
% necessary information about the weight of the third type. Let X ¼ the
% weight of almonds in a selected can and Y ¼ the weight of cashews. 
% Then the region of positive density is D ¼ {(x, y): 0  x  1,
% 0  y  1, x + y  1}, the shaded region pictured in Fig. 4.2.
% 
% Now let the joint pdf for (X, Y) be
% f(x)= 24xy        0<=x<=1, 0<=y<=1, x+y<=1 
%       0           Otherwise
% 
% For any fixed x, f(x, y) increases with y; for fixed y, f(x, y) increases 
% with x. This is appropriate because the word deluxe implies that most of 
% the can should consist of almonds and cashews rather than peanuts, so 
% that the density function should be large near the upper boundary and 
% small near the origin. The surface determined by f(x, y) slopes upward 
% from zero as (x, y) moves away from either axis.
% 
% Clearly, f(x, y)  0. To verify the second condition on a joint pdf, 
% recall that a double integral is computed as an iterated integral by 
% holding one variable fixed (such as x as in Fig. 4.2), integrating over 
% values of the other variable lying along the straight line passing 
% through the value of the fixed variable, and finally integrating over all
% possible values of the fixed variable.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% % Example 4.13
% % In Example 4.5, the joint pdf of the amount X of almonds and
% % amount Y of cashews in a 1-lb can of nuts was
% 
% f(x)= 24xy        0<=x<=1, 0<=y<=1, x+y<=1 
%       0           Otherwise
% 
% If 1 lb of almonds costs the company $6.00, 1 lb of cashews costs $10.00, 
% and 1 lb of peanuts costs $3.50, then the total cost of the contents of 
% a can is:
% 
% H(X,Y)=6x + 3y +3.5(1-X-Y)=3.5+2.5X+6.5Y
% 
% (since 1 - X - Y of the weight consists of peanuts). The expected total 
% cost is:
% 
% E[h(X,Y)]= int int h(x,y)*f(x,y)dxdy
%          = int {0 \to 1} int {0 \to 1-x} (3.5+2.5X+6.5Y)(24xy) dydx = 7.1
%          = $ 7.1 
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 144
% Consider the situation presented in Example 4.13: the joint pdf of the 
% amounts X and Y of almonds and cashews, respectively, in a 1-lb can of 
% nuts is:
% 
% f(x)= 24xy        0<=x<=1, 0<=y<=1, x+y<=1 
%       0           Otherwise
% 
% With the prices specified in that example, the total cost of the contents
% of one can is W = 3.5 + 2.5X + 6.5Y.
% (a) Write a program implementing the accept–reject method of this 
%     section to simulate (X, Y).
% (b) On the average, how many iterations will your program require to 
%     generate 10,000 % “accepted” (X, Y) pairs?
% (c) Use your program to simulate the rv W. Create a histogram of the 
%     simulated values of W,and report estimates of the mean and standard 
%     deviation of W. How close is your sample mean to the value 
%     E(W) = $7.10 determined in Example 4.13?
% (d) Use your simulation in part (c) to estimate the probability that the 
% cost of the contents of a can of nuts exceeds $8.
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% (a)   Program implementing accept & reject
x=rand; y=rand;
if (x>=0) && (x<=1) && (y>=0) && (y<=1) && (x+y<=1)
    w=3.5+(2.5*X)+(6.5*Y)
    
end