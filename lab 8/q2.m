K_1s = 0.1:0.1:2;
K_2s = K_1s/5;
figure
hold on
for i = 1:20
    G = tf([1, K_1s(i)], [1, K_2s(i)]);
    step(G);
end
legend("K_1 = " + string(K_1s))
hold off

figure
hold on
for i = 1:20
    G = tf([1, K_1s(i)], [1, K_2s(i)]);
    impulse(G);
end
legend("K_1 = " + string(K_1s))
hold off