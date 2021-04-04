hold on;
sigma=1:3:15;
for i=sigma
    G = tf([1, 0, 50^2], [1, i, 50^2]);
    bode(G);
end
legend("\sigma = " + string(sigma))