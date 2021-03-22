syms s;
G_den(s) = (s^2 + 4)*(s^2 + 9)*(s + 4);
G_num(s) = (s - 0.5)*(s - 1)*(s - 2)*(s - 3);
den = sym2poly(G_den(s + 1));
num = sym2poly(G_num(s));
bode(tf(1, den));
G = tf(num, den);
figure;
rlocus(G);
