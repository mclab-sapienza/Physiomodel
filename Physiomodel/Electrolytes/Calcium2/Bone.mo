within Physiomodel.Electrolytes.Calcium2;
model Bone
    extends Physiolibrary.Icons.Bone;
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
    Placement(transformation(extent={{-70,-14},{-50,6}}),
    iconTransformation(extent={{-30,-10},{-10,10}})));
    Physiolibrary.Chemical.Components.SolutePump v_4to12(useSoluteFlowInput=
    true)
    annotation (Placement(transformation(extent={{-34,-4},{-14,16}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-90,78},{-70,98}})));
    Physiomodel.Metabolism.deprecated.MolarStorageCompartment
    Ca_immediately_changeable(initialSoluteMass=100)
    annotation (Placement(transformation(extent={{8,-18},{28,2}})));
    Physiomodel.Metabolism.deprecated.MolarStorageCompartment
    Ca_nonimmediately_changeable(initialSoluteMass=249000)
    annotation (Placement(transformation(extent={{74,-18},{94,2}})));
    Physiolibrary.Chemical.Components.SolutePump flux1(useSoluteFlowInput=
    true)
    annotation (Placement(transformation(extent={{48,-12},{62,-26}})));
    Physiolibrary.Chemical.Components.SolutePump flux2(useSoluteFlowInput=
    true)
    annotation (Placement(transformation(extent={{62,-6},{48,8}})));
    Modelica.Blocks.Math.Gain k_12to13(k=1/(30*24))
    "\"assumed that all Ca immediatebly changable could become nonimmediately changable (if there is only one way of change) after one month\""
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={46,-30})));
    Modelica.Blocks.Math.Gain k_13to12(k=(1/(30*24))*(100/249000))
    "\"value calculated from k_12to13\""
                           annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=180,
    origin={66,14})));
    Physiolibrary.Chemical.Components.SolutePump v_12to4(useSoluteFlowInput=
    true)
    annotation (Placement(transformation(extent={{-14,-8},{-34,-28}})));

    model CalciumToBone

        Modelica.Blocks.Interfaces.RealInput Ca
                                   annotation (Placement(transformation(extent={
            {-100,20},{-60,60}}), iconTransformation(extent={{-100,20},{-60,60}})));
        Modelica.Blocks.Interfaces.RealInput Osteoblast
                                           annotation (Placement(transformation(
          extent={{-100,-60},{-60,-20}}), iconTransformation(extent={{-100,-60},
            {-60,-20}})));
        Modelica.Blocks.Interfaces.RealOutput fluxToBone
                                            annotation (Placement(
        transformation(extent={{60,-20},{100,20}}), iconTransformation(extent={{
            60,-20},{100,20}})));
    equation
        fluxToBone=3.667*Ca/2.35*(1-0.1144)+0.1144*(Osteoblast/0.00501324);
    end CalciumToBone;

    model CalciumFromBone

        Modelica.Blocks.Interfaces.RealInput RANK_RANKL
                                   annotation (Placement(transformation(extent={{-98,20},
            {-58,60}}),           iconTransformation(extent={{-100,20},{-60,60}})));
        Modelica.Blocks.Interfaces.RealInput Osteoclast
                                           annotation (Placement(transformation(
          extent={{-98,-60},{-58,-20}}),  iconTransformation(extent={{-100,-60},
            {-60,-20}})));
        Modelica.Blocks.Interfaces.RealOutput fluxToBone
                                            annotation (Placement(
        transformation(extent={{62,-20},{102,20}}), iconTransformation(extent={{60,-20},
            {100,20}})));
    equation

    end CalciumFromBone;

    CalciumToBone calciumToBone
    annotation (Placement(transformation(extent={{-34,40},{-14,20}})));
    CalciumFromBone calciumFromBone annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-24,-42})));
    Osteoblast osteoblast
    annotation (Placement(transformation(extent={{-34,58},{-14,78}})));
    Osteoclast osteoclast
    annotation (Placement(transformation(extent={{-34,-78},{-14,-58}})));
    RANK_RANKL RANK_RANKL_
    annotation (Placement(transformation(extent={{32,46},{52,66}})));
