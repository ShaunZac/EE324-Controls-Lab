s = poly(0, 's');
t = 0:0.01:10;
G_cont = syslin('c', 1/s);
cont_resp = csim('step', t, G_cont);
plot2d(t, cont_resp);
title("Step Response");
xlabel("Amplitude");
ylabel("time (seconds)");
show_window(1);

u=ones(1,20);
G_disc = tf2ss(1/s);
disc_resp = dsimul(G_disc, u);
plot2d(0:1:19, disc_resp);
title("Step Response");
xlabel("Amplitude");
ylabel("n");

show_window(2);
direct_resp = csim('step', t, 1/s);
plot2d(t, direct_resp);
title("Step Response Direct");
xlabel("Amplitude");
ylabel("time (seconds)");
