within Physiomodel.Hormones.FemaleSexHormones;
model FemaleSexHormones
extends Physiolibrary.Icons.FemaleSex;
OvarianCycle ovarianCycle
annotation (Placement(transformation(extent={{14,-60},{34,-40}})));
OvariesFollicle ovariesFollicle
annotation (Placement(transformation(extent={{42,-52},{62,-32}})));
CorpusLuteum corpusLuteum
annotation (Placement(transformation(extent={{72,-52},{92,-32}})));
FSH fSH annotation (Placement(transformation(extent={{-18,-16},{2,4}})));
Progesterone progesterone
annotation (Placement(transformation(extent={{-18,-56},{2,-36}})));
LH lH annotation (Placement(transformation(extent={{-18,10},{2,30}})));
hCG hCG_
annotation (Placement(transformation(extent={{42,-28},{62,-8}})));
Estradiol estradiol
annotation (Placement(transformation(extent={{-66,20},{-46,40}})));
GnRH gnRH
annotation (Placement(transformation(extent={{-66,-4},{-46,16}})));
Testosterone testosterone
annotation (Placement(transformation(extent={{-66,-36},{-46,-16}})));
Inhibin inhibin
annotation (Placement(transformation(extent={{-66,-60},{-46,-40}})));
Modelica.Blocks.Interfaces.BooleanInput
                                  Cycling
                     annotation (Placement(transformation(extent={{-4,-4},
      {4,4}},
  origin={0,-80}),        iconTransformation(extent={{-120,20},{-80,
      60}})));
Modelica.Blocks.Interfaces.RealInput EFCV_Vol(
                                   quantity="Volume", final displayUnit=
  "ml") "extracellular fluid volume"
                   annotation (Placement(transformation(extent={{-100,44},
      {-92,52}}),         iconTransformation(extent={{-120,60},{-80,
      100}})));

