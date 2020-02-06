N = 100;
pd = makedist('Lognormal',0,2.511)      % Probability Distribution Object
x = (0:0.1:12);
y = pdf(pd,x);
plot(x,y)
R = random(pd,1,1)