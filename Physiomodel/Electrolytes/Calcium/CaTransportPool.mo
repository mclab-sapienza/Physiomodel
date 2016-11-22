within Physiomodel.Electrolytes.Calcium;
block CaTransportPool
    Modelica.Blocks.Interfaces.RealInput Calcitriol
                                         annotation (Placement(transformation(
        extent={{-100,40},{-60,80}}), iconTransformation(extent={{-100,40},{-60,
          80}})));
    Modelica.Blocks.Interfaces.RealInput CaIntestinal
                                           annotation (Placement(
      transformation(extent={{-104,-26},{-64,14}}), iconTransformation(extent=
         {{-100,-40},{-60,0}})));
    Modelica.Blocks.Interfaces.RealOutput J_ipCa_activeAbsorbtion
                                                       annotation (Placement(
      transformation(extent={{80,-20},{120,20}}), iconTransformation(extent={{
          80,-20},{120,20}})));
    parameter Real Q_TCai_initial = 0;
    parameter Real Y2_Cai_Max = 1;

    Real Q_TCai;
    Real change;
    Real k1D;
    Real k2D;
    Factors.Y2 Y2_Cai(affinity=1, Y_Max=Y2_Cai_Max)
    annotation (Placement(transformation(extent={{-34,-16},{-14,4}})));
initial equation
    Q_TCai = Q_TCai_initial;
equation
    der( Q_TCai)  = change;
    change = ( 1-Q_TCai)  * k1D - Q_TCai * k2D;
    Y2_Cai.yBase = change*Y2_Cai_Max;
    J_ipCa_activeAbsorbtion = Y2_Cai.y;

    k1D = 0.02;
    k2D = 0.02;

    connect(CaIntestinal, Y2_Cai.u) annotation (Line(
    points={{-84,-6},{-33.8,-6}},
    color={0,0,127},
    smooth=Smooth.None));
end CaTransportPool;