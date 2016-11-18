within Physiomodel.Hormones;

model Angiotensine2
    //  extends Library.Interfaces.Tissues.Liver;
    //  extends Library.Interfaces.Tissues.Kidney;
    extends Physiolibrary.Icons.Lungs;

    // outer parameter Real ECF_Vol(final displayUnit="ml");

    Physiolibrary.Blocks.Factors.Normalization A2 annotation (Placement(transformation(extent={{-2,-2},{18,18}})));
    Physiolibrary.Types.Constants.ConcentrationConst A2CONC(k=0.3333e-9/
      Substances.AngiotensinII.mw) "0.3333 pg/ml = 0.3333*1e-15/1e-6 kg/m3"
    annotation (Placement(transformation(extent={{-24,52},{-4,72}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-88,78},{-68,98}}), iconTransformation(extent=
         {{-90,-70},{-70,-50}})));
    Modelica.Blocks.Interfaces.RealInput Renin annotation (Placement(transformation(extent={{-74,8},{-54,28}}),
        iconTransformation(extent={{-100,20},{-60,60}})));
    Modelica.Blocks.Interfaces.RealOutput Angiotensine2(
                                               final displayUnit="pg/ml", quantity="Concentration")
                                                          annotation (
      Placement(transformation(extent={{18,-66},{38,-46}}),
        iconTransformation(extent={{80,-20},{120,20}})));
    Renin_Physiolibrary.Types.Constants.ConcentrationConst
                                                 CEBase_ReninConc(k=1e6/30)
    "1 Gu/ml = 1e6 Gu/m3"
    annotation (Placement(transformation(extent={{-66,-12},{-46,8}})));
    Modelica.Blocks.Math.Division EndogenousRate
    annotation (Placement(transformation(extent={{-30,-2},{-10,18}})));
equation
    connect(A2CONC.y, A2.yBase)
    annotation (Line(
      points={{-1.5,62},{8,62},{8,10}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(CEBase_ReninConc.y, EndogenousRate.u2) annotation (Line(
      points={{-43.5,-2},{-40,-2},{-40,2},{-32,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Renin, EndogenousRate.u1) annotation (Line(
      points={{-64,18},{-40,18},{-40,14},{-32,14}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(A2.u, EndogenousRate.y)
    annotation (Line(
      points={{0,8},{-9,8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(A2.y, Angiotensine2)
    annotation (Line(
      points={{8,4},{8,-56},{28,-56}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(A2.y, busConnector.Angiotensin2) annotation (Line(
      points={{8,4},{8,-10},{28,-10},{28,88},{-78,88}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(A2.y, busConnector.AngiotensinII) annotation (Line(
    points={{8,4},{10,4},{10,-2},{72,-2},{72,88},{-78,88}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-128,102},{106,80}},
          lineColor={0,0,255},
          textString="%name")}));
end Angiotensine2;