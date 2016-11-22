within Physiomodel.Electrolytes.Calcium2;
model CaGILumen
        import Physiomodel;
        extends Physiolibrary.Icons.GILumen;
        Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
        Placement(transformation(extent={{90,-10},{110,10}}),
        iconTransformation(extent={{90,-10},{110,10}})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-96,70},{-76,90}}), iconTransformation(
        extent={{-96,70},{-76,90}})));
        Physiolibrary.Chemical.Components.Substance GILumen(useNormalizedVolume=
        false, solute_start=(1.3)/1000)
        annotation (Placement(transformation(extent={{-24,-4},{-4,16}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
        Physiolibrary.Chemical.Components.SolutePump v_1to4_active(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{32,0},{52,20}})));
        Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                               annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        origin={-36,12})));
        Physiomodel.Electrolytes.Calcium2.Factors.H_plus H21_plus(
        delta=0.75,
        gamma=4,
        ro=0.25,
        alpha=1.0805625)
        annotation (Placement(transformation(extent={{-30,38},{-50,58}})));
        Physiolibrary.Chemical.Components.SolutePump v_1to4_passive(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{32,-8},{52,-28}})));
        Modelica.Blocks.Math.Gain k_1to4(k=0.0495)
                               annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        origin={30,-36})));
        Physiomodel.Electrolytes.Calcium2.Factors.H d21(alpha=2, delta=0.75)
        annotation (Placement(transformation(extent={{32,12},{52,32}})));
        Physiomodel.Metabolism.deprecated.MolarStorageCompartment CaTransporters(
        initialSoluteMass=0.5)
        annotation (Placement(transformation(extent={{32,50},{52,70}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump1(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{10,50},{30,70}})));
        Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut inputPump2(
        useSoluteFlowInput=true)
        annotation (Placement(transformation(extent={{74,50},{94,70}})));
        Physiomodel.Electrolytes.Calcium2.Factors.H_plus H62_plus(
        alpha=0.037,
        delta=90,
        ro=0.003)
        annotation (Placement(transformation(extent={{10,58},{30,78}})));
        Physiomodel.Electrolytes.Calcium2.Factors.H_minus H62_minus(
        alpha=0.037,
        delta=90,
        ro=0.003)
        annotation (Placement(transformation(extent={{74,58},{94,78}})));
        Modelica.Blocks.Math.Feedback feedback annotation (Placement(
        transformation(
        extent={{6,-6},{-6,6}},
        rotation=90,
        origin={20,80})));
        Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=1)
        annotation (Placement(transformation(extent={{8,90},{16,98}})));
        Physiomodel.Electrolytes.Calcium2.Factors.H H1to4(alpha=0.9, delta=1)
        annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={42,30})));
        Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
        annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={10,30})));
equation
    connect(inputPump.q_out, GILumen.q_out) annotation (Line(
    points={{-30,40},{-14,40},{-14,6}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GILumen.q_out, v_1to4_active.q_in)  annotation (Line(
    points={{-14,6},{10,6},{10,10},{32,10}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(v_1to4_active.q_out, q_out)  annotation (Line(
    points={{52,10},{80,10},{80,0},{100,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(mlTOlitre.y, GILumen.solutionVolume) annotation (Line(
    points={{-31.6,12},{-24,12},{-24,10},{-18,10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.GILumenVolume_Mass, mlTOlitre.u) annotation (Line(
    points={{-86,80},{-86,12},{-40.8,12}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Diet_Ca_Intake, H21_plus.yBase) annotation (Line(
    points={{-86,80},{-86,50},{-40,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(H21_plus.y, inputPump.soluteFlow) annotation (Line(
    points={{-40,44},{-36,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, v_1to4_passive.q_in) annotation (Line(
    points={{-14,6},{10,6},{10,-18},{32,-18}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(v_1to4_passive.q_out, q_out) annotation (Line(
    points={{52,-18},{80,-18},{80,0},{100,0}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(GILumen.solute, k_1to4.u) annotation (Line(
    points={{-14,-4},{-14,-36},{25.2,-36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(k_1to4.y, v_1to4_passive.soluteFlow) annotation (Line(
    points={{34.4,-36},{46,-36},{46,-22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.solute, d21.u) annotation (Line(
    points={{-14,-4},{-14,-18},{4,-18},{4,22},{32.2,22}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(d21.y, v_1to4_active.soluteFlow) annotation (Line(
    points={{42,18},{42,16},{42,14},{46,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(inputPump1.q_out, CaTransporters.q_out) annotation (Line(
    points={{26,60},{42,60}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(CaTransporters.q_out, inputPump2.q_in) annotation (Line(
    points={{42,60},{78,60}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(H62_plus.y, inputPump1.soluteFlow) annotation (Line(
    points={{20,64},{24,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H62_minus.y, inputPump2.soluteFlow) annotation (Line(
    points={{84,64},{88,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Calcitriol, H62_plus.u) annotation (Line(
    points={{-86,80},{-86,100},{-10,100},{-10,68},{10.2,68}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Calcitriol, H62_minus.u) annotation (Line(
    points={{-86,80},{-86,100},{56,100},{56,68},{74.2,68}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(CaTransporters.soluteMass, H21_plus.u) annotation (Line(
    points={{42,52.6},{42,48},{-30.2,48}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CaTransporters.soluteMass, H62_minus.yBase) annotation (Line(
    points={{42,52.6},{42,48},{98,48},{98,80},{84,80},{84,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.y, H62_plus.yBase) annotation (Line(
    points={{20,74.6},{20,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(feedback.u2, CaTransporters.soluteMass) annotation (Line(
    points={{24.8,80},{98,80},{98,48},{42,48},{42,52.6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Constant.y, feedback.u1) annotation (Line(
    points={{17,94},{20,94},{20,84.8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CaTransporters.soluteMass, H1to4.yBase) annotation (Line(
    points={{42,52.6},{42,32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(H1to4.y, d21.yBase) annotation (Line(
    points={{42,26},{42,24}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, H1to4.u) annotation (Line(
    points={{14,30},{32.2,30}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(GILumen.q_out, concentrationMeasure.q_in) annotation (Line(
    points={{-14,6},{8,6},{8,30}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
      -100},{100,100}}), graphics={Text(
    extent={{-108,-110},{104,-130}},
    fillColor={255,255,255},
    fillPattern=FillPattern.Solid,
    textString="%name",
    lineColor={0,0,127})}));
end CaGILumen;