equation
    connect(q_in, v_4to12.q_in)    annotation (Line(
        points={{-60,-4},{-50,-4},{-50,6},{-34,6}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Ca_immediately_changeable.q_out, flux1.q_in) annotation (Line(
        points={{18,-8},{38,-8},{38,-19},{48,-19}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flux1.q_out, Ca_nonimmediately_changeable.q_out) annotation (Line(
        points={{62,-19},{72,-19},{72,-8},{84,-8}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flux2.q_in, Ca_nonimmediately_changeable.q_out) annotation (Line(
        points={{62,1},{72,1},{72,-8},{84,-8}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(Ca_immediately_changeable.q_out, flux2.q_out) annotation (Line(
        points={{18,-8},{38,-8},{38,1},{48,1}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(flux1.soluteFlow, k_12to13.y) annotation (Line(
        points={{55,-23.2},{55,-30},{50.4,-30}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Ca_immediately_changeable.soluteMass, k_12to13.u) annotation (Line(
        points={{18,-15.4},{18,-30},{41.2,-30}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(k_13to12.y, flux2.soluteFlow) annotation (Line(
        points={{61.6,14},{55,14},{55,5.2}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Ca_nonimmediately_changeable.soluteMass, k_13to12.u) annotation (Line(
        points={{84,-15.4},{84,-20},{98,-20},{98,14},{70.8,14}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(v_4to12.q_out, Ca_immediately_changeable.q_out) annotation (Line(
        points={{-14,6},{2,6},{2,-8},{18,-8}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(v_12to4.q_in, Ca_immediately_changeable.q_out) annotation (Line(
        points={{-14,-18},{2,-18},{2,-8},{18,-8}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(v_12to4.q_out, q_in) annotation (Line(
        points={{-34,-18},{-50,-18},{-50,-4},{-60,-4}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(calciumToBone.fluxToBone, v_4to12.soluteFlow) annotation (Line(
        points={{-16,30},{-10,30},{-10,16},{-24,16},{-24,12}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.CaPool_conc_per_liter, calciumToBone.Ca) annotation (
        Line(
        points={{-80,88},{-80,26},{-32,26}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(calciumFromBone.fluxToBone, v_12to4.soluteFlow) annotation (Line(
        points={{-16,-42},{-10,-42},{-10,-28},{-24,-28},{-24,-24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(osteoblast.Osteoblasts, calciumToBone.Osteoblast) annotation (Line(
        points={{-16,60},{-10,60},{-10,44},{-40,44},{-40,34},{-32,34}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.BCL2, osteoblast.BCL2) annotation (Line(
        points={{-80,88},{-80,72},{-32,72}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.active_TGF_beta, osteoblast.active_TGF_beta) annotation (
       Line(
        points={{-80,88},{-80,64},{-32,64}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(osteoclast.Osteoclasts, calciumFromBone.Osteoclast) annotation (Line(
        points={{-16,-68},{-8,-68},{-8,-54},{-40,-54},{-40,-46},{-32,-46}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.active_TGF_beta, osteoclast.active_TGF_beta) annotation (
       Line(
        points={{-80,88},{-80,-68},{-32,-68}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(RANK_RANKL_.RANK_RANKL, calciumFromBone.RANK_RANKL) annotation (Line(
        points={{50,56},{100,56},{100,-80},{-66,-80},{-66,-38},{-32,-38}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(osteoblast.Osteoblasts, RANK_RANKL_.Osteoblasts) annotation (Line(
        points={{-16,60},{-8,60},{-8,60},{34,60}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(osteoblast.RespondingOsteoblasts, RANK_RANKL_.RespondingOsteoblasts)
      annotation (Line(
        points={{-16,64},{-8,64},{-8,64},{34,64}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.active_TGF_beta, RANK_RANKL_.active_TGF_beta)
      annotation (Line(
        points={{-80,88},{-80,48},{34,48}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.PTH, RANK_RANKL_.PTH) annotation (Line(
        points={{-80,88},{-80,54},{34,54}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(preserveAspectRatio=false,
            extent={{-100,-100},{100,100}}), graphics={Text(
            extent={{-112,-98},{100,-118}},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid,
            textString="%name",
            lineColor={0,0,127})}));
end Bone;