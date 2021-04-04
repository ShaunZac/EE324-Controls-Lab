G = zpk([], [0, -5, -20], 1000);
C1 = tf([1, 3], [1, 1]);
C2 = tf([1, 1], [1, 3]);
G_lag = G*C1;
G_lead = G*C2;
nyquist(G, G_lag, G_lead);
legend
figure;
margin(G);
figure;
margin(G_lag);
figure;
margin(G_lead);