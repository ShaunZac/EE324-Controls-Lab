%% Part a
P1 = [1 2 3 4 5 6 3];
R_P1 = rhStabilityCriterion(P1, 0);

%% Part b
P2 = conv(P1, [1 2 10]);
R_P2 = rhStabilityCriterion(P2, 0);

%% Part c
P3 = [1 2 3 4 5 6 4];
R_P3 = rhStabilityCriterion(P3, 0);