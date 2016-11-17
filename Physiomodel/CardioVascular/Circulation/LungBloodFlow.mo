within Physiomodel.CardioVascular.Circulation;
model LungBloodFlow
    extends Physiolibrary.Icons.LungShunt;
    Physiolibrary.Types.RealIO.VolumeFlowRateInput CardiacOutput
        annotation (Placement(transformation(extent={{-120,40},{-80,80}})));

    parameter Physiolibrary.Types.Fraction BasicRLShuntFraction(displayUnit="%") =  0.02 "basic percentage of total blood flow not exposed to lung air";                                             
    //  parameter Real BasicRLShunt(final displayUnit="ml/min") =  110; // 220.0;
    parameter Physiolibrary.Types.Pressure RightHemithorax_Pressure( displayUnit="mmHg") =   -533.28954966;
    parameter Physiolibrary.Types.Pressure LeftHemithorax_Pressure( displayUnit="mmHg") =   -533.28954966;

    Physiolibrary.Types.Pressure PressureGradientRightLeft(displayUnit="mmHg")
        "difference between right and left hemithorax pressure";
    Physiolibrary.Types.Fraction Thorax_RightLungFlowFract(displayUnit="1")
        "fraction of blood flow to right lung";
    Physiolibrary.Types.Fraction Thorax_LeftLungFlowFract(displayUnit="1")
        "fraction of blood flow to left lung";
    Physiolibrary.Types.Fraction RightHemithorax_LungInflation(displayUnit="1")
        "dammage effect of right hemithorax inflation";
    Physiolibrary.Types.Fraction LeftHemithorax_LungInflation(displayUnit="1")
        "dammage effect of left hemithorax inflation";
    Physiolibrary.Types.VolumeFlowRate Total(displayUnit="ml/min")
        "cardiac output";

    Physiolibrary.Types.VolumeFlowRate RightLeftShunt(displayUnit="ml/min")
        "blood flow not exposed to lung air without dammage effect";
    Physiolibrary.Types.VolumeFlowRate Alveolar(displayUnit="ml/min")
        "blood flow exposed to lung air without dammage effect";

      //  Real RightLungTotal(final displayUnit="ml/min") "right lung blood flow exposed to lung air without dammage effect";
      //  Real RightLungVentilated(final displayUnit="ml/min") "right lung blood flow exposed to lung air";
      //  Real RightLungShunt(final displayUnit="ml/min");
      //  Real LeftLungTotal(final displayUnit="ml/min");
      //  Real LeftLungVentilated(final displayUnit="ml/min");
      //  Real LeftLungShunt(final displayUnit="ml/min");
      //  Real AlveolarShunt(final displayUnit="ml/min");
      //  Real TotalShunt(final displayUnit="ml/min");

    parameter Real[:,3] PressureOnInflation =   {{ -4.0,  1.0,  0}, {  4.0,  0.0,  0}};
    parameter Real[:,3] PressureGradientOnFlowDist =   {{ -25,  0.0,  0}, {   0,  0.5,  0.03}, {  25,  1.0,  0}};

    Physiolibrary.Types.RealIO.VolumeFlowRateOutput AlveolarVentilated(
          final displayUnit="ml/min") annotation (Placement(transformation(extent={{80,40},{120,80}}),
          iconTransformation(extent={{80,40},{120,80}})));
    Physiolibrary.Blocks.Interpolation.Curve Thorax_PressureGradientOnFlowDist(
        x=PressureGradientOnFlowDist[:, 1],
        y=PressureGradientOnFlowDist[:, 2],
        slope=PressureGradientOnFlowDist[:, 3],
          Xscale=101325/760)
    annotation (Placement(transformation(extent={{-40,52},{-20,72}})));
    Physiolibrary.Blocks.Interpolation.Curve Thorax_PressureOnInflationR(
        x=PressureOnInflation[:, 1],
        y=PressureOnInflation[:, 2],
        slope=PressureOnInflation[:, 3],
          Xscale=101325/760)
        annotation (Placement(transformation(extent={{52,46},{72,66}})));
    Physiolibrary.Blocks.Interpolation.Curve Thorax_PressureOnInflationL(
        x=PressureOnInflation[:, 1],
        y=PressureOnInflation[:, 2],
        slope=PressureOnInflation[:, 3],
          Xscale=101325/760)
        annotation (Placement(transformation(extent={{-2,-24},{18,-4}})));
equation
    PressureGradientRightLeft  =  RightHemithorax_Pressure - LeftHemithorax_Pressure;

    //division between left and rigth lung blood flow by hemithorax pressure
    Thorax_PressureGradientOnFlowDist.u = PressureGradientRightLeft;
    Thorax_LeftLungFlowFract  =  Thorax_PressureGradientOnFlowDist.val;
    Thorax_RightLungFlowFract  =  1.0 - Thorax_LeftLungFlowFract;

    //damage effect of hemithorax pressure
    Thorax_PressureOnInflationR.u = RightHemithorax_Pressure;
    RightHemithorax_LungInflation = Thorax_PressureOnInflationR.val;
    Thorax_PressureOnInflationL.u = LeftHemithorax_Pressure;
    LeftHemithorax_LungInflation = Thorax_PressureOnInflationL.val;

    Total  =  CardiacOutput;
    RightLeftShunt  = BasicRLShuntFraction*Total; //min(BasicRLShunt,Total);
    Alveolar  =  Total - RightLeftShunt;
      //       RightLungTotal  =  Alveolar * Thorax_RightLungFlowFract;
      //       RightLungVentilated  =  RightLungTotal * RightHemithorax_LungInflation;
      //       RightLungShunt  =  RightLungTotal - RightLungVentilated;
      //       LeftLungTotal  =  Alveolar * Thorax_LeftLungFlowFract;
      //       LeftLungVentilated  =  LeftLungTotal * LeftHemithorax_LungInflation;
      //       LeftLungShunt  =  LeftLungTotal - LeftLungVentilated;
      //       AlveolarVentilated  =  RightLungVentilated + LeftLungVentilated;
      //       AlveolarShunt  =  RightLungShunt + LeftLungShunt;
      //       TotalShunt  =  RightLeftShunt + AlveolarShunt;
    AlveolarVentilated  = Alveolar * ( Thorax_RightLungFlowFract * RightHemithorax_LungInflation + Thorax_LeftLungFlowFract * LeftHemithorax_LungInflation);
        annotation ( Documentation(revisions="<html>

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

        </html>", info="<html>
        <p>Calculation of blood flow fraction through ventilated alveoli.</p>
        </html>"),Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                          {100,100}}), graphics={                             Text(
                        extent={{-102,-92},{112,-114}},
                        lineColor={0,0,255},
                        textString="%name")}));
end LungBloodFlow;