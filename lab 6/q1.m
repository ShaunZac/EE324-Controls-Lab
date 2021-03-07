%% Part a
G = tf(1, conv([1, 7, 12], [1, 12]));
k = (1/0.489 - 1)/dcgain(G)

%% Part b
rlocus(G);
sgrid(0.35, 10);

%% Part d
k_d = 0:0.05:1;
figure
hold on
for k = k_d
    step(feedback(k*G, 1))
end
legend("K=" + string(k_d))
hold off

%% Part e
k_e = 0:50:1000;
figure
hold on
for k = k_e
step(feedback(k*G, 1))
end
legend("K=" + string(k_e))
hold off