%% Part a
cl_g = tf(10, [1, 4, 5, 10]);
ol_g = minreal(cl_g/(1-cl_g));
rlocus(ol_g);

%% Part b
figure
rlocus(tf([1, 1], [1, 3.6, 0, 0]));

%% Part c
figure
rlocus(tf([1, 0.4], [1, 3.6, 0, 0]));

%% Part d
figure
hold on
for p=0:0.2:7
    rlocus(tf([1, p], [1, 3.6, 0, 0]));
end