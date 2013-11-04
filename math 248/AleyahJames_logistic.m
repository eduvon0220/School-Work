function JamesAleyah_logistic()

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NAMES: James Barney, Aleyah Dawkins
%JMU-EID: barneyjm, dawkinan
%DATE: 9/16/13
%
%PROGRAM: JamesAleyah_logistic.m
%
%PURPOSE: Explores fixed-point iterations and orbits of the Logistic Map.
%
%VARIABLES: n: number of iterations for the logistic map
%           x: the seed for the calculations
%           a: the iterative variable
%
%JMUPLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% creates 100 points for logistic() to graph. using 300, 400 increases
% the resolution of the final graph significantly
for i = 275:400
    % n = 100, x = 0.5, 2.75 < a < 4
    logistic(1000, 0.5, i/100);

end

function logistic(n, x, a)

% stores the x value passed in a new variable for calculations
x_n = x;
% the array for storing calculated values (to be plotted)
numArray = zeros(1,n);

for i = 1:n
    x_n = a*x_n*(1-x_n);
    numArray(i) = x_n;
end

% plots the last 90% of the calculated values.
plot(a, numArray(0.9*n:n), '.');
hold on;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Answers to the questions
% 1. The iterations appear to converge from near the following numbers: 
% 2-3.5, ~3.6, ~3.75, ~3.825.
% 2. The orbits are periodic on the same intervals that the iterations are
% convergent because the graph has a discrete number of points assoicated
% with the values. 
% 3. The orbits are chaotic from in between the areas where the graph 
% converges because there is no clearly defined pattern in the points plotted. 
% 4. The iterations grow unbounded after a = 4 because after that the
% result of the function is no longer between 0 and 1. 
% 5. The plots that have a values near points of interest (like a = 3, 3.5,
% and 4) are most useful because they let us see the data more clearly.
% 6. Period 8 orbits are generated by the values 3.54 < a < 3.57.
% 7. Period 3 orbits are generated by the values 3.825 < a < 3.840.

