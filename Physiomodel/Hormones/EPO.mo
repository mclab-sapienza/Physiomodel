within Physiomodel.Hormones;
model EPO
    extends Physiolibrary.Icons.Kidney;
    // outer parameter Real ECF_Vol(final displayUnit="ml");

    EPO_Physiolibrary.Chemical.Components.Substance EPOPool(
    stateName="EPOPool.Mass",
    useNormalizedVolume=false,
    solute_start=(20e3*14361.0097207699*0.4)*1e-6)
    "default = 20 iu/l = 20e3 iu/m3 "
    annotation (Placement(transformation(extent={{-50,-54},{-30,-34}})));
    //NominalSolute=Substances.Erythropoietin.molpIU

    EPO_Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{76,-54},{56,-34}})));
    Physiolibrary.Blocks.Factors.Normalization CountEffect
    annotation (Placement(transformation(extent={{56,24},{76,44}})));
    Physiolibrary.Types.Constants.FractionConst             hormoneFlowConstant(k=1)
         annotation (Placement(transformation(extent={{-4,32},{-12,40}})));
    Physiolibrary.Blocks.Factors.Spline PO2Effect(data={{0.0,4.0,0},{35.0,0.0,-0.14},
      {60.0,-1.0,0}}, Xscale=101325/760)
    "cortex pO2=50 mmHg; medulla pO2 = 10-20 mmHg [Brezis&Rosen1995]; erythropoietin-producing cells are in the interstitium of the cortex and outer medulla [Maxwell1993]"
    annotation (Placement(transformation(extent={{-24,14},{-4,34}})));
    EPO_Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
     annotation (Placement(
      transformation(
      extent={{-10,-10},{10,10}},
      origin={-38,-32})));                                              //(toAnotherUnitCoef=1000, unitsString="U/l")
    EPO_Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut Clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-30,-98},{-10,-78}})));
    Modelica.Blocks.Math.Gain K(k(unit="1/s")=0.00555/60)
    annotation (Placement(transformation(extent={{-3,-3},{3,3}},
        origin={-31,-77})));
    EPO_Physiolibrary.Types.Constants.MolarFlowRateConst hormoneFlowConstant1(k=(
      0.67)/60)
    annotation (Placement(transformation(extent={{82,42},{70,54}})));
    Modelica.Blocks.Math.Gain VODIST(k=0.4)
    annotation (Placement(transformation(extent={{-6,-6},{6,6}},
        origin={-64,-40})));
    Physiolibrary.Blocks.Math.Power avg1
    annotation (Placement(transformation(extent={{-8,10},{0,18}})));
    Physiolibrary.Blocks.Factors.Normalization FunctionEffect
    annotation (Placement(transformation(extent={{56,14},{76,34}})));
    Physiolibrary.Blocks.Factors.Normalization PO2Effect_
    annotation (Placement(transformation(extent={{56,4},{76,24}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-88,78},{-68,98}}), iconTransformation(extent=
         {{-90,-70},{-70,-50}})));
    EPO_Physiolibrary.Types.RealIO.ConcentrationOutput
                                        Erythropoetin                  annotation (
      Placement(transformation(extent={{-2,-38},{18,-18}}),
        iconTransformation(extent={{80,-20},{120,20}})));
equation
        connect(EPOPool.q_out, secretion.q_out)     annotation (Line(
        points={{-40,-44},{56,-44}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(concentrationMeasure.q_in,EPOPool. q_out)     annotation (Line(
        points={{-38,-34},{-38,-44},{-40,-44}},
        color={200,0,0},
        smooth=Smooth.None));
        connect(concentrationMeasure.concentration, busConnector.Erythropoietin) annotation (
        Line(
        points={{-38,-28},{-37,-28},{-37,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(EPOPool.q_out, Clearance.q_in)   annotation (Line(
        points={{-40,-44},{-54,-44},{-54,-88},{-30,-88}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(EPOPool.solute, K.u) annotation (Line(
        points={{-34,-54},{-34,-77},{-34.6,-77}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Clearance.soluteFlow, K.y) annotation (Line(
        points={{-16,-84},{-16,-77},{-27.7,-77}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.KidneyO2_TubulePO2, PO2Effect.u)
                                        annotation (Line(
        points={{-78,88},{-64.9,88},{-64.9,24},{-22,24}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Kidney_NephronCount_Total_xNormal, CountEffect.u)
                                       annotation (Line(
        points={{-78,88},{5.1,88},{5.1,34},{58,34}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(hormoneFlowConstant1.y, CountEffect.yBase)
                                                   annotation (Line(
        points={{68.5,48},{66,48},{66,36}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(hormoneFlowConstant.y,PO2Effect. yBase) annotation (Line(
        points={{-13,36},{-14,36},{-14,26}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.ECFV_Vol, VODIST.u) annotation (Line(
        points={{-78,88},{-90.6,88},{-90.6,-40},{-71.2,-40}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));

        connect(CountEffect.y, FunctionEffect.yBase) annotation (Line(
        points={{66,30},{66,26}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(FunctionEffect.y, PO2Effect_.yBase) annotation (Line(
        points={{66,20},{66,16}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(PO2Effect_.y, secretion.soluteFlow) annotation (Line(
        points={{66,10},{66,-16},{66,-40},{62,-40}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(avg1.y, PO2Effect_.u) annotation (Line(
        points={{0.4,14},{58,14}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(FunctionEffect.u, busConnector. kidney_FunctionEffect) annotation (Line(
        points={{58,24},{5.1,24},{5.1,88},{-78,88}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));

        connect(concentrationMeasure.concentration, Erythropoetin) annotation (Line(
        points={{-38,-28},{8,-28}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(VODIST.y, EPOPool.solutionVolume) annotation (Line(
        points={{-57.4,-40},{-44,-40}},
        color={0,0,127},
        smooth=Smooth.None));

        connect(PO2Effect.y, avg1.exponent)
        annotation (Line(
        points={{-14,20},{-14,11.6},{-8,11.6}},
        color={0,0,127},
        smooth=Smooth.None));
        annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-116,104},{118,82}},
          lineColor={0,0,255},
              textString="%name")}));
end EPO;
