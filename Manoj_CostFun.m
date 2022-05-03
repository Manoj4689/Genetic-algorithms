function  Z = Manoj_CostFun(P)

     L = [0.8 0.85 0.87 0.82 0.75];
     t = 10;

     R =  exp(-L*t);
     Rstar = 5e-7;
     C = [1000 1100 1200 1150 1400];

     Cf = 5000;

     C_P = C(P);
     R_P = R(P);
R1 = R_P(1);  R2  = R_P(2); R3 = R_P(3); R4 = R_P(4);


     Rs = R1*R2+R1*R3+R1*R4+R2*R3+R2*R4+R3*R4-R1*R2*R3-R1*R3*R4-R2*R3*R4+R1*R2*R3*R4;

if Rs>Rstar
     Z = vpa(sum(C_P)+(1-Rs)*Cf);
else
    Z = 1e+20;

end