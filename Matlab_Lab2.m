%% MATLAB
%% Question 1 
% Multiple plots, maxima, minima and comparators: For t = 0 to 8 and each
% each signal s1 = 5sint, s2 = 2?t and s3 = 0.4?(1.8t)
%% 
% a) Plot the 3 signals on the same time axes, use: figure, hold, plot(t,
% s#, ‘colour letter’ ) and/or plot(t,[s1; s2; s3])
    t=0:.01:8;               %t=linspace(0,8,1000)
    y1=5*sin(t);
    y2=sqrt(t);             %y2=t^0.5;
    y3=0.4*(1.8*t).^0.5;    %y3=0.4*sqrt(1.8*t);
    figure
    plot(t,y1); hold on; plot(t,y2);
    plot(t,y3)
    figure
    plot(t,[y1;y2;y3])
%% 
% b) >>max(s#) , min(s#) % Confirm the maximum and minimum values
% 
    hold on
    plot(t,[y1;y2;y3]>2)% binary output 0 false, 1 true
    plot(t,[y1;y2;y3].*([t;t;t]>=2))%turn on at t>=2;
%%
% c) >>plot(t , s#>=2) and explain the output
% 
%% 
% d) >>plot(t , s#.*(t>=2)) and explain the output
% 
%% Question 2
% The roots of a polynomial f(x) are the values of x, such that f(x) = 0.
% Obtain the roots of the following polynomials:
%% 
% a) $$ x^3 - 4.5x^2 + 5x - 1.5 = 0 $$
% 
    F1=[1 -4.5 5 -1.5];
    root=roots(F1) %3 real roots (0.5, 1, 3)
%%
% b) $$ x^3 - 7x^2 + 40x - 34 = 0 $$
% 
    F2=[1 -7 40 -34];
    root=roots(F2) %2 complex roots (1, 3+-5i)
%% Question 3
% Plot the above polynomials to confirm if the roots were located correctly by
% 
% solve('x^3-7*x^2+40*x-34=0') not in student version of matlab
    x= -10:.2:10 ;
    f1=x.^3 - 4.5*x.^2 + 5*x -1.5;
    f2=x.^3 - 7*x.^2 + 40*x -34;
    figure
    plot(x,[f1 ; f2])
    figure
    plot(x,[polyval(F1,x);polyval(F2,x)])
    F=[3 2 -100 2 -7 90];
    root=roots(F)
    x=linspace(-6,6,1000);
    plot(x,polyval(F,x));
%% 
% a) calculating f(x) using array operators for x=[-10:0.2:10]; then plot(x,f)
% 
%%
% b) using polyval(), e.g. plot(x,polyval([1 -4.5 5 -1.5], x))
%% 
% Use Matlab to compute the roots of 3x5 + 2x4 – 100x3 + 2x2 – 7x + 90
%% 
% plot the polynomial for x = -6 to 6.
% 
%% Question 4
% Linear Algebraic Equations: Use the left-division method to solve the
% following set of linear, algebraic equations, i.e. find u (i.e. [x; y;
% z]) when Au=y,
% Hint: A=3x3matrix, v=1x3, >>helpwin ops; >>helpwin mldivide; >> A*u
% 
% $$ 3x +2y -9z = -65 $$
% 
% $$ -9x -5y +2z = 16 $$
% 
% $$ 6x +7y +3z = 5 $$
% 
%% Question 5
% An engineering system has a differential equation with the initial
% condition solution given by; 
% 
% $$ y(t) = c_1e^{d_1t} + c_2e^{d_2t} + c_3e^{d_3t} $$
% 
% where  $$ c_1 = 0.3 , c_2 = 0.35, c_3 = 0.35 $$ 
% 
% Weigh the effects of the roots of the characteristic equation;
% $$ d_1 = -0.5, d_2 = -1+5i, d_3 = -1-5i $$
% 
% Using MATLAB, plot the initial condition response over the period from t
% = 0 to t = 10 seconds. Determine the maximum response amplitude between 1
% and 2 seconds.
% 
    t=linspace(0,10,10001);
    c1=0.3;c2=0.35;c3=0.35;
    d1=-0.5;d2=-1+5i;d3=-1-5i;
    y=c1*exp(d1.*t)+c2*exp(d2.*t)+c3*exp(d3.* t);
    plot(t,y)
%% Extension (for later): you may like to learn to write a function with
% arguments to solve this for any parameters 
% 
%% Practise Problems 
% 
%% 1 
% Create Matlab arrays and plot the following functions based on the Unit
% Step Function defined in lectures and tutorials. Plot from t = -10: .1 :
% 10; seconds. Hint: use Q3
%% 
% a) u(t)
%% 
% b) u(t - 4)
%% 
% c) -2u(t - 1)
%% 
% d) u(t - 2) –u(t - 5)
%% 
% e) u(2t - 2) –u(2t - 5)
%% 
% f) 2?t*u(t - 2)
%%
% g) 5sin(t).(u(t + 2) –u(t - 2))
% 
%% 2
%  Based on the function t > 0 part of d) in the previous question
%%
% a) Create and plot an even function (hint >> lookfor flip)
%% 
% b) Create and plot an odd function
%% 3 
% The response equations of certain dynamic systems are given below. Using
% array multiplication, obtain the plots that show the response over a
% period of 10 seconds. 
%% 
% a) $$ y(t) = \frac{1}{4}e^{-t} - \frac{1}{4}e^{-3t} - \frac{1}{2}e^{-3t} $$
% 
% $$ y(t)= 1/2e^{-t}sin(10 \pi t) - cos(2 \pi t) $$
%%
% c) $$ y(t) = sin(2 \pi t) - \frac{1}{2}e^{-t}(3+sin(15 \pi t))$$
%
%% 4
% According to phasor notation Real(e^{j?})=cos(?). Show that this is true for
% ? = 0 to \pi 
%
%% 5
% What does the following Matlab code demonstrate?
% $$ t=-5:.1:5; x=t*0+3; figure; plot(t,x) $$
% 
%% 6
% What does the following Matlab code demonstrate?
% 
% $$ dt=0.1;t = 0:dt:10; u=t>0; u=+u; x=t.*exp(-t).*u; $$
% 
% $$ y = conv(u , x)*dt; $$
%
% $$ figure, plot(t,[u ; x]); hold on; plot([t t(2:end)+10],y,’r’) $$
% 