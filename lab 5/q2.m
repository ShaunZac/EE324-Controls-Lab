%% Part a
rlocus(tf([1, 0, 1], [1, 0, -1]));

%% Part b
figure
rlocus(tf(1, [1, 0, 0, 0, 0, 0, -1]));

%% Part c
figure
rlocus(tf(1, conv([1, 2], [1, 3])));

%% Part d
syms s
den(s) = (-s^2 - 9)*(-s^2 - 4);
figure
denom_1 = sym2poly(den(s));
rlocus(tf(1, denom_1));
figure
denom_2 = sym2poly(den(s-1));
rlocus(tf(1, denom_2));