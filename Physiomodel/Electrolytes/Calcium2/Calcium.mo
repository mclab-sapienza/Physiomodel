within Physiomodel.Electrolytes.Calcium2;
model Calcium

  parameter Real D[:] = {1};
  parameter Real GFR(displayUnit="l/h")=6;

  Real A[11];
  Real v_intake;
  Real v1_4;
  Real v4_u;

  function H
    input Real x;
    input Real alpha;
    input Real delta;
    input Real gamma=1;
    output Real value;
  algorithm
    value:=alpha*x^gamma/(delta^gamma+x^gamma);
  end H;

  function H_minus
    input Real x;
    input Real alpha;
    input Real delta;
    input Real gamma=1;
    input Real ro;
    output Real value;
  algorithm
    value:=alpha-(alpha-ro)*x^gamma/(delta^gamma+x^gamma);
  end H_minus;

  function H_plus
    input Real x;
    input Real alpha;
    input Real delta;
    input Real gamma=1;
    input Real ro;
    output Real value;
  algorithm
    value:=ro+(alpha-ro)*x^gamma/(delta^gamma+x^gamma);
  end H_plus;

  Real H62p;
  Real H62m;
  Real v1_4a;
  Real v1_4p;
  Real T64p;
  Real T64m;
  Real a;
  Real b;
  Real c;

  parameter Real ECFV(displayUnit="l") = 32.9/2.4;
  parameter Real ECFV2(displayUnit="l") = 1260/90;
  parameter Real GILumenVolume(displayUnit="l") = 1.3;
initial equation
    A[1] = 1.3;  //Ca gut
    A[2] = 0.5;   //Ca transporters
    A[3] = 0.839;
    A[4] = 32.9; //Ca pool
    A[5] = 16.8;
    A[6] = 1260;
    A[7] = 53.9;
    A[8] = 3226;
    A[9] = 126;
    A[10] = 0.5;
    A[11] = 1;
equation
  //gut
  v_intake = D[1] * H_plus(A[2],0.9,0.75,4,0.25); //alpha was calculated == 0.35
  der( A[1])  = v_intake - v1_4;
  v1_4 = v1_4a + v1_4p;
  v1_4a = (H(A[1]/GILumenVolume,0.9,1,1) * (A[2]/0.5) / (A[1] + 0.75)) * A[1];
  v1_4p = (0.0495) * A[1];

  //transporters
  H62p = H_plus(A[6]/ECFV2,0.037,90,1,0.003);
  H62m = H_minus(A[6]/ECFV2,0.037,90,1,0.003);
  der( A[2])  = H62p*(1-A[2])- H62m*A[2];

  //Ca pool
  der(A[4]) = 0; //v1_4 - v4_u;

  //to urine
  v4_u = (2-H(A[6]/ECFV2,2,90,1)) * (0.3*GFR*A[4] - H(A[4]/ECFV2,(-0.38+59.22)/0.317936,1.573,1)*H(A[7]/ECFV2,1.0615,53.9/ECFV2,1));
  //!!it's used concentration of ecf Ca, not the mass such as in the article!!, H_4-u:alpha was calculated, H7,4-u:delta was assumed as normal ecf PTH concentration
  //a = (2-H(A[6]/ECFV2,2,90,1)) * (0.3*GFR*A[4]);
  //b = (2-H(A[6]/ECFV2,2,90,1)) * (H(A[4]/ECFV2,1,1.573,1)*H(A[7]/ECFV2,1.0615,53.9/ECFV2,1));
  //v4_u = v1_4;

  //calcitriol
  der( A[6])  = A[9] -0.1 *A[6];
  der( A[9])  = 6.3*H(A[7]/ECFV2, 1.90371, 1.549,0.1112)*( if A[5]<=16.8 then 1 else H_minus(A[5]/ECFV2,1.525,1.302,8.252,-1.78249))  -0.05 *A[9]; //H7,9:alpha was calculated,
  //a = 6.3*H(A[7]/ECFV2, 1.90371 ,1.549,0.1112);
  //c =  if A[5]<16.8 then 1 else H_minus(A[5]/ECFV2,1.525,1.302,8.252,1.181);
  //b = 0.05 *A[9];

  //PTH
  der( A[7])  =  H_minus(A[4]/ECFV2,96.25, 3.037, 11.74,6249)*(A[10]/0.5)*A[11] - 7.143*A[7];
  a= H_minus(A[4]/ECFV2,96.25, 3.037, 11.74,6249)*(A[10]/0.5)*A[11];
  b=7.143*A[7];
  c=b/((A[10]/0.5)*A[11]);

  der( A[10])  = (1-A[10])*0.01*(0.85*T64m+0.15) - A[10]*0.01*(0.85*T64p+0.15);
  T64m = 1-(exp(0.03*(A[6]/14 - 90*(32.9/A[4]))) - exp(-0.03*(A[6]/14 - 90*(32.9/A[4])))) / (exp(0.03*(A[6]/14 - 90*(32.9/A[4]))) + exp(-0.03*(A[6]/14 - 90*(32.9/A[4]))));
  T64p = 1+(exp(0.03*(A[6]/14 - 90*(32.9/A[4]))) - exp(-0.03*(A[6]/14 - 90*(32.9/A[4])))) / (exp(0.03*(A[6]/14 - 90*(32.9/A[4]))) + exp(-0.03*(A[6]/14 - 90*(32.9/A[4]))));

  der( A[11])  =0.0001604  *H_minus(A[6]/ECFV2,4.103,69,12.5,0.9) -0.0001604*A[11];

  //phosphate
  der(A[3])=0;
  der(A[5])=0;
  der(A[8])=0;
end Calcium;