DayCounter dayCounter
annotation (Placement(transformation(extent={{50,16},{70,36}})));
equation
connect(ovarianCycle.IsFollicular, ovariesFollicle.IsFollicular)
annotation (Line(
points={{34,-42},{42,-42}},
color={255,0,255},
smooth=Smooth.None));
connect(ovarianCycle.IsOvulatory, ovariesFollicle.IsOvulatory)
annotation (Line(
points={{34,-46},{42,-46}},
color={255,0,255},
smooth=Smooth.None));
connect(ovarianCycle.IsLuteal, ovariesFollicle.IsLuteal) annotation (
Line(
points={{34,-50},{42,-50}},
color={255,0,255},
smooth=Smooth.None));
connect(progesterone.Progesterone, ovarianCycle.Progesterone)
annotation (Line(
points={{2,-48},{14,-48}},
color={0,0,127},
smooth=Smooth.None));
connect(fSH.FSH_Circulating, ovarianCycle.FSH_Circulating) annotation (
Line(
points={{2,-8},{10,-8},{10,-40},{14,-40}},
color={0,0,127},
smooth=Smooth.None));
connect(lH.LH_Circulating, ovarianCycle.LH_Circulating) annotation (
Line(
points={{2,18},{6,18},{6,-44},{14,-44}},
color={0,0,127},
smooth=Smooth.None));
connect(ovariesFollicle.FollicleMass, ovarianCycle.FollicleMass)
annotation (Line(
points={{62,-44},{68,-44},{68,-66},{6,-66},{6,-56},{14,-56}},
color={0,0,127},
smooth=Smooth.None));
connect(fSH.FSH_Circulating, ovariesFollicle.FSH_Circulating)
annotation (Line(
points={{2,-8},{10,-8},{10,-34},{42,-34}},
color={0,0,127},
smooth=Smooth.None));
connect(ovariesFollicle.Atresia, corpusLuteum.OvariesFollicleAtresia)
annotation (Line(
points={{62,-38},{72,-38}},
color={0,0,127},
smooth=Smooth.None));
connect(corpusLuteum.CorpusLuteumMass, ovarianCycle.CorpusLuteumMass)
annotation (Line(
points={{92,-44},{96,-44},{96,-70},{4,-70},{4,-52},{14,-52}},
color={0,0,127},
smooth=Smooth.None));
connect(hCG_.hCG, corpusLuteum.hCG) annotation (Line(
points={{62,-20},{66,-20},{66,-34},{72,-34}},
color={0,0,127},
smooth=Smooth.None));
connect(estradiol.Estradiol, fSH.Estradiol) annotation (Line(
points={{-46,28},{-40,28},{-40,-14},{-17.8,-14}},
color={0,0,127},
smooth=Smooth.None));
connect(ovarianCycle.IsFollicular, estradiol.IsFollicular) annotation (
Line(
points={{34,-42},{36,-42},{36,42},{-70,42},{-70,34},{-66,34}},
color={255,0,255},
smooth=Smooth.None));
connect(ovariesFollicle.FollicleMass, estradiol.OvariesFollicleMass)
annotation (Line(
points={{62,-44},{68,-44},{68,-66},{-78,-66},{-78,26},{-66,26}},
color={0,0,127},
smooth=Smooth.None));
connect(gnRH.GnRH_period, fSH.GnRH_Period) annotation (Line(
points={{-46,-2},{-17.8,-2}},
color={0,0,127},
smooth=Smooth.None));
connect(testosterone.Testosterone, fSH.Testosterone) annotation (Line(
points={{-46,-28},{-32,-28},{-32,-6},{-17.8,-6}},
color={0,0,127},
smooth=Smooth.None));
connect(inhibin.Inhibin, fSH.Inhibin) annotation (Line(
points={{-46,-52},{-36,-52},{-36,-10},{-17.8,-10}},
color={0,0,127},
smooth=Smooth.None));
connect(corpusLuteum.CorpusLuteumMass, progesterone.CorpusLuteumMass)
annotation (Line(
points={{92,-44},{96,-44},{96,-70},{-24,-70},{-24,-42},{-18,-42}},
color={0,0,127},
smooth=Smooth.None));
connect(lH.Estradiol, estradiol.Estradiol) annotation (Line(
points={{-18,24},{-32,24},{-32,28},{-46,28}},
color={0,0,127},
smooth=Smooth.None));
connect(lH.GnRH_Period, gnRH.GnRH_period) annotation (Line(
points={{-18,20},{-28,20},{-28,-2},{-46,-2}},
color={0,0,127},
smooth=Smooth.None));
connect(corpusLuteum.CorpusLuteumMass, inhibin.CorpusLuteumMass)
annotation (Line(
points={{92,-44},{96,-44},{96,-70},{-82,-70},{-82,-54},{-66,-54}},
color={0,0,127},
smooth=Smooth.None));
connect(ovarianCycle.IsFollicular, inhibin.IsFollicular) annotation (
Line(
points={{34,-42},{36,-42},{36,42},{-86,42},{-86,-46},{-66,-46}},
color={255,0,255},
smooth=Smooth.None));
connect(estradiol.Estradiol, gnRH.Estradiol) annotation (Line(
points={{-46,28},{-40,28},{-40,-14},{-74,-14},{-74,14},{-66,14}},
color={0,0,127},
smooth=Smooth.None));
connect(testosterone.Testosterone, gnRH.Testosterone) annotation (Line(
points={{-46,-28},{-32,-28},{-32,-6},{-72,-6},{-72,2},{-66,2}},
color={0,0,127},
smooth=Smooth.None));
connect(lH.Inhibin, inhibin.Inhibin) annotation (Line(
points={{-18,12},{-36,12},{-36,-52},{-46,-52}},
color={0,0,127},
smooth=Smooth.None));
connect(lH.Testosterone, testosterone.Testosterone) annotation (Line(
points={{-18,16},{-32,16},{-32,-28},{-46,-28}},
color={0,0,127},
smooth=Smooth.None));
connect(Cycling, ovarianCycle.Cycling) annotation (Line(
points={{0,-80},{8,-80},{8,-60},{14,-60}},
color={255,0,255},
smooth=Smooth.None));
connect(EFCV_Vol, estradiol.EFCV_Vol) annotation (Line(
points={{-96,48},{-90,48},{-90,38},{-66,38}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, testosterone.EFCV_Vol) annotation (Line(
points={{-96,48},{-90,48},{-90,-18},{-66,-18}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, inhibin.EFCV_Vol) annotation (Line(
points={{-96,48},{-90,48},{-90,-42},{-66,-42}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, lH.EFCV_Vol) annotation (Line(
points={{-96,48},{-24,48},{-24,28},{-18.2,28}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, fSH.EFCV_Vol) annotation (Line(
points={{-96,48},{-24,48},{-24,2},{-17.8,2}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, progesterone.EFCV_Vol) annotation (Line(
points={{-96,48},{-24,48},{-24,-38},{-18,-38}},
color={0,0,127},
smooth=Smooth.None));
connect(EFCV_Vol, hCG_.EFCV_Vol) annotation (Line(
points={{-96,48},{32,48},{32,-10},{42,-10}},
color={0,0,127},
smooth=Smooth.None));
connect(ovariesFollicle.FollicleMass, inhibin.OvariesFollicleMass)
annotation (Line(
points={{62,-44},{68,-44},{68,-66},{-78,-66},{-78,-50},{-66,-50}},
color={0,0,127},
smooth=Smooth.None));
connect(corpusLuteum.CorpusLuteumMass, estradiol.CorpusLuteumMass)
annotation (Line(
points={{92,-44},{96,-44},{96,-70},{-82,-70},{-82,30},{-66,30}},
color={0,0,127},
smooth=Smooth.None));
connect(estradiol.Estradiol, ovariesFollicle.Estradiol) annotation (
Line(
points={{-46,28},{-40,28},{-40,36},{28,36},{28,-38},{42,-38}},
color={0,0,127},
smooth=Smooth.None));
connect(ovarianCycle.IsFollicular, dayCounter.Reset) annotation (Line(
points={{34,-42},{36,-42},{36,26},{50,26}},
color={255,0,255},
smooth=Smooth.None));
annotation ( Icon(coordinateSystem(
    preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
  graphics={                            Text(
    extent={{-100,-100},{102,-122}},
    lineColor={0,0,255},
    textString="%name")}));
end FemaleSexHormones;