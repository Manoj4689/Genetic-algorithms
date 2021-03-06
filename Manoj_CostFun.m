function  Z = Manoj_CostFun(P)

     L =[0.52	0.56	0.58	0.6	0.72	0.74	0.78	0.8	0.82	0.84	0.85	0.86	0.88	0.9	0.92];
     t = 10;

     R =  exp(-L*t);
     Rstar = 5e-7;
     C =  [80000	82000	78000	75000	85000	64000	72000	69000	84000	87000	92000	85000	74000	95000	89000];

     Cf = 332000;

     C_P = C(P);
     R_P = R(P);
R1 = R_P(1);  R2  = R_P(2); R3 = R_P(3); R4 = R_P(4);


     Rs = R1*R2+R1*R3+R1*R4+R2*R3+R2*R4+R3*R4-R1*R2*R3-R1*R3*R4-R2*R3*R4+R1*R2*R3*R4;

if Rs>Rstar
     Z = vpa(sum(C_P)+(1-Rs)*Cf);
else
    Z = 1e+20;

end
