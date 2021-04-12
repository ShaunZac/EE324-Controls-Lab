T = [1, 2, 3; 4, 5, 6; 7, 8, 8];
A = [1, 0, 0; 5, 5, 0; 7, 3, 9];
B = [1; 0; 0];
C = [1, 2, 3];
D = 1;

C_new = C*T;
B_new = T\ B;
A_new = (T\A)*T;

syms s;
G = simplify(D + C*((s*eye(3) - A)\B));
G_tx = simplify(D + C_new*((s*eye(3) - A_new)\B_new));

[~, den] = numden(G);
den_roots = roots(sym2poly(den));
eigenvals = eig(A);

G1 = tf([1 2 3], [1 2 5]);
G1_s = ss(G1);
G2 = tf([1 2], [1 2 5]);
G2_s = ss(G2);