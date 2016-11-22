within Physiomodel.Electrolytes;
model Bladder
    extends Physiolibrary.Icons.Bladder;

    parameter String stateVarName;

    Physiolibrary.Chemical.Components.Substance                Bladder(
                           stateName=stateVarName, useNormalizedVolume=
      false)
    annotation (Placement(transformation(extent={{-12,-52},{8,-32}})));
    Physiolibrary.Chemical.Components.Clearance bladderVoid(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{28,-48},{40,-36}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{8,-28},{20,-16}}), iconTransformation(extent=
          {{60,60},{100,100}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (Placement(
      transformation(extent={{0,0},{20,20}}), iconTransformation(extent={{-10,
      70},{10,90}})));
equation
    connect(Bladder.q_out,bladderVoid. q_in) annotation (Line(
      points={{-2,-42},{28,-42}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(bladderVoid.solutionFlow, busConnector.BladderVoidFlow) annotation (
    Line(
    points={{34,-37.8},{34,-22},{14,-22}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(q_in, Bladder.q_out) annotation (Line(
      points={{10,10},{-32,10},{-32,-42},{-2,-42}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(busConnector.BladderVolume_Mass, Bladder.solutionVolume)
    annotation (Line(
    points={{14,-22},{-6,-22},{-6,-38}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end Bladder;
