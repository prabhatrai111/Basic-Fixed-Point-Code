% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 2
% Problem 4 -- Newton Raphson method to find root of equation x^3-x-1=0
clear all, close all, clc; format long;
tic;
for n=-100:100
    y=n^3-n-1;
    if y<0
        x=n;     % guessed value i.e. value of xat which f(x)>0
    end
end
x      % 1st guessed value
for i=1:100
    x=x-((x^3)-x-1)/((3*x^2)-1);  % x(n+1)=x(n)-[f(x(n))/f'(x(n))]
    root=round(x,8);
end
root      % root of the equation x^3-x-1=0
toc;
