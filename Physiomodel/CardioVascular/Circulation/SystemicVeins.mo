within Physiomodel.CardioVascular.Circulation;
model SystemicVeins
    //extends QHP.Blood.OrganFlow.BaseBadDirection;
    extends Physiolibrary.Icons.Resistor;
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in "Blood inflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,
            10}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out "Blood outflow"
    annotation (extent=[-10,-110; 10,-90], Placement(transformation(extent=
            {{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{
            -90,10}})));

    Physiolibrary.Hydraulic.Components.Conductor systemicVeinsConductance(
      useConductanceInput=true)
    annotation (Placement(transformation(extent={{0,-10},{-20,10}})));
    Physiolibrary.Blocks.Factors.Normalization ViscosityEffect
    annotation (Placement(transformation(extent={{-20,0},{0,20}})));
    Physiolibrary.Blocks.Factors.Normalization ExerciseEffect
    annotation (Placement(transformation(extent={{-20,7},{0,27}})));
    Physiolibrary.Blocks.Factors.Normalization CollapseEffect
    annotation (Placement(transformation(extent={{-20,14},{0,34}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst const12(k=
        BaseConductance)
    annotation (Placement(transformation(extent={{-27,45},{-15,57}})));
    parameter Physiolibrary.Types.HydraulicConductance BaseConductance( displayUnit="ml/(mmHg.min)");

    Physiolibrary.Hydraulic.Sensors.FlowMeasure flowMeasure annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        origin={80,0})));
    Modelica.Blocks.Interfaces.RealOutput BloodFlow
                                             annotation (Placement(transformation(
            extent={{76,6},{88,18}}),    iconTransformation(extent={{60,-30},{80,-10}})));
    Physiolibrary.Types.BusConnector busConnector
    "signals of organ bood flow resistence" annotation (Placement(
        transformation(extent={{-96,77},{-76,97}}), iconTransformation(
          extent={{60,10},{78,28}})));
equation
    connect(systemicVeinsConductance.cond,ViscosityEffect. y) annotation (Line(
        points={{-10,6},{-10,6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ViscosityEffect.yBase,ExerciseEffect. y) annotation (Line(
        points={{-10,12},{-10,13}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ExerciseEffect.yBase,CollapseEffect. y) annotation (Line(
        points={{-10,19},{-10,19.5},{-10.2,19.5},{-10.2,20},{-10,20},{-10,20}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.Viscosity_ConductanceEffect,
      ViscosityEffect.u) annotation (Line(
        points={{-86,87},{-86,10},{-18,10}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Exercise_MusclePump_Effect,
      ExerciseEffect.u) annotation (Line(
        points={{-86,87},{-86,17},{-18,17}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.BloodVol_CollapsedEffect, CollapseEffect.u)
      annotation (Line(
        points={{-86,87},{-86,24},{-18,24}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(const12.y, CollapseEffect.yBase) annotation (Line(
        points={{-13.5,51},{-10,51},{-10,26}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowMeasure.volumeFlow,BloodFlow)  annotation (Line(
        points={{80,12},{80,12},{82,12}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowMeasure.q_in, q_in) annotation (Line(
        points={{90,0},{100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flowMeasure.q_out, systemicVeinsConductance.q_in) annotation (
        Line(
        points={{70,0},{0,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(systemicVeinsConductance.q_out, q_out) annotation (Line(
        points={{-20,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Text(
            extent={{-70,-30},{70,30}},
            lineColor={0,0,0},
            textString="%BaseConductance ml/min/mmHg"), Text(
            extent={{-101,-58},{99,-30}},
            lineColor={0,0,255},
            textString="%name")}));
end SystemicVeins;