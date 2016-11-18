within Physiomodel.Hormones;

model PTH
    extends Physiolibrary.Icons.ThyroidGland;
    Physiolibrary.Chemical.Components.Substance PTH_Pool(useNormalizedVolume=
      false, solute_start=(3.85*14361.0097207699*0.001)/1000)
    annotation (Placement(transformation(extent={{14,-58},{34,-38}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                                 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        origin={-2,-40})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-92,76},{-72,96}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{52,-46},{72,-66}})));
    Modelica.Blocks.Math.Gain gain(k=7.143)
      annotation (Placement(transformation(extent={{42,-72},{48,-66}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{72,-38},{52,-18}})));
    Electrolytes.Calcium2.Factors.H_minus H4_10to7_minus(
    alpha=96.25,
    delta=3.037,
    gamma=11.74,
    ro=6249) annotation (Placement(transformation(extent={{52,-30},{72,-10}})));
    Physiolibrary.Blocks.Factors.Normalization simpleMultiply
    annotation (Placement(transformation(extent={{52,-10},{72,10}})));
    Physiolibrary.Blocks.Factors.Normalization simpleMultiply1
    annotation (Placement(transformation(extent={{52,-20},{72,0}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=2)
    annotation (Placement(transformation(extent={{36,-4},{44,4}})));
    Physiomodel.Metabolism.deprecated.MolarStorageCompartment PT_max_capacity(
    initialSoluteMass=1)
    annotation (Placement(transformation(extent={{-36,8},{-16,28}})));
    Modelica.Blocks.Math.Gain gain1(k=0.0001604)
      annotation (Placement(transformation(extent={{-18,0},{-12,6}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-12,28},{8,8}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-62,8},{-42,28}})));
    Electrolytes.Calcium2.Factors.H_minus H6_11_minus1(
    alpha=4.103,
    delta=69,
    gamma=12.5,
    ro=0.9) annotation (Placement(transformation(extent={{-62,18},{-42,38}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=
      0.0001604)
    annotation (Placement(transformation(extent={{-64,36},{-56,44}})));

    model PT

        Modelica.Blocks.Interfaces.RealInput Calcitriol
          annotation (Placement(transformation(extent={{-110,40},{-70,80}})));
        Modelica.Blocks.Interfaces.RealInput Ca
          annotation (Placement(transformation(extent={{-110,-64},{-70,-24}})));
        Modelica.Blocks.Interfaces.RealOutput PT_pool
          annotation (Placement(transformation(extent={{56,-18},{96,22}})));

        Real T64m;
        Real T64p;

        parameter Real initialPT(displayUnit="1") = 0.5
        "initial pool of PT gland";

    initial equation
        //  PT_pool = initialPT;
        der( PT_pool) = 0;
    equation
        der( PT_pool)   = (1-PT_pool)*0.01*(0.85*T64m+0.15) - PT_pool*0.01*(0.85*T64p+0.15);
        T64m = 1-(exp(0.03*(Calcitriol - 90*(2.35/Ca))) - exp(-0.03*(Calcitriol - 90*(2.35/Ca)))) / (exp(0.03*(Calcitriol - 90*(2.35/Ca))) + exp(-0.03*(Calcitriol - 90*(2.35/Ca))));
        T64p = 1+(exp(0.03*(Calcitriol - 90*(2.35/Ca))) - exp(-0.03*(Calcitriol - 90*(2.35/Ca)))) / (exp(0.03*(Calcitriol - 90*(2.35/Ca))) + exp(-0.03*(Calcitriol - 90*(2.35/Ca))));
    end PT;

    PT PT_pool
    annotation (Placement(transformation(extent={{36,46},{56,66}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure(
    unitsString="pmol/l") annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={34,-36})));
equation
    connect(busConnector.ECFV_Vol,mlTOlitre. u) annotation (Line(
      points={{-82,86},{-82,-40},{-6.8,-40}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(mlTOlitre.y, PTH_Pool.solutionVolume) annotation (Line(
    points={{2.4,-40},{9.2,-40},{9.2,-44},{20,-44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(gain.y, clearance.soluteFlow) annotation (Line(
    points={{48.3,-69},{66,-69},{66,-60}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PTH_Pool.q_out, clearance.q_in) annotation (Line(
      points={{24,-48},{46,-48},{46,-56},{52,-56}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(PTH_Pool.solute, gain.u) annotation (Line(
    points={{30,-58},{30,-69},{41.4,-69}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion.q_out, PTH_Pool.q_out) annotation (Line(
      points={{52,-28},{46,-28},{46,-48},{24,-48}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(H4_10to7_minus.y, secretion.soluteFlow) annotation (Line(
    points={{62,-24},{58,-24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CaPool_conc_per_liter, H4_10to7_minus.u) annotation (
      Line(
      points={{-82,86},{-82,-20},{52.2,-20}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(simpleMultiply1.y, H4_10to7_minus.yBase) annotation (Line(
      points={{62,-14},{62,-18}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(simpleMultiply.y, simpleMultiply1.yBase) annotation (Line(
      points={{62,-4},{62,-8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Constant.y, simpleMultiply.u) annotation (Line(
      points={{45,0},{54,0}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(gain1.y, clearance1.soluteFlow) annotation (Line(
    points={{-11.7,3},{2,3},{2,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PT_max_capacity.q_out, clearance1.q_in) annotation (Line(
      points={{-26,18},{-8,18}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(PT_max_capacity.soluteMass, gain1.u) annotation (Line(
      points={{-26,10.6},{-26,3},{-18.6,3}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(secretion1.q_out, PT_max_capacity.q_out) annotation (Line(
      points={{-46,18},{-26,18}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(H6_11_minus1.y, secretion1.soluteFlow) annotation (Line(
    points={{-52,24},{-52,24},{-52,22},{-48,22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Calcitriol, H6_11_minus1.u) annotation (Line(
      points={{-82,86},{-82,28},{-61.8,28}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(PT_max_capacity.soluteMass, simpleMultiply1.u) annotation (Line(
      points={{-26,10.6},{-26,-10},{52.2,-10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Constant1.y, H6_11_minus1.yBase) annotation (Line(
      points={{-55,40},{-52,40},{-52,30}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(PT_pool.PT_pool, simpleMultiply.yBase) annotation (Line(
      points={{53.6,56.2},{62,56.2},{62,2}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Calcitriol, PT_pool.Calcitriol) annotation (Line(
      points={{-82,86},{-82,62},{37,62}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.CaPool_conc_per_liter, PT_pool.Ca) annotation (Line(
      points={{-82,86},{-82,51.6},{37,51.6}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(PTH_Pool.q_out, concentrationMeasure.q_in) annotation (Line(
      points={{24,-48},{28,-48},{28,-38},{34,-38}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.PTH) annotation (
    Line(
    points={{34,-32},{34,-28},{-82,-28},{-82,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Text(
          extent={{-102,88},{98,108}},
          lineColor={0,0,255},
          textString="%name")}));
end PTH;