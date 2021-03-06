%% Part a
hold on
sys_1 = tf([0 85], [1 7 27 85]);
sys_2 = tf([0 17], [1 2 17]);
step(sys_1, sys_2);
legend("Original", "Approximation")

%% Part b
figure
hold on
sys_3 = tf([1 0.01], [1 101/50 126/25 0.1]);
sys_4 = tf(0.5, [1 2 5]);
step(sys_3, sys_4)
legend("Original", "Approximation")
hold off