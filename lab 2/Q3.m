G_first_order = tf(2, [1, 2]);
G_second_order = tf(1, [1, 10, 1]);
G_second_order_repeated = tf(0.16, [1, 0.8, 0.16]);
step(G_first_order, G_second_order, G_second_order_repeated);
legend