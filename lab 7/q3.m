%% Part a ts = 2.3328 for prev, need half
G = tf(1, [1, 3, 2]);
C = tf([1, 4], [1, 8.5]);
os = 10;
d = sqrt(log(os/100)^2/(pi^2 + log(os/100)^2));
hold on
xline(-3, '--b');
rlocus(G*C);
ylim([-10, 10]);
sgrid(d, 10);

%% Part b
figure
G = tf(1, [1, 3, 2]);
C = tf([1, 8], 1);
os = 10;
d = sqrt(log(os/100)^2/(pi^2 + log(os/100)^2));
hold on
xline(-3, '--b');
rlocus(G*C);
ylim([-10, 10]);
sgrid(d, 10);