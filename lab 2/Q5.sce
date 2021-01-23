s = poly(0, 's');
G1 = syslin('c', (s+5)/((s+4)*(s+2)));
G2 = syslin('c', (s+5)/(s+4));
G3 = syslin('c', 1/(s+2));
for tau=[0.1 0.5 2]
    show_window(2*tau);
    t = [0:tau:10]';
    resp_1 = csim('step', t, G1);
    resp_2 = csim('step', t, G2);
    resp_2 = csim(resp_2, t, G3);
    resp_3 = csim('step', t, G3);
    resp_3 = csim(resp_3, t, G2);
    size(resp_1)
    size(resp_2)
    size(resp_3)
    plot2d(t, [resp_1' resp_2' resp_3']);
    title("Tau = " + string(tau));
    xlabel("time (seconds)");
    ylabel("Amplitude");
    legend(['All Together', '(s+5)/(s+4) first', '1/(s+2) first']);
end
