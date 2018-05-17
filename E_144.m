% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 24
% An instructor has given a short quiz consisting of two parts. For a 
% randomly selected student, let X=the number of points earned on the first 
% part and Y=the number of points earned on the second part. Suppose that 
% the joint pmf of X and Y is given in the accompanying table.
%                            y
%   p(x,y)      0       5       10      15
%       0       0.02    0.06    0.02    0.10
%  x    5       0.04    0.15    0.20    0.10
%       10      0.01    0.15    0.14    0.01
% 
% (a) If the score recorded in the grade book is the total number of points 
%     earned on the two parts,what is the expected recorded score E(X + Y)?
% (b) If the maximum of the two scores is recorded, what is the expected 
%     recorded score?
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 144
% 
% Refer back to the quiz scenario of Exercise 24.
% (a) Write a program to simulate students’ scores (X, Y) on the two parts 
%     of the quiz.
% (b) Use your program to estimate the probability that a student’s total 
%     score is at least 20 points. How does your estimate compare to the 
%     exact answer from the joint pmf?
% (c) Define a new rv M=the maximum of the two scores. Use your program to 
%     simulate M,and estimate both the mean and standard deviation of M
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
% Solution
% 
% Re-formating the table
% (0,0)(0,5)(0,10)(0,15) (5,0)(1,5)(5,10)(5,15) (10,0)(10,5)(10,10)(10,15)
% 0.02  0.06 0.02  0.10   0.04 0.15 0.20  0.10   0.01  0.15   0.14   0.01
% 0.02  0.08 0.10  0.20   0.24 0.39 0.59  0.69   0.70  0.85   0.99   1.0
% 
% (a)   To simulate rvs (X, Y)
for i=1:1000
    if x==0 && py==0
        p=0.02;
    elseif x==0 && y==5
        p=0.06;
    elseif x==0 && y==10
        p=0.02;
    elseif x==0 && y==15
        p=0.10;
    elseif x==5 && y==0
        p=0.04;
    elseif x==5 && y==5
        p=0.15;
    elseif x==5 && y==10
        p=0.20;
    elseif x==5 && y==15
        p=0.10;
    elseif x==10 && y==0
        p=0.01;
    elseif x==10 && y==5
        p=0.15;
    elseif x==10 && y==10
        p=0.14;
    elseif x==10 && y==15
        p=0.01;
    end
end
% (a)   To simulate total score
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