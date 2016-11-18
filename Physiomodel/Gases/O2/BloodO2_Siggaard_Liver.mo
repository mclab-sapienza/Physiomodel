within Physiomodel.Gases.O2;

model BloodO2_Siggaard_Liver
    extends Physiomodel.Gases.O2.BloodO2Base;//_withoutCO_;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a hepaticArty annotation (
      Placement(transformation(extent={{-120,-120},{-80,-80}}),
        iconTransformation(extent={{-120,-120},{-80,-80}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
      Placement(transformation(extent={{80,-120},{120,-80}}),
        iconTransformation(extent={{80,-120},{120,-80}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a alveolar annotation (
      Placement(transformation(extent={{-20,80},{20,120}}),
        iconTransformation(extent={{-20,80},{20,120}})));

    Modelica.Blocks.Interfaces.RealInput HepaticArtyBloodFlow(
                                                       displayUnit="ml/min")
                                     annotation (Placement(transformation(extent={{-120,
              -80},{-80,-40}}),     iconTransformation(extent={{-100,-80},{-80,-60}})));

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a GIT annotation (
      Placement(transformation(extent={{-120,-120},{-80,-80}}),
        iconTransformation(extent={{-120,-40},{-80,0}})));
    Modelica.Blocks.Interfaces.RealInput GITBloodFlow(
                                               displayUnit="ml/min")
                                     annotation (Placement(transformation(extent={{-120,
              -80},{-80,-40}}),     iconTransformation(extent={{-100,0},{-80,20}})));
equation
    GIT.q + hepaticArty.q + q_out.q + alveolar.q = 0;  //flows: mmol/min

    alveolar.pressure =Physiolibrary.NonSIunits.PaTOmmHg
                                                   *1000 * pO2;

    hepaticArty.conc = hepaticArty.q/ HepaticArtyBloodFlow; //mmol/ml
    GIT.conc = GIT.q/ GITBloodFlow; //mmol/ml

    tO2 = MiniliterPerLiter * (-q_out.q/ (GITBloodFlow+HepaticArtyBloodFlow)); //mmol/l

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={
          Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,255},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-74,-32},{74,-64}},
            lineColor={0,0,255},
            textString="%name"),
          Polygon(
            points={{-72,10},{80,0},{-72,-10},{-72,10}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid,
            origin={-2,-84},
            rotation=360)}));
end BloodO2_Siggaard_Liver;
