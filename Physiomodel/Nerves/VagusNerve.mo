within Physiomodel.Nerves;
model VagusNerve
    extends Physiolibrary.Icons.NervusVagus;
    parameter Real SympsOnParasymps[:,3]={{ 0.0,  8.0,  0}, { 1.5,  2.0,  -2.0}, { 4.5,  0.0,  0}};
    Physiolibrary.Blocks.Interpolation.Curve sympsOnParasymps(
    x=SympsOnParasymps[:, 1],
    y=SympsOnParasymps[:, 2],
    slope=SympsOnParasymps[:, 3])
    annotation (Placement(transformation(extent={{-54,-10},{-34,10}})));
    Physiolibrary.Types.RealIO.FrequencyOutput VagusNerve_NA_Hz
    annotation (Placement(transformation(extent={{78,-20},{118,20}})));
    Physiolibrary.Types.RealIO.FrequencyInput SympsCNS_NA_Hz
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
equation
    connect(SympsCNS_NA_Hz, sympsOnParasymps.u)
                                    annotation (Line(
    points={{-100,0},{-54,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sympsOnParasymps.val, VagusNerve_NA_Hz) annotation (Line(
    points={{-34,0},{98,0}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
    graphics={
    Text(
      extent={{-104,136},{100,102}},
      lineColor={0,0,0},
      fillColor={213,255,170},
      fillPattern=FillPattern.Solid,
      textString="%name")}));
end VagusNerve;