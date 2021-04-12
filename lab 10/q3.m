syms s;

A = [1, 0, 0; 0, 2, 0; 0, 0, 3];
B = [1; 1; 0];
C = [1, 1, 1];

G1 = simplify(C*((s*eye(3) - A)\B));

B_vect = [1; 1; 1];
C_1 = [1, 0, 1];
G2 = simplify(C_1*((s*eye(3) - A)\B_vect));