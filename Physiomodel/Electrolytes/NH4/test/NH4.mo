within Physiomodel.Electrolytes.NH4.test;
model NH4
    extends Physiolibrary.Icons.Amonium;
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 AcuteEffect(
    data={{7.00,2.0,0},{7.45,1.0,-3.0},{7.80,0.0,0}})
    annotation (Placement(transformation(extent={{-60,52},{-40,72}})));
    Physiolibrary.Factors.NonlinearSystemPatch.Spline3DelayByDay
    ChronicEffect(Tau=3, data={{7.00,3.0,0},{7.45,1.0,-4.0},{7.80,0.0,0}})
    annotation (Placement(transformation(extent={{-60,42},{-40,62}})));
    Physiolibrary.Factors.NonlinearSystemPatch.SplineValue3 PhOnFlux( data=
    {{7.00,1.0,0},{7.45,0.6,-2.0},{7.80,0.0,0}})
    annotation (Placement(transformation(extent={{-60,26},{-40,46}})));
    Physiolibrary.Types.Constants.ElectricCurrentConst
    electrolytesFlowConstant(k=0.064323559933332)
    annotation (Placement(transformation(extent={{-68,74},{-56,86}})));
    Modelica.Blocks.Interfaces.RealInput BloodPh_ArtysPh
    annotation (Placement(transformation(extent={{-90,58},{-82,66}}),
    iconTransformation(extent={{-100,88},{-88,100}})));
    Modelica.Blocks.Interfaces.RealOutput CD_NH4_Outflow
                              annotation (Placement(transformation(extent={{-44,10},
        {-36,18}}),        iconTransformation(extent={{100,80},{120,
    100}})));
equation
    connect(AcuteEffect.y, ChronicEffect.yBase) annotation (Line(
    points={{-50,60},{-50,54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ChronicEffect.y, PhOnFlux.yBase) annotation (Line(
    points={{-50,50},{-50,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(electrolytesFlowConstant.y, AcuteEffect.yBase) annotation (Line(
    points={{-55.4,80},{-50,80},{-50,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AcuteEffect.u, BloodPh_ArtysPh) annotation (Line(
    points={{-59.8,62},{-86,62}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodPh_ArtysPh, ChronicEffect.u) annotation (Line(
    points={{-86,62},{-74,62},{-74,52},{-59.8,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodPh_ArtysPh, PhOnFlux.u) annotation (Line(
    points={{-86,62},{-74,62},{-74,36},{-59.8,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PhOnFlux.y, CD_NH4_Outflow) annotation (Line(
    points={{-50,34},{-50,14},{-40,14}},
    color={0,0,127},
    smooth=Smooth.None));
end NH4;