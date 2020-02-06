function [final,b_log,c_ray] = abc(d)
a=64;
%///////////////////////////
pd = makedist('Lognormal',0,2.511)  ;   % Probability Distribution Object
b_log = random(pd,1,1);
%///////////////////////////
c_ray = raylrnd(1.31027,1,1);
%///////////////////////////
final=a*b_log*c_ray/(d^4);