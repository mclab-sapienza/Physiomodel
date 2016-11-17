within Physiomodel.CardioVascular.Microcirculation.Interfaces;
partial model Heart
    extends Physiomodel.CardioVascular.Microcirculation.Interfaces.BaseDO;

    //parameter Real BasicLargeVeselsConductance( final quantity="Conductance", final displayUnit="ml/(min.mmHg)");
    //parameter Real BasicSmallVeselsConductance( final quantity="Conductance", final displayUnit="ml/(min.mmHg)");
    parameter Physiolibrary.Types.HydraulicConductance BasicLargeVeselsConductance( displayUnit="ml/(min.mmHg)");
    parameter Physiolibrary.Types.HydraulicConductance BasicSmallVeselsConductance( displayUnit="ml/(min.mmHg)");

    Physiolibrary.Blocks.Factors.Spline PO2Effect(data={{12,2.0,0},{17,1.0,-0.04},
          {30,0.8,0}}, Xscale=101325/760)
      annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Physiolibrary.Blocks.Factors.Spline ADHEffect2(
      data={{0.8,1.0,0},{3.0,0.1,0}},
      UsePositiveLog10=true,
      Xscale=1e-9/Substances.Vasopressin.mw)
      annotation (Placement(transformation(extent={{60,58},{80,78}})));
    Physiolibrary.Blocks.Factors.Spline MetabolismEffect(data={{30,1.0,0},{
          100,3.0,0}}, Xscale=1/1362657.193569)
      "O2Need 1 ml_STP/min = 1/1362657.193569 mol/s"
      annotation (Placement(transformation(extent={{60,10},{80,30}})));
    Physiolibrary.Blocks.Factors.Normalization Anesthesia
      annotation (Placement(transformation(extent={{60,66},{80,86}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst
      LargeVesselBasicConductance(k=BasicLargeVeselsConductance)
      annotation (Placement(transformation(extent={{-6,18},{-18,30}})));
    Physiolibrary.Blocks.Factors.Normalization Viscosity1
      annotation (Placement(transformation(extent={{-30,4},{-10,24}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst
      SmallVesselBasicConductance(k=BasicSmallVeselsConductance)
      annotation (Placement(transformation(extent={{90,86},{78,98}})));
      Physiomodel.Nerves.AplhaReceptorsActivityFactor aplhaReceptorsActivityFactor(
          data={{0.0,1.3,0},{1.0,1.0,-0.16},{4.0,0.8,0}})
        annotation (Placement(transformation(extent={{60,46},{80,66}})));
    Physiolibrary.Blocks.Factors.DamagedFraction Infraction
      annotation (Placement(transformation(extent={{60,2},{80,22}})));
      Physiolibrary.Blocks.Factors.SplineLagOrZero              Vasculature(
          data={{41,1.2,0},{51,1.0,-0.03},{61,0.8,0}}, HalfTime=30*86400*Modelica.Math.log(2),
        integrator(y_start=1.2),
      Xscale=101325/760)
        annotation (Placement(transformation(extent={{60,30},{80,50}})));
    Physiolibrary.Blocks.Factors.Normalization Viscosity
      annotation (Placement(transformation(extent={{60,74},{80,94}})));
    Physiolibrary.Hydraulic.Components.Conductor resistor2_1(
        useConductanceInput=true)
      annotation (Placement(transformation(extent={{60,-10},{80,10}})));
    Physiolibrary.Hydraulic.Components.Conductor resistor2_2(
        useConductanceInput=true)
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
equation
    connect(LargeVesselBasicConductance.y, Viscosity1.yBase) annotation (Line(
      points={{-19.5,24},{-20,24},{-20,16}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Viscosity.y, Anesthesia.yBase) annotation (Line(
      points={{70,80},{70,78}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Anesthesia_VascularConductance, Anesthesia.u)
    annotation (Line(
      points={{-90,90},{6,90},{6,76},{62,76}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Viscosity_ConductanceEffect, Viscosity.u) annotation (
      Line(
      points={{-90,90},{6,90},{6,84},{62,84}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect, aplhaReceptorsActivityFactor.AlphaPool_Effect)
    annotation (Line(
      points={{-90,90},{6,90},{6,62},{60.2,62}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaBlocade_Effect, aplhaReceptorsActivityFactor.AlphaBlockade_Effect)
    annotation (Line(
      points={{-90,90},{6,90},{6,56},{60.2,56}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA, aplhaReceptorsActivityFactor.GangliaGeneral_NA)
    annotation (Line(
      points={{-90,90},{6,90},{6,50},{60.2,50}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Viscosity_ConductanceEffect, Viscosity1.u) annotation (
      Line(
      points={{-90,90},{-74,90},{-74,14},{-28,14}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(Viscosity.yBase, SmallVesselBasicConductance.y) annotation (
      Line(
      points={{70,86},{70,92},{76.5,92}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Anesthesia.y, ADHEffect2.yBase) annotation (Line(
      points={{70,72},{70,70}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ADHEffect2.y, aplhaReceptorsActivityFactor.yBase) annotation (
      Line(
      points={{70,64},{70,63}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(aplhaReceptorsActivityFactor.y, Vasculature.yBase) annotation (
      Line(
      points={{70,49},{70,46}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Vasculature.y, PO2Effect.yBase) annotation (Line(
      points={{70,34},{70,32}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(PO2Effect.y, MetabolismEffect.yBase) annotation (Line(
      points={{70,26},{70,22}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(MetabolismEffect.y, Infraction.yBase) annotation (Line(
      points={{70,16},{70,14}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(q_out, resistor2_2.q_in) annotation (Line(
      points={{-100,0},{-30,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(resistor2_2.q_out, resistor2_1.q_in) annotation (Line(
      points={{-10,0},{60,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(resistor2_1.q_out, flowMeasure.q_out) annotation (Line(
      points={{80,0},{78,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(resistor2_1.cond, Infraction.y) annotation (Line(
      points={{70,6},{70,8}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(resistor2_2.cond, Viscosity1.y) annotation (Line(
      points={{-20,6},{-20,10}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Vasopressin, ADHEffect2.u) annotation (Line(
        points={{-90,90},{6,90},{6,68},{62,68}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
      annotation (
        Documentation(info="<HTML>
            <PRE>
            Blood resistance in left heart.

            QHP 2008 / LeftHeart-Flow

            </PRE>
            </HTML>
            ",       revisions="<html>
            <ul>
            <li><i>  </i>
                   </li>
            <li><i> january 2009 </i><br>
                   by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
                   orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
                   </li>
            </ul>
            </html>"), Icon(graphics={Text(
                              extent={{-100,-100},{100,-80}},
                              lineColor={0,0,255},
                              textString="%name")}));
end Heart;