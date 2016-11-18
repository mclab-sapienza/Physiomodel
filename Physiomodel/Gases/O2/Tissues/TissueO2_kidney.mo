within Physiomodel.Gases.O2.Tissues;


model TissueO2_kidney
    extends Physiolibrary.Icons.Kidney;
    extends TissueO2Base;

    /*(cO2Hb(start=7.39))*/
    Physiolibrary.Types.Constants.DiffusionPermeabilityConst O2PermBasic(k(
      displayUnit="l/min") = 0.00045)
    "see Resources/Data/erythropiesis ;  older notes:  0.9 ml_STP/(min.mmHg) = ? mol/(s.Pa), alphaO2=1.005e-5 mol/(m3.Pa)   Before: (3.929e-5)/60/0.00133989"
    annotation (Placement(transformation(extent={{46,-42},{60,-28}})));
    Physiolibrary.Blocks.Factors.Spline HgbOnPerm(data={{0.00,0.4,0},{0.15,
      1.0,8.0},{0.25,2.0,0}}, Xscale=9.3/0.15)
    "\"recalculated [Hb] in mmol = 56*[Hb] in ml\""
    annotation (Placement(transformation(extent={{74,-58},{54,-38}})));
    Physiolibrary.Types.RealIO.PressureOutput      TubulePO2
    "oxygen partial pressure KidneyO2_TubulePO2"   annotation (Placement(
        transformation(extent={{60,-90},{68,-82}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={20,-110})));
    // Real O2Use_ml_per_min;
    // Real O2Use_mmol_per_min;
    Modelica.Blocks.Math.Gain oxygenSolubility(k=1/1.005e-5)
    annotation (Placement(transformation(extent={{26,-96},{46,-76}})));
    Physiolibrary.Chemical.Components.Diffusion diffusion(useConductanceInput=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-8,-58})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{-4,-84},{16,-64}})));
equation
    // O2Use_mmol_per_min = fromMLtoMMOL.q_MMOL.q;
    // O2Use_ml_per_min = -fromMLtoMMOL.q_ML.q;

    connect(O2PermBasic.y, HgbOnPerm.yBase) annotation (Line(
      points={{61.75,-35},{64,-35},{64,-46}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(diffusion.conductance, HgbOnPerm.y) annotation (Line(
      points={{-4,-58},{64,-58},{64,-52}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(diffusion.q_out, concentrationMeasure.q_in) annotation (Line(
      points={{-8,-68},{-8,-76},{6,-76}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(TubulePO2, oxygenSolubility.y) annotation (Line(
      points={{64,-86},{47,-86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, oxygenSolubility.u) annotation (
      Line(
      points={{6,-70},{16,-70},{16,-86},{24,-86}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(O2Tissue.alveolar, diffusion.q_in) annotation (Line(
    points={{-8.4,-14.2},{-8.4,-31.1},{-8,-31.1},{-8,-48}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    connect(O2Tissue.ceHb_, HgbOnPerm.u) annotation (Line(
    points={{-12,6},{-12,32},{92,32},{92,-48},{72,-48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(diffusion.q_out, Metabolism_O2Use.q_in) annotation (Line(
    points={{-8,-68},{-8,-74}},
    color={107,45,134},
    thickness=1,
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
        graphics={
        Text(
          extent={{-80,-78},{80,-100}},
          lineColor={127,0,0},
          fillPattern=FillPattern.Solid,
          textString="(init %initialMass mEq)"),
        Text(
          extent={{28,94},{76,34}},
          lineColor={0,0,0},
          textString="O"),
        Text(
          extent={{62,34},{82,62}},
          lineColor={0,0,0},
          textString="2"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end TissueO2_kidney;
