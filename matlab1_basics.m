% lets you comment things
%Question 4 - use of normal operations
 8+ 3*5; %23
 8+(3*5)
 (8+3)*5
 3*4^2 -5
 (3*4)^2 -5
 
%Question 4 testers
 6*(10/13)+18/(5*7) +5*9^2
 (-5+9i)+(6-2i)
 
%Question 5 - complex numbers
%imaginary numbers can be i or j
 x=-5+9i
 y=6-2j
 z=x+y
% show that x-y=-11+11i
% show that xy=-12+64i
% show that x/y=-1.2+1.1i
 a=x-y
 b=x*y
 c=x/y
 
%Question 6 - functions for complex numbers and trigonometry
 mag=abs(x)
 phase=angle(x)
 phased=phase*180/pi
 tan(phase)
 tand(phased)
%tan(phased) and doc tan are not helpful in this situation

%i,j and pi are predefined constants; e is defined as below
 e=exp(1)
 exp(i*pi/6)
 cos(pi/6)
 sin(pi/6)

%Question 7 - manipulate matrices and arrays
X=[1 2 3] %row form
X=[1;2;3] %column form
X=X' %swtiches from column to row or vice versa
Y=[3 3 3]
Z1=X+Y % Z1= [4 5 6] multiplication
Z2=X * Y  %Z3=[3 6 9]  have to comment this one out to find Z1,Z2
Z3=X.*Y %Z3= [3 6 9] dot product

%example - Write equation in matrix form Ax=b and solve for x
% x1+3x2 + 2x3 = 1
% 2x1+2x2+3x3 = 2
% 4x1+x2+5x3 = 5

%Ax = b equation for matrix
A =  [1 3 2;
      2 2 4;
      4 1 5]
b = [1 2 5]

C=A/b
helpwin ops

%Z4=X' * Y
%Z5=X' *Y'
%Z6=[X Y]
%Z7=[X-Y X X+Y]
