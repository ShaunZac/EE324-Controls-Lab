s = poly(0, 's');
R = [2*s+2+1/(s+1) -1/(s+1) -s-1; 
    -1/(s+1) s+3+1/(s+1) -2; 
    -s-1 -2 s+1/(s+1)+6];
V = [0; 0; 1];
req = R^-1*V;