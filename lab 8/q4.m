G = tf([1 1], conv([1 5], conv([1 10], [1, 100])));
bode(G)