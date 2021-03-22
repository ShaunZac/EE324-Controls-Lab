G = tf(1, [1, 4, 8, 0]);

K_range = 0.1:0.1:35;
Gms = [];
Pms = [];
i = 1;
for k=K_range
    [Gm, Pm, ~, ~] = margin(G*k);
    Pms(i) = Pm;
    Gms(i) = Gm;
    i = i + 1;
end
figure
hold on
plot(K_range, Gms);
plot(K_range, Pms);
ylabel("G_m and P_m");
title("G_m and P_m vs K");
xlabel("K")
legend(["G_m", "P_m"])
hold off