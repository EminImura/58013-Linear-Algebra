% 3x-5y+4z=5
% 5x+2y+z=0
% 2x+3y-2z=3
syms x y z;
eq1 = 3*x - 5*y + 4*z == 5,
eq2 = 5*x + 2*y + 1*z == 0,
eq3 = 2*x + 3*y - 2*z == 3,
sol = solve([eq1,eq2,eq3],[x,y,z]),

xsol = sol.x,
ysol = sol.y,
zsol = sol.z,
