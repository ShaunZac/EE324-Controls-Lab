a = 73;
b = 19;
rise = [];
for x=b:b:100*b
   G = tf(a, [1, x]);
   info =stepinfo(G);
   rise = [rise info.RiseTime];
end
plot(b:b:100*b, round(rise, 4));
title("Rise Time vs b");
xlabel("b");
ylabel("Rise Time (seconds)");
xlim([0, 100*b]);