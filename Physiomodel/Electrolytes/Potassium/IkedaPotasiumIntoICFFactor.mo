within Physiomodel.Electrolytes.Potassium;
model IkedaPotasiumIntoICFFactor

    Physiolibrary.Types.RealIO.MolarFlowRateInput yBase
                 annotation (Placement(transformation(extent={{-20,-20},{
          20,20}},
      rotation=270,
      origin={6,100}),
      iconTransformation(extent={{-10,-10},{10,10}},rotation=270,
      origin={0,50})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput y
              annotation (Placement(transformation(extent={{-20,-20},{20,
          20}},
      rotation=270,
      origin={0,-80}),
      iconTransformation(extent={{-10,-10},{10,10}},  rotation=270,
      origin={0,-52})));

    Physiolibrary.Types.RealIO.pHInput Artys_pH
                                       annotation (Placement(transformation(
        extent={{-118,10},{-78,50}}), iconTransformation(extent={{-120,10},{-80,
          50}})));
    Physiolibrary.Types.RealIO.ConcentrationInput PotasiumECF_conc
                                               annotation (Placement(
      transformation(extent={{-118,-28},{-78,12}}),iconTransformation(extent={
          {-120,-50},{-80,-10}})));

    Real effect;
equation
    effect = 1+0.5*log(PotasiumECF_conc/(56.744-7.06*Artys_pH));
    y = yBase*effect;
    annotation (
    Icon(coordinateSystem(
      preserveAspectRatio=true,
      extent={{-100,-100},{100,100}},
      grid={2,2}), graphics={Rectangle(
        extent={{-100,50},{100,-50}},
        lineColor={127,0,127},
        fillColor={255,255,255},
        fillPattern=FillPattern.Sphere), Text(
        extent={{-86,-36},{100,40}},
        textString="%name",
        lineColor={0,0,0},
    fillPattern=FillPattern.Sphere)}));
end IkedaPotasiumIntoICFFactor;
