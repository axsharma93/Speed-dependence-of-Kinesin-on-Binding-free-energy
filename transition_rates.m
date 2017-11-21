% Transition Rate Between different chemical states
g=200;   k12=g*eye(N);     g=0.001;   k21=g*eye(N);
g=300;   k23=g*eye(N);     g=0.6;     k32=g*eye(N);
g=600;   k34=g*eye(N);     g=127;     k43=g*eye(N);
g=43;    k41=g*eye(N);     g=100;     k14=g*eye(N);
