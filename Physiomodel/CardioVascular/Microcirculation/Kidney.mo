within Physiomodel.CardioVascular.Microcirculation;
model Kidney
    extends Physiomodel.CardioVascular.Microcirculation.Interfaces.BaseDO;
    extends Physiolibrary.Icons.Kidney;

    Physiolibrary.Blocks.Factors.Normalization NephronCountEffect_AfferentArtery
    annotation (Placement(transformation(extent={{20,34},{40,54}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst Afferent_BasicConductance(k=4.2503489297921e-09)
    annotation (Placement(transformation(extent={{16,48},{28,60}})));
    VariableResistorWithMyogenicResponse AfferentArtery( PressureChangeOnMyogenicCondEffect={{-20.0,1.2,0.0},{0.0,1.0,-0.02},
          {20.0,0.8,0.0}}, pressureChange(start=0),
        InitialPressureChange(displayUnit="mmHg") = 9.33256711905,
        K_PressureChange(displayUnit="Hz"))
        annotation (Placement(transformation(extent={{20,-12},{44,12}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect2(
        data={{0.0,1.2,0.0},{1.3,1.0,-0.4},{3.0,0.6,0.0}},
        Xscale=1e-9/Substances.AngiotensinII.mw,
        UsePositiveLog10=true)
        annotation (Placement(transformation(extent={{-56,18},{-36,38}})));
    Physiolibrary.Types.Constants.HydraulicConductanceConst Efferent_BasicConductance(k=2.87523604074162e-009)
    annotation (Placement(transformation(extent={{-60,48},{-48,60}})));
    Physiolibrary.Blocks.Factors.Normalization NephronCountEffect_KidneyEfferentArtery
    annotation (Placement(transformation(extent={{-56,34},{-36,54}})));
    Physiolibrary.Hydraulic.Components.Conductor EfferentArtery(
        useConductanceInput=true)
        annotation (Placement(transformation(extent={{-34,-12},{-58,12}})));
    Physiolibrary.Hydraulic.Components.Conductor ArcuateArtery(Conductance=
    7.500615758456399e-008)
    annotation (Placement(transformation(extent={{78,-8},{62,8}})));
    Physiomodel.Nerves.AplhaReceptorsActivityFactor AplhaReceptors_KidneyAfferentArtery(data={{1.5,1.0,0.0},{7.0,0.9,0.0}})
    annotation (Placement(transformation(extent={{20,14},{40,34}})));
    Physiomodel.Nerves.AplhaReceptorsActivityFactor AplhaReceptors_KidneyEfferentArtery(data={{1.5,1.0,0.0},{7.0,0.9,0.0}})
    annotation (Placement(transformation(extent={{-56,6},{-36,26}})));
    Physiolibrary.Blocks.Factors.Normalization Anesthesia_KidneyEfferentArtery
    annotation (Placement(transformation(extent={{-56,26},{-36,46}})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure
    annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={-20,8})));
    Modelica.Blocks.Math.Product KidneyPlasmaFlow annotation (Placement(
      transformation(
      extent={{-5,-5},{5,5}},
      rotation=90,
      origin={83,67})));
    Physiolibrary.Hydraulic.Sensors.PressureMeasure pressureMeasure1
    annotation (Placement(transformation(
    extent={{10,-10},{-10,10}},
    origin={52,-20})));
    Modelica.Blocks.Math.Gain IFP(k=0.042)
    annotation (Placement(transformation(extent={{42,-84},{34,-76}})));
    Physiolibrary.Blocks.Factors.LagSpline     TGFEffect(
                                           data={{0.0,1.2,0.0},{1.3,1.0,
      -0.4},{3.0,0.6,0.0}},
        initialValue=1.01309,
        HalfTime=60*Modelica.Math.log(2),
        integrator(stateName="TGF-Vascular.Signal"))
        "Macula Densa TGF vascular signal delay and effect to afferent arteriole"
    annotation (Placement(transformation(extent={{20,26},{40,46}})));
    Physiolibrary.Blocks.Factors.Spline FurosemideEffect(data={{0.0,1.0,0.0},
        {1.3,0.2,0.0}}, Xscale=1e-3/Substances.Furosemide.mw)
        "furosemide outflow on Macula Densa Na sensibility"
        annotation (Placement(transformation(extent={{-10,-52},{10,-32}})));
    Physiolibrary.Blocks.Factors.Spline NaEffect_MaculaDensa(data={{0,0.0,0.0},
        {48,1.0,0.03},{100,3.0,0.0}})
        annotation (Placement(transformation(extent={{-10,-48},{10,-28}})));
    Physiolibrary.Blocks.Factors.Spline ANP_Effect(data={{0.0,1.2,0.0},{1.3,
        1.0,-0.3},{2.7,0.8,0.0}},
        UsePositiveLog10=true,
        Xscale=1e-9)
        annotation (Placement(transformation(extent={{-10,-56},{10,-36}})));
    Physiolibrary.Blocks.Factors.Spline A2Effect3(
        data={{0.0,0.0,0.0},{0.2,0.6,0.05},{1.3,1.0,0.1},{3.0,8.0,0.0}},
        Xscale=1e-9/Substances.AngiotensinII.mw,
        UsePositiveLog10=true)
        annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));
    Physiolibrary.Types.Constants.FractionConst MedulaDensa_BaseTGFSignal(k=1)
    annotation (Placement(transformation(extent={{-10,-34},{-2,-26}})));
    VasaRecta vasaRecta
        annotation (Placement(transformation(extent={{70,-90},{90,-70}})));
equation
    connect(Afferent_BasicConductance.y, NephronCountEffect_AfferentArtery.yBase)
                                                               annotation (Line(
        points={{29.5,54},{30,54},{30,46}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.Kidney_NephronCount_Total_xNormal,
      NephronCountEffect_AfferentArtery.u) annotation (Line(
        points={{-90,90},{-14,90},{-14,66},{-14,44},{22,44}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect, AplhaReceptors_KidneyAfferentArtery.AlphaPool_Effect)
      annotation (Line(
        points={{-90,90},{-90,90},{-14,90},{-14,62},{-14,30},{20.2,30}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaBlocade_Effect, AplhaReceptors_KidneyAfferentArtery.AlphaBlockade_Effect)
      annotation (Line(
        points={{-90,90},{-90,90},{-14,90},{-14,54},{-14,24},{20.2,24}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA,
      AplhaReceptors_KidneyAfferentArtery.GangliaGeneral_NA) annotation (
        Line(
        points={{-90,90},{-14,90},{-14,90},{-14,18},{20.2,18}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaPool_Effect, AplhaReceptors_KidneyEfferentArtery.AlphaPool_Effect)
      annotation (Line(
        points={{-90,90},{-92,90},{-92,22},{-55.8,22}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA,
      AplhaReceptors_KidneyEfferentArtery.GangliaGeneral_NA) annotation (
        Line(
        points={{-90,90},{-92,90},{-92,10},{-55.8,10}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.AlphaBlocade_Effect, AplhaReceptors_KidneyEfferentArtery.AlphaBlockade_Effect)
      annotation (Line(
        points={{-90,90},{-92,90},{-92,16},{-55.8,16}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Kidney_NephronCount_Total_xNormal,
      NephronCountEffect_KidneyEfferentArtery.u) annotation (Line(
        points={{-90,90},{-92,90},{-92,44},{-54,44}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Anesthesia_VascularConductance,
      Anesthesia_KidneyEfferentArtery.u) annotation (Line(
        points={{-90,90},{-92,90},{-92,36},{-54,36}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(Efferent_BasicConductance.y,
      NephronCountEffect_KidneyEfferentArtery.yBase) annotation (Line(
        points={{-46.5,54},{-46,54},{-46,46}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(A2Effect2.y, AplhaReceptors_KidneyEfferentArtery.yBase)
      annotation (Line(
        points={{-46,24},{-46,23}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(NephronCountEffect_KidneyEfferentArtery.y,
      Anesthesia_KidneyEfferentArtery.yBase) annotation (Line(
        points={{-46,40},{-46,38}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Anesthesia_KidneyEfferentArtery.y, A2Effect2.yBase) annotation (
       Line(
        points={{-46,32},{-46,30}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors_KidneyEfferentArtery.y, EfferentArtery.cond)
      annotation (Line(
        points={{-46,9},{-46,7.2}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(AplhaReceptors_KidneyAfferentArtery.y, AfferentArtery.cond)
      annotation (Line(
        points={{30,17},{30,4.8},{32,4.8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(pressureMeasure.q_in, AfferentArtery.q_out) annotation (Line(
        points={{-24,2},{-24,0},{20,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pressureMeasure.pressure, busConnector.GlomerulusBloodPressure)
    annotation (Line(
      points={{-14,4},{-14,-16},{-90,-16},{-90,90}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,-3},{6,-3}}));
    connect(busConnector.BloodVol_PVCrit, KidneyPlasmaFlow.u2)
      annotation (Line(
        points={{-90,90},{96,90},{96,56},{86,56},{86,61}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{6,-3},{6,-3}}));
    connect(KidneyPlasmaFlow.y, busConnector.KidneyPlasmaFlow)
      annotation (Line(
        points={{83,72.5},{83,90},{-90,90}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,3},{3,3}}));
    connect(ArcuateArtery.q_out, AfferentArtery.q_in) annotation (Line(
        points={{62,0},{44,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(EfferentArtery.q_in, AfferentArtery.q_out) annotation (Line(
        points={{-34,0},{20,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(EfferentArtery.q_out, q_out) annotation (Line(
        points={{-58,0},{-100,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(AfferentArtery.q_in, pressureMeasure1.q_in) annotation (Line(
        points={{44,0},{58,0},{58,-26},{56,-26}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(IFP.u, pressureMeasure1.pressure) annotation (Line(
      points={{42.8,-80},{46,-80},{46,-24}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(ANP_Effect.y,A2Effect3. yBase) annotation (Line(
        points={{0,-50},{0,-48}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(FurosemideEffect.y,ANP_Effect. yBase) annotation (Line(
        points={{0,-46},{0,-44}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(NaEffect_MaculaDensa.y,FurosemideEffect. yBase) annotation (
        Line(
        points={{0,-42},{0,-40}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(MedulaDensa_BaseTGFSignal.y,NaEffect_MaculaDensa. yBase)
      annotation (Line(
        points={{-1,-30},{0,-30},{0,-36}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(A2Effect3.y,TGFEffect. u) annotation (Line(
        points={{0,-54},{-26,-54},{-26,36},{22,36}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(NephronCountEffect_AfferentArtery.y, TGFEffect.yBase) annotation (
        Line(
        points={{30,40},{30,38}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(TGFEffect.y, AplhaReceptors_KidneyAfferentArtery.yBase) annotation (
        Line(
        points={{30,32},{30,31}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.FurosemidePool_Loss, FurosemideEffect.u)
      annotation (Line(
        points={{-90,90},{-90,-42},{-8,-42}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(flowMeasure.volumeFlow, KidneyPlasmaFlow.u1) annotation (Line(
        points={{88,12},{88,50},{80,50},{80,61}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(flowMeasure.q_out,ArcuateArtery. q_in) annotation (Line(
        points={{78,0},{78,0}},
        color={0,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector, vasaRecta.busConnector) annotation (Line(
        points={{-90,90},{-90,-72},{72,-72}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
    connect(pressureMeasure1.pressure, vasaRecta.ArcuateArtery_Pressure)
    annotation (Line(
      points={{46,-24},{46,-80},{72,-80}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.NephronIFP_Pressure, IFP.y) annotation (
        Line(
        points={{-90,90},{-90,-80},{33.6,-80}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.MD_Na, NaEffect_MaculaDensa.u)
      annotation (Line(
        points={{-90,90},{-90,-38},{-8,-38}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Angiotensin2, A2Effect2.u) annotation (Line(
      points={{-90,90},{-92,90},{-92,28},{-54,28}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Angiotensin2, A2Effect3.u) annotation (Line(
      points={{-90,90},{-90,-50},{-8,-50}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.ANP, ANP_Effect.u) annotation (Line(
      points={{-90,90},{-90,-46},{-8,-46}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
        annotation (
                      Documentation(info="<HTML>
            <PRE>
            Blood resistance in kidneys.

            QHP 2008 / Kidney-Flow

            </PRE>
            </HTML>
            ",     revisions="<html>

            <table>
            <tr>
            <td>Author:</td>
            <td>Marek Matejak</td>
            </tr>
            <tr>
            <td>License:</td>
            <td><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </td>
            </tr>
            <tr>
            <td>By:</td>
            <td>Charles University, Prague</td>
            </tr>
            <tr>
            <td>Date of:</td>
            <td>2009</td>
            </tr>
            <tr>
            <td>References:</td>
            <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
            </tr>
            </table>
            <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

            </html>"),Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},
                            {100,100}}),   graphics={Rectangle(extent={{-18,-24},{18,-62}},
                              lineColor={127,0,0}), Text(
                            extent={{-18,-62},{18,-56}},
                            lineColor={0,0,255},
                            textString="Macula Densa")}),         Icon(coordinateSystem(
                            preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                          graphics={Text(
                            extent={{-100,-100},{100,-80}},
                            lineColor={0,0,255},
                            textString="%name")}));
end Kidney;