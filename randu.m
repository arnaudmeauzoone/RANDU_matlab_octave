NB = 10000;

A = [];
B = [];
C = [];

seed = 1;

prec = seed;

for i = 1:NB;

  A = [A,prec/2**31];

  prec = mod(65539*prec, 2**31);

  B = [B,prec/2**31];

  prec = mod(65539*prec, 2**31);

  C = [C,prec/2**31];

  prec = mod(65539*prec, 2**31);

endfor

plot3(A,B,C, ".")
