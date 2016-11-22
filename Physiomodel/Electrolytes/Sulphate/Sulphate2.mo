within Physiomodel.Electrolytes.Sulphate;

model Sulphate2
  import Physiomodel;
     extends Physiolibrary.Icons.Sulphate;
  Physiolibrary.Chemical.Components.Substance SO4Pool(
    stateName="SO4Pool.Mass",
    useNormalizedVolume=false,
    solute_start=(4.00254)/1000)
    annotation (Placement(transformation(extent={{-64,14},{-44,34}})));
  Physiolibrary.Chemical.Sources.UnlimitedSolutePump Diet(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-88,-4},{-68,16}})));
  Physiolibrary.Chemical.Components.Stream glomerulusPhosphateRate(
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-2,14},{18,34}})));
    GlomerulusStrongAnionFiltration glomerulus
      annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
      annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-18,4})));
  Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure
    annotation (Placement(transformation(extent={{18,34},{38,14}})));
    Modelica.Blocks.Math.Gain gain1(k=0.5)
      annotation (Placement(transformation(extent={{-52,-6},{-48,-2}})));
  Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-96,76},{-84,88}}), iconTransformation(
          extent={{60,60},{100,100}})));
  Physiolibrary.Types.Constants.MolarFlowRateConst        Constant7(k(displayUnit=
           "mol/s") = 2.8935185185185185185185185185185e-7)
    annotation (Placement(transformation(extent={{-88,20},{-80,28}})));
  Physiolibrary.Blocks.Factors.Spline LeptinEffect2(data={{0,3.0,0},{8,1.0,
        -0.04},{50,0.0,0}}, Xscale=1e-6/Substances.Leptin.mw)
    annotation (Placement(transformation(extent={{-88,6},{-68,26}})));
  Physiolibrary.Types.Concentration ECF_conc;
    Physiomodel.Electrolytes.Bladder bladder(stateVarName="BladderSulphate.Mass")
      annotation (Placement(transformation(extent={{64,6},{84,26}})));
  Modelica.Blocks.Math.Gain eq2mol(k=0.5) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={32,56})));
equation
        ECF_conc =concentrationMeasure.concentration;
        connect(SO4Pool.solutionVolume, busConnector.ECFV_Vol) annotation (Line(
        points={{-58,28},{-67,28},{-67,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,1},{3,1}}));

        connect(Diet.q_out,SO4Pool. q_out) annotation (Line(
        points={{-68,6},{-60,6},{-60,24},{-54,24}},
        color={200,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(glomerulusPhosphateRate.solutionFlow, busConnector.GlomerulusFiltrate_GFR)
        annotation (Line(
        points={{8,31},{8,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,1},{3,1}}));
        connect(glomerulus.q_out, glomerulusPhosphateRate.q_in)
                                                     annotation (Line(
        points={{-8,24},{-2,24}},
        color={200,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(SO4Pool.q_out, glomerulus.q_in) annotation (Line(
        points={{-54,24},{-28,24}},
        color={200,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(concentrationMeasure.q_in, SO4Pool.q_out) annotation (Line(
        points={{-20,4},{-36,4},{-36,24},{-54,24}},
        color={200,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(glomerulusPhosphateRate.q_out, flowMeasure.q_in) annotation (
        Line(
        points={{18,24},{18,24}},
        color={200,0,0},
        smooth=Smooth.None,
        thickness=1));
        connect(busConnector.BloodIons_Cations, glomerulus.Cations) annotation (Line(
        points={{-90,82},{-24,82},{-24,29}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-3,1},{-3,1}}));
        connect(gain1.y, busConnector. SO4Pool_Osmoles) annotation (Line(
        points={{-47.8,-4},{98,-4},{98,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,1},{3,1}}));
        connect(gain1.u, SO4Pool.solute) annotation (Line(
        points={{-52.4,-4},{-48,-4},{-48,14}},
        color={0,0,127},
        smooth=Smooth.None));

        connect(busConnector.Leptin, LeptinEffect2.u) annotation (Line(
        points={{-90,82},{-96,82},{-96,16},{-86,16}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(Constant7.y,LeptinEffect2. yBase) annotation (Line(
        points={{-79,24},{-78,24},{-78,18}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(LeptinEffect2.y, Diet.soluteFlow) annotation (Line(
        points={{-78,12},{-78,10},{-74,10}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.BloodIons_ProteinAnions, glomerulus.ProteinAnions)
        annotation (Line(
        points={{-90,82},{-20,82},{-20,29}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(flowMeasure.q_out, bladder.q_in) annotation (Line(
        points={{38,24},{74,24}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(bladder.busConnector, busConnector) annotation (Line(
        points={{82,24},{82,82},{-90,82}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(eq2mol.u, flowMeasure.molarFlowRate) annotation (Line(
        points={{32,44},{34,44},{34,30},{28,30}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(eq2mol.y, busConnector.CD_SO4_Outflow) annotation (Line(
        points={{32,67},{32,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(concentrationMeasure.concentration, busConnector.SO4Pool_conc_per_liter)
        annotation (Line(
        points={{-14,4},{98,4},{98,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(concentrationMeasure.concentration, busConnector.SO4Pool)
        annotation (Line(
        points={{-14,4},{100,4},{100,82},{-90,82}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={Text(
        extent={{-110,-104},{110,-130}},
        lineColor={0,0,255},
        textString="%name")}));
end Sulphate2;