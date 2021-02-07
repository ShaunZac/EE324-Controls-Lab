%% Part a
G1 = tf(1, [1, 0, 0]); % G(s) = 1/s^2
G2 = tf([50 0], [1 1 100]);
G3 = tf([1, -2], 1);
G4 = series(G2, G3);
G5 = series(G4, G1);
G_a = feedback(G5, 1);

%% Part b
G1 = tf([1, 0], 1); % G(s) = s
G2 = series(G1, G1);
G3 = tf(1, [1, 0]); % G(s) = 1/s
G4 = G3 + G2;
G5 = feedback(G4, 1);
G6 = series(G5, G3);
G_b = feedback(G6, G1);

%% Part c
G1 = tf([1, 0], 1); % G(s) = s
G2 = feedback(G1, 1);
G3 = feedback(tf(1, [1, 1]), 1+4);
G4 = G1 + 2*G1;
G5 = series(G4, G2);
G6 = G5 + 2*G1;
G7 = series(G6, G3);
G_c = feedback(G7, 1);