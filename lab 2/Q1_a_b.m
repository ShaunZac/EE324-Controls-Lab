a = 73;
b = 19;
G = tf(a, [1, b]);
info = stepinfo(G);
step(G);