%% Part a
k = 4;
gain = tf(k, 1);
G1 = tf(10, [1, 6, 8, 0]);
G2 = series(G1, gain);
G = feedback(G2, 1);

%% Part b and c
hold on
k_poles = zeros(1, 1000);
i = 1;
for k=0.1:0.1:100
    gain = tf(k, 1);
    G_series = series(G1, gain);
    G_k = feedback(G_series, 1);
    poles = pole(G_k);
    k_poles(i) = max(real(poles));
    plot(poles, 'x');
    i = i + 1;
end
xlabel("Real part")
ylabel("Imaginary Part")
title("Pole Plots for varying K ");
xline(0);
grid on
figure
hold on
xlabel("k");
ylabel("Real part of rightmost pole");
title("Instability threshold as a factor of k");
k = 0.1:0.1:100;
yline(0);
plot(k, k_poles);
min(k(k_poles > 0.01))

%% Part d
k = 4.9;
gain = tf(k, 1);
G_series = series(G1, gain);
G_k = feedback(G_series, 1);
[num, den] = tfdata(G_k);
k_table = rhStabilityCriterion(den{1}, 0); 

