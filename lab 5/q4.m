G = tf(0.11*[1, 0.6], [6, 3.6127, 0.0572]);
rlocus(G);
kp = (100-dcgain(G))/(dcgain(G)^2);
series_G = series(G, kp);
net_G = feedback(series_G, 1);
figure
step(net_G);
