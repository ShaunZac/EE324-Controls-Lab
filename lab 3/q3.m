%% Part a
G_orig = tf(9, [1, 2, 9]);
[z, p, k] = tf2zpk(9, [1, 2, 9]);
disp(p);
G_zero = tf([9, 9], [1, 2, 9]);
no_zero_info = stepinfo(G_orig);
zero_info = stepinfo(G_zero);
sys_info = [no_zero_info zero_info];
sys_info = struct2table(sys_info);
step(G_orig, G_zero);
sys_info(:, ["Overshoot", "RiseTime", "SettlingTime", "PeakTime"])
legend

%% Part b
G_pole_close = zpk([], [p; -1], k);
G_pole_far = zpk([], [p; -10], k*10);
pole_close_info = stepinfo(G_pole_close);
pole_far_info = stepinfo(G_pole_far);
sys_info_pole = [pole_close_info pole_far_info];
sys_info_pole = struct2table(sys_info_pole);
sys_info_pole(:, ["Overshoot", "RiseTime", "SettlingTime", "PeakTime"])
figure
step(G_pole_close, G_pole_far);
legend