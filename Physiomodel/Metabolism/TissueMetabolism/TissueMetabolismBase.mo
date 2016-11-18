within Physiomodel.Metabolism.TissueMetabolism;
partial model TissueMetabolismBase
    extends Physiolibrary.Icons.MetabolismPart;

    parameter Physiolibrary.Types.AmountOfSubstance initialTissueO2(displayUnit="ml_STP")=1.7612646902879852858386051702718e-4; //pO2*solubility*LiquidVolume
    //  parameter Physiolibrary.Types.GasSolubility O2solubility(final displayUnit="ml/mmHg"); //=0.00003;
    //  parameter Real O2fromBloodtoTissueConductance(final displayUnit="ml/(min.mmHg)")=1000000;

    parameter Physiolibrary.Types.AmountOfSubstance initialLactateMass(displayUnit="mEq") = 0;

    parameter Real NormalCalsUsed
    "basal energy per kilogram of tissue [cal/min]";

    parameter Physiolibrary.Types.PowerPerMass BasalCalsUsed
    "basal energy per kilogram of tissue";            //= NormalCalsUsed*(4.1864/60)

                                                                               //BasalCalsUsedPerKG(final displayUnit="kcal/min")
    parameter Physiolibrary.Types.Mass TissueSize "mass of tissue";

    parameter Physiolibrary.Types.VolumeFlowRate DC(displayUnit="(mEq/min)/(mEq/ml)");
    parameter Real[:,3] PO2OnAerobicFractionData = {{2,0,0},{10,1,0}}
    "Aerobic Fraction of O2 tissue use depents on pO2";

    Physiolibrary.Types.RealIO.VolumeInput LiquidVol(
                                        final displayUnit="ml")
    "sum of interstitial and intracellular tissue water"
    annotation (Placement(transformation(extent={{-6,15},{4,25}}),
      iconTransformation(extent={{-100,30},{-80,50}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a lactate(conc(final
    displayUnit="mEq/ml"), q(final displayUnit="mEq/min")) annotation (
    Placement(transformation(extent={{-103,22},{-83,42}}),
    iconTransformation(extent={{90,10},{110,30}})));
    Physiolibrary.Blocks.Factors.Spline        Thyroid(data={{0,0.7,0},{8,1.0,
    0.4},{40,1.5,0}}, Xscale=1e-5/Substances.Thyroxine.mw)
    "8 ug/dl = 8e-9/1e-4 kg/m3"
    annotation (Placement(transformation(extent={{60,74},{80,94}})));
    Physiolibrary.Blocks.Factors.Spline HeatMetabolism_Skin(data={{10 + 273.15,0.0,0},
      {37 + 273.15,1.0,0.12},{40 + 273.15,1.5,0},{46 + 273.15,0.0,0}})
    annotation (Placement(transformation(extent={{60,70},{80,90}})));
    Physiolibrary.Blocks.Factors.Normalization StructureEffect
    annotation (Placement(transformation(extent={{60,66},{80,86}})));
    Physiolibrary.Types.ScaleConstants.Power        caloriesConstant(k=
      BasalCalsUsed)
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
      rotation=270,
      origin={69,95})));
    Physiolibrary.Types.RealIO.TemperatureInput
                                     T(
                                final displayUnit="degC") "temperature"
    annotation (Placement(transformation(extent={{32,72},{42,82}}),
      iconTransformation(extent={{-100,-10},{-80,10}})));
    Physiolibrary.Types.RealIO.FractionInput Structure_Effect(
                                               final displayUnit="1")
    annotation (Placement(transformation(extent={{32,64},{42,74}}),
      iconTransformation(extent={{-100,10},{-80,30}})));
    Physiolibrary.Types.RealIO.ConcentrationInput Thyroxine annotation (
    Placement(transformation(extent={{32,81},{42,91}}),
    iconTransformation(extent={{-100,-30},{-80,-10}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a glucose(conc(final
    displayUnit="mg/ml"), q(final displayUnit="mg/min")) annotation (
    Placement(transformation(extent={{-102,-44},{-82,-24}}),
    iconTransformation(extent={{90,90},{110,110}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateInput
                                     BloodFlow(
                                        final displayUnit="ml/min")
    "blood flow through all tissue capilaries cross-section"
    annotation (Placement(transformation(extent={{-91,3},{-82,12}}),
      iconTransformation(extent={{-100,70},{-80,90}})));
    Modelica.Blocks.Math.Product PlasmaFlow1
    annotation (Placement(transformation(extent={{-78,-5},{-70,3}})));
    Modelica.Blocks.Math.Gain CalToO2(k=1/((1/0.2093)*4.1864*22710.95322615))
    "0.2093 ml/cal,  4.1864 J/cal, 22710.95322615 ml/mol"
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},
      rotation=90,
      origin={86,24})));
    Physiolibrary.Types.RealIO.FractionInput
                                     BloodVol_PVCrit(
                                              final displayUnit="1")
    "part of plasma in blood"
    annotation (Placement(transformation(extent={{-94,-9},{-84,1}}),
      iconTransformation(extent={{-100,90},{-80,110}})));
    Physiolibrary.Types.RealIO.PressureInput
                                     pO2(
                                  final displayUnit="mmHg")
    "tissue venous O2 partial pressure"
    annotation (Placement(transformation(extent={{-5,-5},{5,5}},
      origin={32,-66}),
      iconTransformation(extent={{-100,50},{-80,70}})));
    Modelica.Blocks.Math.Sum TotalCaloriesUse
                              annotation (Placement(transformation(
      extent={{-4.5,-4.5},{3.5,3.5}},
      rotation=270,
      origin={71.5,45.5})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{10,6},{30,26}})));
    /* unitsString="mEq/l",*/
    Physiolibrary.Types.RealIO.ConcentrationOutput
                                      cLactate(
                                        displayUnit="mEq/l") annotation (
    Placement(transformation(extent={{32,28},{44,40}}),iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-30,-100})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                      Tissue_CO2FromMetabolism(
                                                        displayUnit="ml/min")
                                                      annotation (
    Placement(transformation(extent={{90,-66},{102,-54}}),
                                                       iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-50,-100})));
    Physiolibrary.Types.RealIO.FractionOutput
                                      Fuel_FractUseDelay
                                                      annotation (
    Placement(transformation(extent={{-46,-6},{-34,6}}),
                                                       iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-70,-100})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                      O2Use(
                                     displayUnit="ml/min")   annotation (
    Placement(transformation(extent={{58,-100},{70,-88}}),
                                                       iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={-10,-100})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                      O2Need(
                                      displayUnit="ml/min")  annotation (
    Placement(transformation(extent={{92,6},{104,18}}),iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={10,-100})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                      LactateFromMetabolism(
                                                     displayUnit="mEq/min", start=0)
                                                      annotation (
    Placement(transformation(extent={{46,18},{58,30}}),iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={30,-100})));
    Physiolibrary.Types.RealIO.VolumeFlowRateOutput
                                      H2OFromMetabolism(
                                                 displayUnit="ml/min")
                                                      annotation (
    Placement(transformation(extent={{78,-86},{90,-74}}),
                                                       iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={50,-100})));
    Physiolibrary.Chemical.Sensors.MolarFlowMeasure flowMeasure annotation (
    Placement(transformation(
    extent={{-8,-8},{8,8}},
    rotation=180,
    origin={36,14})));
    Physiolibrary.Blocks.Math.Min min(nin=2)
    annotation (Placement(transformation(extent={{-52,-4},{-44,4}})));
    Physiolibrary.Types.RealIO.PowerOutput TotalCalsUsed(
                                             displayUnit="cal/min")
                                                      annotation (
    Placement(transformation(extent={{90,32},{102,44}}),
      iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={70,-100})));
    Modelica.Blocks.Math.Sum PartCaloriesUse
                              annotation (Placement(transformation(
      extent={{-4.5,-4.5},{3.5,3.5}},
      rotation=270,
      origin={71.5,59.5})));
    NutrientDelivery lactateDelivery
    annotation (Placement(transformation(extent={{-80,42},{-60,22}})));

    Physiolibrary.Types.Constants.MassConst size(k=TissueSize)
    annotation (Placement(transformation(extent={{98,90},{90,98}})));
