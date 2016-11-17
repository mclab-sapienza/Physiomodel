within Physiomodel.CardioVascular.Microcirculation;
model Skin
    extends Physiomodel.CardioVascular.Microcirculation.Interfaces.BaseDO;
    extends Physiolibrary.Icons.Skin;

    Physiolibrary.Hydraulic.Components.Conductor skin(useConductanceInput=
        true)
    annotation (Placement(transformation(extent={{80,-26},{56,-2}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect_Skin(
    data={{0.0,1.05,0},{1.3,1.00,-0.08},{3.5,0.50,0}},
    Xscale=1e-9/Substances.AngiotensinII.mw,
    UsePositiveLog10=true)
    annotation (Placement(transformation(extent={{58,30},{78,50}})));
    Physiolibrary.Blocks.Factors.Spline ADHEffect_Skin(
    data={{0.8,1.0,0},{3.0,0.1,0}},
    Xscale=1e-9/Substances.Vasopressin.mw,
    UsePositiveLog10=true)
    annotation (Placement(transformation(extent={{58,16},{78,36}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst BasicConductance(k=
        2.0001642022551e-10)
    annotation (Placement(transformation(extent={{54,72},{66,84}})));
    Physiolibrary.Blocks.Factors.Normalization Viscosity_Skin
    annotation (Placement(transformation(extent={{58,58},{78,78}})));
    Physiolibrary.Blocks.Factors.Normalization Anesthesia_Skin
    annotation (Placement(transformation(extent={{58,50},{78,70}})));
    Physiolibrary.Blocks.Factors.SplineLagOrZero
      Vasculature_Skin(HalfTime=30*86400*Modelica.Math.log(2), data={{41,1.2,0},{51,1.0,-0.03},{61,0.8,0}},
      stateName="Skin-Vasculature.Effect")
      annotation (Placement(transformation(extent={{58,40},{78,60}})));
    Physiolibrary.Blocks.Factors.Normalization TermoregulationEffect
    annotation (Placement(transformation(extent={{58,-2},{78,18}})));
equation
        connect(Anesthesia_Skin.yBase,Viscosity_Skin. y) annotation (Line(
        points={{68,62},{68,64}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Anesthesia_Skin.y,Vasculature_Skin. yBase) annotation (Line(
        points={{68,56},{68,56}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Vasculature_Skin.y,A2Effect_Skin. yBase) annotation (Line(
        points={{68,44},{68,42}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(BasicConductance.y, Viscosity_Skin.yBase)      annotation (Line(
        points={{67.5,78},{68,78},{68,70}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.Viscosity_ConductanceEffect, Viscosity_Skin.u)
        annotation (Line(
        points={{-90,90},{-12,90},{-12,68},{60,68}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Anesthesia_VascularConductance, Anesthesia_Skin.u)
        annotation (Line(
        points={{-90,90},{-12,90},{-12,60},{60,60}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Skin_Function_Failed, Vasculature_Skin.Failed)
        annotation (Line(
        points={{-90,90},{-12,90},{-12,54},{58,54}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Skin_PO2, Vasculature_Skin.u) annotation (Line(
        points={{-90,90},{-12,90},{-12,48},{58,48}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(skin.q_out, q_out) annotation (Line(
        points={{56,-14},{-24,-14},{-24,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(skin.q_in, flowMeasure.q_out) annotation (Line(
        points={{80,-14},{80,0},{78,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
        connect(ADHEffect_Skin.y, busConnector.skin_conductanceWithoutTermoregulationEffect)
        annotation (Line(
        points={{68,22},{-90,22},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(busConnector.skinFlow_termoregulationEffect,
        TermoregulationEffect.u) annotation (Line(
        points={{-90,90},{-88,90},{-88,8},{60,8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(ADHEffect_Skin.y, TermoregulationEffect.yBase) annotation (Line(
        points={{68,22},{68,10}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(TermoregulationEffect.y, skin.cond) annotation (Line(
        points={{68,4},{68,-6.8}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(A2Effect_Skin.y, ADHEffect_Skin.yBase) annotation (Line(
        points={{68,36},{68,28}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.Angiotensin2, A2Effect_Skin.u) annotation (Line(
        points={{-90,90},{-12,90},{-12,40},{60,40}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(busConnector.Vasopressin, ADHEffect_Skin.u) annotation (Line(
        points={{-90,90},{-12,90},{-12,26},{60,26}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
         annotation (
          Documentation(info="<HTML>
                <PRE>
        Blood resistance in skin.

        QHP 2008 / Skin-Flow

        </PRE>
        </HTML>
        ",     revisions="<html>
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
end Skin;