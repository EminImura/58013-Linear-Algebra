% I.
A = [1,2,3; 4,5,6; 7,8,9];

% a (A^T)
A_T = A';
A_T

% b (A + A)
AplusA = A + A;
AplusA

% c (A*A)
AtimesA = A * A;
AtimesA

% d (determinant of A)
Adet = det(A);
Adet


% II.
% a
subA = [2,3; 5,6; 8,9];
subA

% b
subAdim = size(subA);
subAdim

% c
subA(3,2) = 0; 
subA


% III. solve
syms x y z;
eq1 = 5*x + 4*y + 1*z == 3.4,
eq2 = 10*x + 9*y + 4*z == 8.8,
eq3 = 10*x + 13*y + 15*z == 19.2,
sol_eq = solve([eq1,eq2,eq3],[x,y,z]),
