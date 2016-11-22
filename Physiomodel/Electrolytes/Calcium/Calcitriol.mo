within Physiomodel.Electrolytes.Calcium;
model Calcitriol
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-98,74},{-78,94}})));
    Physiolibrary.Molar.ConcentrationCompartment_knownConc
      concentrationCompartment(concentration=90)
      annotation (Placement(transformation(extent={{10,-68},{30,-48}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-46,-68},{-26,-48}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut outputPump(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{48,-68},{68,-48}})));
    Modelica.Blocks.Math.Gain gain(k=0.1) annotation (Placement(
          transformation(
          extent={{-4,-4},{4,4}},
          rotation=270,
          origin={58,-44})));
    Physiolibrary.Chemical.Components.Substance hydroxylase(
      useNormalizedVolume=false, solute_start=(117)/1000)
    annotation (Placement(transformation(extent={{-46,-26},{-26,-6}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump1(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-96,-26},{-76,-6}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut outputPump1(
      useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-10,-26},{10,-6}})));
    Modelica.Blocks.Math.Gain gain1(k=0.05) annotation (Placement(
          transformation(
          extent={{-4,-4},{4,4}},
          rotation=270,
          origin={0,-2})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=5.85)
    annotation (Placement(transformation(extent={{-100,-8},{-92,0}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
    annotation (Placement(transformation(extent={{18,-44},{38,-24}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                                   annotation (Placement(transformation(
          extent={{-4,-4},{4,4}},
          origin={0,-50})));
    Modelica.Blocks.Math.Gain mlTOlitre1(
                                        k=0.001)
                                   annotation (Placement(transformation(
          extent={{-4,-4},{4,4}},
          origin={-54,-10})));
equation
    connect(inputPump.q_out, concentrationCompartment.q_out) annotation (
    Line(
    points={{-30,-58},{20,-58}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationCompartment.q_out, outputPump.q_in) annotation (
    Line(
    points={{20,-58},{52,-58}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(gain.y, outputPump.soluteFlow) annotation (Line(
    points={{58,-48.4},{58,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationCompartment.soluteMass, gain.u) annotation (Line(
    points={{20,-65.8},{20,-78},{38,-78},{38,-34},{58,-34},{58,-39.2}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(gain1.y, outputPump1.soluteFlow) annotation (Line(
    points={{-8.08267e-016,-6.4},{-8.08267e-016,-10},{0,-10},{0,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hydroxylase.solute, gain1.u) annotation (Line(
    points={{-36,-23.8},{-36,-30},{-12,-30},{-12,8},{8.81746e-016,8},{
      8.81746e-016,2.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(hydroxylase.q_out, outputPump1.q_in) annotation (Line(
    points={{-36,-16},{-6,-16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(inputPump1.q_out, hydroxylase.q_out) annotation (Line(
    points={{-80,-16},{-36,-16}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(hydroxylase.solute, inputPump.soluteFlow) annotation (Line(
    points={{-36,-23.8},{-36,-54}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, inputPump1.soluteFlow) annotation (Line(
    points={{-91.6,-4},{-86,-4},{-86,-12}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationCompartment.q_out, concentrationMeasure.q_in)
    annotation (Line(
    points={{20,-58},{28,-58},{28,-34}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.Calcitriol)
    annotation (Line(
    points={{28,-30},{28,84},{-88,84}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(mlTOlitre.y, concentrationCompartment.SolventVolume)
    annotation (Line(
    points={{4.4,-50},{10,-50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, mlTOlitre.u) annotation (Line(
    points={{-88,84},{-18,84},{-18,-50},{-4.8,-50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(mlTOlitre1.y, hydroxylase.solutionVolume) annotation (Line(
    points={{-49.6,-10},{-44,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol, mlTOlitre1.u) annotation (Line(
    points={{-88,84},{-68,84},{-68,-10},{-58.8,-10}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
end Calcitriol;