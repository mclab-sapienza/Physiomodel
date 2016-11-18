within Physiomodel.Metabolism.deprecated;
model ContinualReaction "Continual flow reaction of type  a A <-> b B"

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a A "solute A" annotation (
    Placement(transformation(extent={{-120,-20},{-80,20}}),
      iconTransformation(extent={{-110,-10},{-90,10}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b B "solute B" annotation (
    extent=[-10,-110; 10,-90], Placement(transformation(extent={{90,20},{
          110,40}}), iconTransformation(extent={{90,20},{110,40}})));

    parameter Modelica.SIunits.StoichiometricNumber a=1
    "Stoichiometric number of solute A";
    parameter Modelica.SIunits.StoichiometricNumber b=1
    "Stoichiometric number of solute B";
equation
    a*A.q + b*B.q = 0;
    a*A.conc = b*B.conc;  // sound strange, dissociation constand should be here
    annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
          100,100}}), graphics={
      Rectangle(
        extent={{-100,-28},{100,30}},
        lineColor={0,0,127},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
      Text(
        extent={{-128,-60},{142,-34}},
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
end ContinualReaction;