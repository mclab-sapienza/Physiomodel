within Physiomodel.CardioVascular.Heart.develop;
model Ventricle3
    extends Physiomodel.CardioVascular.Heart.Interfaces.IVentricle;

    parameter String stateName;

    Physiolibrary.Types.Constants.FractionConst
        basicContractility(k=contractilityBasic)
        annotation (Placement(transformation(extent={{60,2},{68,10}})));

    Physiomodel.Nerves.BetaReceptorsActivityFactor betaReceptorsActivityFactor
        annotation (Placement(transformation(extent={{64,-20},{84,0}})));

    Modelica.Blocks.Math.Add Vol_SteadyState(k1=0.5, k2=0.5)
        annotation (Placement(
            transformation(
            extent={{10,-10},{-10,10}},
            rotation=270,
            origin={-34,18})));

    develop.Diastole3 diastole(
        stiffnes=stiffnes,
        n_Diastole=n_Diastole,
        Abasic_Diastole=Abasic_Diastole) annotation (Placement(
          transformation(extent={{-76,-44},{-56,-24}})));

    Systole systole(
        n_Systole=n_Systole,
        Abasic_Systole=Abasic_Systole,
        additionalPressure_Systolic=additionalPressure_Systolic,
        NormalSystolicPressure=NormalSystolicPressure,
        NormalEndSystolicVolume=NormalEndSystolicVolume)
        annotation (Placement(transformation(extent={{56,-44},{76,-24}})));

    Modelica.Blocks.Math.Feedback StrokeVolume
        annotation (Placement(transformation(extent={{-10,-10},{10,10}},
            origin={-8,-6})));

        VentricleVolumeAndPumping2 ventricle(
        initialVolume=initialVol,
        K=K,
        BasicCompliance=BasicCompliance,
        stateName=stateName)
               annotation (Placement(transformation(extent={{-8,66},{12,86}})));

    Modelica.Blocks.Math.Product BloodFlow     annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={16,40})));
equation
    connect(basicContractility.y, betaReceptorsActivityFactor.yBase)
                                                     annotation (Line(
        points={{69,6},{74,6},{74,-3}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(busConnector.BetaPool_Effect, betaReceptorsActivityFactor.BetaPool_Effect)
        annotation (Line(
        points={{22,2},{22,-4},{64.2,-4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.BetaBlocade_Effect, betaReceptorsActivityFactor.BetaBlockade_Effect)
        annotation (Line(
        points={{22,2},{22,-10},{64.2,-10}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.GangliaGeneral_NA, betaReceptorsActivityFactor.GangliaGeneral_NA)
        annotation (Line(
        points={{22,2},{22,-16},{64.2,-16}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(diastole.externalPressure, busConnector.Pericardium_Pressure)
        annotation (Line(
        points={{-56,-40},{22,-40},{22,2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.Pericardium_Pressure, systole.externalPressure)
        annotation (Line(
        points={{22,2},{22,-40},{56,-40}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(betaReceptorsActivityFactor.y, systole.contractility)
        annotation (Line(
        points={{74,-17},{74,-24}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(diastole.EDV,StrokeVolume. u1) annotation (Line(
        points={{-56,-26},{-40,-26},{-40,-6},{-16,-6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Vol_SteadyState.u2, diastole.EDV) annotation (Line(
        points={{-40,6},{-40,-26},{-56,-26}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systole.outflow, q_out) annotation (Line(
        points={{76,-30},{86,-30},{86,80},{80,80}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(q_in, diastole.inflow) annotation (Line(
        points={{-80,80},{-82,80},{-82,-30},{-76,-30}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(systole.ESV, Vol_SteadyState.u1) annotation (Line(
        points={{56,-26},{-28,-26},{-28,6}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(systole.ESV,StrokeVolume. u2) annotation (Line(
        points={{56,-26},{-8,-26},{-8,-14}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Vol_SteadyState.y, ventricle.VentricleSteadyStateVolume)
        annotation (Line(
        points={{-34,29},{-34,58},{-6,58},{-6,66}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(q_in, ventricle.q_in)                 annotation (Line(
        points={{-80,80},{-54,80},{-54,76},{-8,76}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(ventricle.q_out, q_out)                 annotation (Line(
        points={{12,76},{56,76},{56,80},{80,80}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(StrokeVolume.y, BloodFlow.u1)     annotation (Line(
        points={{1,-6},{10,-6},{10,28}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(BloodFlow.y, ventricle.BloodFlow)                 annotation (Line(
        points={{16,51},{16,58},{10,58},{10,66}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(ventricle.Volume, Vol)                 annotation (Line(
        points={{12.4,71},{14.7,71},{14.7,33},{73,33}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(BloodFlow.u2, busConnector.HeartVentricleRate)
        annotation (Line(
        points={{22,28},{22,2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(BloodFlow.y, CO) annotation (Line(
        points={{16,51},{16,59},{77,59}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(diastole.HR, busConnector.HeartVentricleRate) annotation (
        Line(
        points={{-56,-33.2},{22,-33.2},{22,2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (
            Documentation(info="<HTML>
            <PRE>
            Heart ventricle.

            like
            QHP 2008 / VascularCompartments/LeftVentricle/*



            The pressure-volume characteristics of both ventricles in diastole
            and systole will be described using a power function.

              P = A * (V ^ n)

            P = Pressure
            V = Volume
            A = Scale Factor
            n = curvature

            The function is invertable.

              V = (P/A) ^ (1/n)

            Some typical values

                                             Right                 Left
                                       ---------------------- ------------------------
            Nominal Vol                     87.5                  87.5
            Nominal TMP                      3.0                   6.0
            Compliance                      29.2                  14.6
            Pericardial P                   -3.0                  -3.0

            DIASTOLE
              EDP                            1.0                   5.0
              EDV                          125.0                 125.0
              TMP                            4.0                   8.0
              n                              2.0                   2.0
              V^n                        15625.0               15625.0
              A                              0.00026               0.00051

            SYSTOLE
              ESP                           22.0                 120.0
              ESV                           50.0                  50.0
              TMP                           25.0                 123.0
              n                              0.5                   0.5
              V^n                            7.07                  7.07
              A                              3.53                 17.39
            </PRE>
            </HTML>
            ",       revisions="<html>

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
            <td>january 2009</td>
            </tr>
            <tr>
            <td>References:</td>
            <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
            </tr>
            </table>
            <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

            </html>"),  Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                                {100,100}}), graphics={Text(
                              extent={{-78,26},{80,12}},
                              lineColor={0,0,0},
                              textString="contractilityBasic = %contractilityBasic")}),
                                                      Diagram(coordinateSystem(preserveAspectRatio=true,
                                       extent={{-100,-100},{100,100}}), graphics={Text(
                              extent={{-32,62},{-8,60}},
                              lineColor={0,0,0},
                              textString="Volume_SteadyState"), Text(
                              extent={{8,62},{32,60}},
                              lineColor={0,0,0},
                              textString="Blood_Inflow")}));
end Ventricle3;