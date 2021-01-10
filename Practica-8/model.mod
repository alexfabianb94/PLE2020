param n := 10;

set N := {1..n};
set A := {i in N, j in N};

# param xcoord{N} := round(Uniform(-100,100));
# param ycoord{N} := round(Uniform(-100,100));
param xcoord{N};
param ycoord{N};
param d{(i,j) in A} := sqrt((xcoord[i] - xcoord[j])^2 + (ycoord[i] - ycoord[j])^2);

param S1 := 20;
param S2 := 50;
param S3 := 70;

param c1 := 50;
param c2 := 80;
param c3 := 100;

var y{N,k in 1..3} binary;

minimize z: sum {j in N} c1*y[j,1] + sum {j in N} c2*y[j,2] +  sum {j in N} c3*y[j,3];
s.t.
    r1 {i in N}: sum{j in N: d[i,j] <= S1} y[j,1] + sum{j in N: d[i,j] <= S2} y[j,2] + sum{j in N: d[i,j] <= S3} y[j,3] >= 1;
