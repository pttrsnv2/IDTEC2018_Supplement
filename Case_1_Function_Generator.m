clear, clc, close all

syms x1 x2 x3 x4 x5 x6 x7 x8 x9 x10

% Section areas
A1 = 60*x9;
A2 = x8*x10;
A3 = x1*x2;
A4 = x5*x6;
A5 = x3*x4;

% Section datum distances
y1 = 0.5*x9 + x10 + x2;
y2 = 0.5*x10 + x2;
y3 = 0.5*x2;
y4 = x10 - 0.5*x6 + x2;
y5 = 0.5*x3 + x2;

% Ay
Ay1 = A1*y1;
Ay2 = A2*y2;
Ay3 = A3*y3;
Ay4 = A4*y4;
Ay5 = A5*y5;

% Section moments of inertia
I1 = 5*x9^3;
I2 = (1/12)*x8*x10^3;
I3 = (25/3)*x2^3;
I4 = (1/12)*x4*x3^3;
I5 = (1/12)*x5*x6^3;

% Neutral axis calculation
yn = (Ay1+Ay2+Ay3+Ay4+Ay5)/(A1+A2+A3+A4+A5);

% Section moduli distance d = y - yn
d1 = y1 - yn; 
d2 = y2 - yn;
d3 = y3 - yn;
d4 = y4 - yn;
d5 = y5 - yn; 

% Ad^2
M1 = A1*d1^2; 
M2 = A2*d2^2;
M3 = A3*d3^2; 
M4 = A4*d4^2; 
M5 = A5*d5^2; 

% Moment of inertia for whole geometry 
Ifinal = (I1 + M1)+(I2 + M2)+(I3 + M3)+(I4 + M4)+(I5 + M5)
