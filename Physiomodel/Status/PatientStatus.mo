within Physiomodel.Status;
  model PatientStatus
      extends Physiolibrary.Icons.StatusNormal;
      inner Modelica.StateGraph.Interfaces.CompositeStepState stateGraphRoot;
      Normal normal
      annotation (Placement(transformation(extent={{-66,34},{-46,54}})));
      Confused confused(                          nOut=2, nIn=2)
      annotation (Placement(transformation(extent={{-24,34},{-4,54}})));
      Modelica.StateGraph.TransitionWithSignal worse1 "He's like confused.
      "     annotation (Placement(transformation(extent={{-44,34},{-24,54}})));
      Modelica.StateGraph.TransitionWithSignal better "Now he's feeling better.
      "     annotation (Placement(transformation(extent={{-24,84},{-44,64}})));
      Impaired impaired(                          nIn=2, nOut=2)
      annotation (Placement(transformation(extent={{28,34},{48,54}})));
      Comatose comatose(                          nIn=2, nOut=2)
      annotation (Placement(transformation(extent={{88,-52},{68,-32}})));
      NotBreathing notBreathing(                      nOut=2, nIn=3)
      annotation (Placement(transformation(extent={{44,-52},{24,-32}})));
      MayBeDead mayBeDead(                         nOut=2)
      annotation (Placement(transformation(extent={{-12,-52},{-32,-32}})));
      IsReallyDead isReallyDead
      annotation (Placement(transformation(extent={{-64,-52},{-84,-32}})));
      Modelica.Blocks.Interfaces.RealInput BrainFunctionEffect
                                             annotation (Placement(
      transformation(extent={{-104,86},{-94,96}}),  iconTransformation(extent=
         {{-120,-20},{-80,20}})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=0.8)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={-34,24})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold1(threshold=0.6)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={14,24})));
      Modelica.StateGraph.TransitionWithSignal worse2 "He can't talk wery well ...
      "     annotation (Placement(transformation(extent={{4,34},{24,54}})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold2(threshold=0.4)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={62,24})));
      Modelica.StateGraph.TransitionWithSignal worse3 "Your patient is not conscious!
      "     annotation (Placement(transformation(extent={{52,34},{72,54}})));
      Modelica.StateGraph.TransitionWithSignal worse4 "Your patient is not conscious!
      "     annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={60,-42})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold3(threshold=0.2)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={60,-22})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold4(threshold=0.1)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={6,-22})));
      Modelica.StateGraph.TransitionWithSignal worse5 "Your patient is not conscious!
      "     annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={6,-42})));
      Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold5(threshold=0)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={-50,-22})));
      Modelica.StateGraph.TransitionWithSignal worse6 "Your patient is not conscious!
      "     annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      rotation=180,
      origin={-50,-42})));
      Modelica.StateGraph.TransitionWithSignal better2 "Your patient seems to be conscious again.
      "     annotation (Placement(transformation(extent={{72,84},{52,64}})));
      Modelica.StateGraph.TransitionWithSignal better3 "Your patient is breathing again.
      "     annotation (Placement(transformation(extent={{52,-82},{72,-62}})));
      Modelica.StateGraph.TransitionWithSignal better4
      "Wait. Your patient is not dead! "
      annotation (Placement(transformation(extent={{-4,-82},{16,-62}})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold6(threshold=0.2)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={6,-92})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold7(threshold=0.4)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={62,-92})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold8(threshold=0.6)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={62,94})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold9(threshold=0.95)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={-34,94})));
      Modelica.StateGraph.TransitionWithSignal better5
      "Wait. Your patient is not dead!"
      annotation (Placement(transformation(extent={{-60,-82},{-40,-62}})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold10(threshold=0.2)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=90,
      origin={-50,-90})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_NORMAL
      annotation (Placement(transformation(extent={{-54,22},{-44,32}}),
      iconTransformation(extent={{100,100},{140,140}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_CONFUSED
      annotation (Placement(transformation(extent={{-10,22},{0,32}}),
      iconTransformation(extent={{100,60},{140,100}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_IMPAIRED
      annotation (Placement(transformation(extent={{42,22},{52,32}}),
      iconTransformation(extent={{100,20},{140,60}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_COMATOUS
      annotation (Placement(transformation(extent={{80,-64},{90,-54}}),
      iconTransformation(extent={{100,-20},{140,20}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_NOT_BREATHING
      annotation (Placement(transformation(extent={{30,-64},{40,-54}}),
      iconTransformation(extent={{100,-60},{140,-20}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_MAY_BE_DEAD
      annotation (Placement(transformation(extent={{-24,-64},{-14,-54}}),
      iconTransformation(extent={{100,-100},{140,-60}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                       IS_REALLY_DEAD
      annotation (Placement(transformation(extent={{-78,-64},{-68,-54}}),
      iconTransformation(extent={{100,-140},{140,-100}})));
      Modelica.StateGraph.TransitionWithSignal better1 "Your patient seems to be conscious again.
      "     annotation (Placement(transformation(extent={{24,84},{4,64}})));
      Modelica.Blocks.Logical.GreaterEqualThreshold lessEqualThreshold11(
      threshold=0.8)
      annotation (Placement(transformation(
      extent={{-4,-4},{4,4}},
      rotation=270,
      origin={14,94})));
  equation
      connect(normal.outPort[1], worse1.inPort) annotation (Line(
        points={{-45.5,44},{-38,44}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse1.outPort, confused.inPort[1]) annotation (Line(
        points={{-32.5,44},{-28.75,44},{-28.75,44.5},{-25,44.5}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better.outPort, normal.inPort[1]) annotation (Line(
        points={{-35.5,74},{-76,74},{-76,44},{-67,44}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(lessEqualThreshold.y, worse1.condition) annotation (Line(
        points={{-34,28.4},{-34,32}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,19.2},{-34,19.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold1.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,19.2},{14,19.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(lessEqualThreshold1.y, worse2.condition) annotation (Line(
        points={{14,28.4},{14,32}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(confused.outPort[1], worse2.inPort) annotation (Line(
        points={{-3.5,44.25},{3.25,44.25},{3.25,44},{10,44}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse2.outPort, impaired.inPort[1]) annotation (Line(
        points={{15.5,44},{21.25,44},{21.25,44.5},{27,44.5}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold2.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,19.2},{62,19.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(lessEqualThreshold2.y, worse3.condition) annotation (Line(
        points={{62,28.4},{62,32}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(impaired.outPort[1], worse3.inPort) annotation (Line(
        points={{48.5,44.25},{53.25,44.25},{53.25,44},{58,44}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse3.outPort, comatose.inPort[1]) annotation (Line(
        points={{63.5,44},{96,44},{96,-41.5},{89,-41.5}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(lessEqualThreshold3.y, worse4.condition) annotation (Line(
        points={{60,-26.4},{60,-30}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold3.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-17.2},{60,-17.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(lessEqualThreshold4.y, worse5.condition) annotation (Line(
        points={{6,-26.4},{6,-27.3},{6,-27.3},{6,-28.2},{6,-30},{6,-30}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(lessEqualThreshold5.y, worse6.condition) annotation (Line(
        points={{-50,-26.4},{-50,-30}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold4.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-17.2},{6,-17.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold5.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-17.2},{-50,-17.2}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(notBreathing.outPort[1], worse5.inPort) annotation (Line(
        points={{23.5,-41.75},{10.75,-41.75},{10.75,-42},{10,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse5.outPort, mayBeDead.inPort[1]) annotation (Line(
        points={{4.5,-42},{-11,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(mayBeDead.outPort[1], worse6.inPort) annotation (Line(
        points={{-32.5,-41.75},{-45.25,-41.75},{-45.25,-42},{-46,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse6.outPort, isReallyDead.inPort[1]) annotation (Line(
        points={{-51.5,-42},{-63,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(lessEqualThreshold6.y, better4.condition) annotation (Line(
        points={{6,-87.6},{6,-84}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(mayBeDead.outPort[2], better4.inPort) annotation (Line(
        points={{-32.5,-42.25},{-36,-42.25},{-36,-72},{2,-72}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better4.outPort, notBreathing.inPort[2]) annotation (Line(
        points={{7.5,-72},{14,-72},{14,-64},{48,-64},{48,-42},{45,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold6.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-96.8},{6,-96.8}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold7.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-96.8},{62,-96.8}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(lessEqualThreshold7.y, better3.condition) annotation (Line(
        points={{62,-87.6},{62,-84}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(notBreathing.outPort[2], better3.inPort) annotation (Line(
        points={{23.5,-42.25},{22,-42.25},{22,-72},{58,-72}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better3.outPort, comatose.inPort[2]) annotation (Line(
        points={{63.5,-72},{70,-72},{70,-64},{96,-64},{96,-42.5},{89,-42.5}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(comatose.outPort[2], better2.inPort) annotation (Line(
        points={{67.5,-42.25},{66,-42.25},{66,0},{82,0},{82,74},{66,74}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better2.outPort, impaired.inPort[2]) annotation (Line(
        points={{60.5,74},{22,74},{22,43.5},{27,43.5}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(lessEqualThreshold8.y, better2.condition) annotation (Line(
        points={{62,89.6},{62,86}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(lessEqualThreshold8.u, BrainFunctionEffect) annotation (Line(
        points={{62,98.8},{-90,98.8},{-90,91},{-99,91}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(better.condition, lessEqualThreshold9.y) annotation (Line(
        points={{-34,86},{-34,89.6}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold9.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,98.8},{-34,98.8}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(normal.active, IS_NORMAL) annotation (Line(
        points={{-56,33},{-56,27},{-49,27}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(confused.active, IS_CONFUSED) annotation (Line(
        points={{-14,33},{-14,27},{-5,27}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(impaired.active, IS_IMPAIRED) annotation (Line(
        points={{38,33},{38,27},{47,27}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(comatose.active, IS_COMATOUS) annotation (Line(
        points={{78,-53},{78,-59},{85,-59}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(notBreathing.active, IS_NOT_BREATHING) annotation (Line(
        points={{34,-53},{34,-59},{35,-59}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(IS_MAY_BE_DEAD, mayBeDead.active) annotation (Line(
        points={{-19,-59},{-22,-59},{-22,-53}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(isReallyDead.active, IS_REALLY_DEAD) annotation (Line(
        points={{-74,-53},{-74,-59},{-73,-59}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(better5.condition, lessEqualThreshold10.y) annotation (Line(
        points={{-50,-84},{-50,-85.6}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(BrainFunctionEffect, lessEqualThreshold10.u) annotation (Line(
        points={{-99,91},{-90,91},{-90,-96},{-50,-96},{-50,-94.8}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(comatose.outPort[1], worse4.inPort) annotation (Line(
        points={{67.5,-41.75},{65.75,-41.75},{65.75,-42},{64,-42}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(worse4.outPort, notBreathing.inPort[1]) annotation (Line(
        points={{58.5,-42},{59.75,-42},{59.75,-41.3333},{45,-41.3333}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(confused.outPort[2], better.inPort) annotation (Line(
        points={{-3.5,43.75},{0,43.75},{0,74},{-30,74}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better5.outPort, notBreathing.inPort[3]) annotation (Line(
        points={{-48.5,-72},{-44,-72},{-44,-64},{48,-64},{48,-42.6667},{45,
          -42.6667}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(isReallyDead.outPort[1], better5.inPort) annotation (Line(
        points={{-84.5,-42},{-86,-42},{-86,-72},{-54,-72}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(lessEqualThreshold11.y, better1.condition)
                                                      annotation (Line(
        points={{14,89.6},{14,86}},
        color={255,0,255},
        smooth=Smooth.None));
      connect(lessEqualThreshold11.u, BrainFunctionEffect)
                                                        annotation (Line(
        points={{14,98.8},{-90,98.8},{-90,91},{-99,91}},
        color={0,0,127},
        smooth=Smooth.None));
      connect(impaired.outPort[2], better1.inPort) annotation (Line(
        points={{48.5,43.75},{52,43.75},{52,74},{18,74}},
        color={0,0,0},
        smooth=Smooth.None));
      connect(better1.outPort, confused.inPort[2]) annotation (Line(
        points={{12.5,74},{-25,74},{-25,43.5}},
        color={0,0,0},
        smooth=Smooth.None));
  end PatientStatus;
