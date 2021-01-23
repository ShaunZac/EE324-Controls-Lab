a = 73;
b = 19;
rise = [];
for x=a:a:100*a
   G = tf(x, [1, b]);
   info =stepinfo(G);
   rise = [rise info.RiseTime];
end
plot(a:a:100*a, round(rise, 4));
title("Rise Time vs a");
xlabel("a");
ylabel("Rise Time (seconds)");
xlim([0, 100*a]);