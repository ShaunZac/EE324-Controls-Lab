%% Part a and b
G = tf(1, conv([1, 7, 12], [1, 12]));
C = tf([1, 0.01], [1, 0]);
rlocus(C*G);
%ylim([-100, 100]);
sgrid(0.2, [0, 9, 8]);

%% Part c
z_range = [0.001 , 0.01, 0.1, 1, 10];
figure
hold on
for z=z_range
    C = tf([1, z], [1, 0]);
    rlocus(C*G);
end
legend("z = " + string(z_range));