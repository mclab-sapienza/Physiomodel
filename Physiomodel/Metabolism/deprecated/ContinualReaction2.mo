within Physiomodel.Metabolism.deprecated;
model ContinualReaction2
    "Continual flow reaction of type  a A <-> b B + c C, where the concentration of C does not play the role"

    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (extent=[
      -10,-110; 10,-90], Placement(transformation(extent={{90,20},{110,40}}),
      iconTransformation(extent={{90,20},{110,40}})));
    Modelica.Blocks.Interfaces.RealInput coef
    "who much units of q_out produce one unit of q_in"
                              annotation ( extent = [-10,30;10,50], rotation = -90);

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (Placement(
      transformation(extent={{-120,-20},{-80,20}}), iconTransformation(
        extent={{-110,-10},{-90,10}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out2 annotation (extent=
      [-10,-110; 10,-90], Placement(transformation(extent={{90,-10},{110,10}}),
      iconTransformation(extent={{90,-40},{110,-20}})));
    Modelica.Blocks.Interfaces.RealInput
                      coef2
    "who much units of q_out2 produce one unit of q_in"                             annotation (Placement(transformation(extent={{-54,
          20},{-14,60}}), iconTransformation(
      extent={{-10,-10},{10,10}},
      rotation=270,
      origin={60,40})));

    // parameter Modelica.SIunits.StoichiometricNumber a_in=1 "Stoichiometric number of solute A";
    // parameter Modelica.SIunits.StoichiometricNumber a_out=1 "Stoichiometric number of solute B";
    // parameter Modelica.SIunits.StoichiometricNumber a_out2=1 "Stoichiometric number of solute C";
equation
    q_out.q + coef*q_in.q = 0;
    q_out2.q + coef2*q_in.q = 0;
    q_out.conc = coef*q_in.conc;
    annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
          100,100}}), graphics={
      Rectangle(
        extent={{-100,-30},{100,30}},
        lineColor={0,0,127},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
      Text(
        extent={{-128,-66},{142,-40}},
        textString="%name",
        lineColor={0,0,255}),
      Polygon(
        points={{-60,4},{-60,2},{54,2},{54,2},{18,12},{18,4},{-60,4}},
        lineColor={0,0,0},
        smooth=Smooth.None,
        fillColor={0,0,0},
        fillPattern=FillPattern.Solid)}),
    Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end ContinualReaction2;