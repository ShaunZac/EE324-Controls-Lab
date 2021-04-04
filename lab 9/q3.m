G = tf(100, [1, 30]);
margins = allmargin(G);
min_delay = margins.DelayMargin;
G_delay = tf(100, [1, 30], "InputDelay", min_delay);
margin(G);
figure
margin(G_delay);