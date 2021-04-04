G = tf([10, 2000], [1, 202, 490, 18001]);
margin(G);
figure;
g = dcgain(G);
sse_old = 1/(1 + g);
sse_new = sse_old/10;
k = (1/sse_new - 1)/g;
margin(k*G);
G_better_pm = G*k*tf([1, 1], 1);
figure;
margin(G_better_pm)
