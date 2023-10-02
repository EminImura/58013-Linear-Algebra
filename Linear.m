a = [1,1,1; 1,2,2; 1,2,3],
a1 = [5,1,1; 6,2,2; 8,2,3],
a2 = [1,5,1; 1,6,2; 1,8,3],
a3 = [1,1,5; 1,2,6; 1,2,8],

adet = det(a),
a1det = det(a1),
a2det = det(a2),
a3det = det(a3),

x1 = a1det/adet,
x2 = a2det/adet,
x3 = a3det/adet,

