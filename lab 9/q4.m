G = tf(1, [1, 3, 2, 0]);
rlocus(G);
figure;
nyquist(G);
figure;
asymp(G, 10^-2, 10^2);
figure;
margin(G);