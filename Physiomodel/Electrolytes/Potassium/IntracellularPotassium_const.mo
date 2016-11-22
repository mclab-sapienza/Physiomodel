within Physiomodel.Electrolytes.Potassium;
model IntracellularPotassium_const
    extends Physiolibrary.Icons.Cell;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-86,58},{-74,70}}), iconTransformation(
      extent={{60,60},{100,100}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    electrolytesFlowConstant1(k=0)
    annotation (Placement(transformation(extent={{-66,-46},{-56,-36}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
    "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
    annotation (Placement(transformation(extent={{-62,-96},{-44,-78}}),
    iconTransformation(extent={{-10,-10},{10,10}})));
    Physiolibrary.Types.Constants.ConcentrationConst
    electrolytesFlowConstant2(k=(142))
    annotation (Placement(transformation(extent={{10,-78},{28,-60}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst
    electrolytesFlowConstant3(k(displayUnit="mol") = 4)
    annotation (Placement(transformation(extent={{-68,-22},{-50,-4}})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{10,-54},{30,-34}})));
equation
    q_in.q=0;
    connect(electrolytesFlowConstant1.y, busConnector.PotassiumToCells)
    annotation (Line(
    points={{-54.75,-41},{-22,-41},{-22,64},{-80,64}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(electrolytesFlowConstant3.y, busConnector.KCell_Mass) annotation (
    Line(
    points={{-47.75,-13},{32,-13},{32,64},{-80,64}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.ICFV_Vol, division.u2) annotation (Line(
    points={{-80,64},{-36,64},{-36,-50},{8,-50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(electrolytesFlowConstant3.y, division.u1) annotation (Line(
    points={{-47.75,-13},{-47.75,-14.5},{8,-14.5},{8,-38}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(division.y, busConnector.KCell_conc) annotation (Line(
    points={{31,-44},{92,-44},{92,64},{-80,64}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
end IntracellularPotassium_const;