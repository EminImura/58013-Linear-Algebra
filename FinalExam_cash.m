%Final Exam
% A + B + C = 89
% A = C - 6
% B = 3C

syms x y z;
eq1 = 1*x + 1*y + 1*z == 89;
eq2 = 1*x + 0*y - 1*z == -6;
eq3 = 0*x + 1*y - 3*z == 0;
sol = solve([eq1,eq2,eq3],[x,y,z]);

xsol = sol.x,
ysol = sol.y,
zsol = sol.z,