initial equation
    // BasalCalsUsedPerKG = NormalCalsUsed*(4186.4/60)/mass;

equation
    connect(Thyroid.y,HeatMetabolism_Skin. yBase)       annotation (Line(
    points={{70,80},{70,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(HeatMetabolism_Skin.y,StructureEffect. yBase) annotation (Line(
    points={{70,76},{70,78}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(T, HeatMetabolism_Skin.u)               annotation (Line(
    points={{37,77},{49,77},{49,80},{62,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Structure_Effect,StructureEffect. u) annotation (Line(
    points={{37,69},{52,69},{52,76},{62,76}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Thyroid.u, Thyroxine) annotation (Line(
    points={{62,84},{50,84},{50,86},{37,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PlasmaFlow1.u1, BloodFlow)
                                  annotation (Line(
    points={{-78.8,1.4},{-81.85,1.4},{-81.85,7.5},{-86.5,7.5}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodVol_PVCrit, PlasmaFlow1.u2) annotation (Line(
    points={{-89,-4},{-88.5,-4},{-88.5,-3.4},{-78.8,-3.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(TotalCaloriesUse.y, CalToO2.u) annotation (Line(
    points={{71,41.6},{71,38},{86,38},{86,28.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CalToO2.y, O2Need) annotation (Line(
    points={{86,19.6},{86,12},{98,12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(flowMeasure.molarFlowRate, LactateFromMetabolism) annotation (Line(
    points={{36,20.4},{36,24},{52,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(min.y, Fuel_FractUseDelay) annotation (Line(
    points={{-43.6,0},{-40,0}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(TotalCaloriesUse.y, TotalCalsUsed) annotation (Line(
    points={{71,41.6},{71,38},{96,38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PartCaloriesUse.y, TotalCaloriesUse.u[1]) annotation (Line(
    points={{71,55.6},{71,50.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(StructureEffect.y, PartCaloriesUse.u[1]) annotation (Line(
    points={{70,72},{70,64.8},{71,64.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PlasmaFlow1.y,lactateDelivery. solventFlow) annotation (Line(
    points={{-69.6,-1},{-70,-1},{-70,26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(lactateDelivery.q_out, lactate) annotation (Line(
    points={{-60,32},{-56,32},{-56,14},{-93,14},{-93,32}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(lactate, lactateDelivery.q_in) annotation (Line(
    points={{-93,32},{-80,32}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(lactateDelivery.neededFlow, concentrationMeasure.q_in) annotation (
    Line(
    points={{-70,37},{-20,37},{-20,16},{20,16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(lactateDelivery.neededFlow, flowMeasure.q_out) annotation (Line(
    points={{-70,37},{-20,37},{-20,14},{28,14}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, cLactate) annotation (Line(
    points={{20,8},{20,34},{38,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(caloriesConstant.y, Thyroid.yBase) annotation (Line(
    points={{69,90},{70,90},{70,86}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(caloriesConstant.mass, size.y) annotation (Line(
    points={{73,95},{80.5,95},{80.5,94},{89,94}},
    color={0,0,127},
    smooth=Smooth.None));
end TissueMetabolismBase;