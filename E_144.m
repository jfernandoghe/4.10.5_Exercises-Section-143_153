% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% 
%      José Fernando González Herrera
%      jfernandoghe@gmail.com
% 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Exercise 24
% 
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
% (0,0)(0,5)(0,10)(0,15) (5,0)(5,5)(5,10)(5,15) (10,0)(10,5)(10,10)(10,15)
% 0.02  0.06 0.02  0.10   0.04 0.15 0.20  0.10   0.01  0.15   0.14   0.01
% 0.02  0.08 0.10  0.20   0.24 0.39 0.59  0.69   0.70  0.85   0.99   1.0
% 
% (a)   To simulate rvs (X, Y)
px=0; py=0;
for i=1:1000
    if px==0 && py==0
        p=0.02;
    elseif px==0 && py==5
        p=0.06;
    elseif px==0 && py==10
        p=0.02;
    elseif px==0 && py==15
        p=0.10;
    elseif px==5 && py==0
        p=0.04;
    elseif px==5 && py==5
        p=0.15;
    elseif px==5 && py==10
        p=0.20;
    elseif px==5 && py==15
        p=0.10;
    elseif px==10 && py==0
        p=0.01;
    elseif px==10 && py==5
        p=0.15;
    elseif px==10 && py==10
        p=0.14;
    elseif px==10 && py==15
        p=0.01;
    end
end
% (b)   To estimate probability of at leats W
% Re-formating the table
% (0,0)(0,5)(0,10)(0,15) (5,0)(5,5)(5,10)(5,15) (10,0)(10,5)(10,10)(10,15)
% 0.02  0.06 0.02  0.10   0.04 0.15 0.20  0.10   0.01  0.15   0.14   0.01
%  0    5    10     15      5   10   15    20     10    15     20    35
% Creating a new table for w
% 0     5       10      15      20      25      30      35
% 0.02  0.10    0.18    0.45    0.24    0       0       0.01
for i=1:1000
    w=20;
%     w=x+y;
    if w==0
        pw=0.02;
    elseif w<=5
        pw=0.1;
    elseif w<=10
        pw=0.18;
    elseif w<=15
        pw=0.45;
    elseif w<=20
        pw=0.24;
    elseif w<=25
        pw=0;
    elseif w<=30
        pw=0;
    elseif w<=35
        pw=0.01;
    end
end
% (b)   To estimate probability of maximum M
for i=1:1000
    m=x+y;
    if m==0
        pm=0.02;
    elseif m<=5
        pm=0.1;
    elseif m<=10
        pm=0.18;
    elseif m<=15
        pm=0.45;
    elseif m<=20
        pm=0.24;
    elseif <=25
        pm=0;
    elseif m<=30
        pm=0;
    elseif m<=35
        pm=0.01;
    end
end