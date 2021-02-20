denom = conv([1, 2, 2], [1, 10]);
second_order = tf(2, [1, 2, 2]);
third_order = tf(20, denom);
rlocus(second_order, third_order);
legend