within Physiomodel.CardioVascular.Heart.Interfaces;
partial model IVentricle
    extends Physiolibrary.Icons.HeartVentricle;
    parameter Physiolibrary.Types.Volume initialVol = 90e-6 "Initial blood volume in ventricle";
    // parameter Physiolibrary.Types.Volume initialESV = 50e-6;

    parameter Physiolibrary.Types.Volume NormalEndDiastolicVolume = 70e-6
      "Typical value of blood volume in ventricle after filling"
        annotation (Dialog(group="Diastole"));
    parameter Physiolibrary.Types.Pressure NormalFillingPressure = (0.00051*101325/760)*(NormalEndDiastolicVolume^(1/n_Diastole))
      "Typical value of filling pressure relative to pericardium pressure"
        annotation (Dialog(group="Diastole"));
    parameter Physiolibrary.Types.Fraction stiffnes = 1
      "Relative stiffnes (1 if normal)"
        annotation (Dialog(group="Diastole"));
    parameter Physiolibrary.Types.Fraction n_Diastole(displayUnit="1") = 2
      "Exponent of P-V characteristic of EDV curve on filling pressure"
        annotation (Dialog(group="Diastole"));
    //parameter Real Abasic_Diastole = 0.00051
    //    "parametrization of end diastolic volume curve"
    //    annotation (Dialog(group="Diastole"));

    parameter Physiolibrary.Types.Pressure NormalSystolicPressure = 15998.684210526315789473684210526
      "Typical value of systolic pressure relative to pericardium pressure"
        annotation (Dialog(group="Systole"));
    parameter Physiolibrary.Types.Volume NormalEndSystolicVolume = (NormalSystolicPressure/(17.39*101325/760))^(n_Systole)
      "Typical value of blood volume in ventricle after ejection"
        annotation (Dialog(group="Systole"));
    //parameter Real Abasic_Systole = 17.39
    //    "parametrization of end systolic volume curve";
    parameter Physiolibrary.Types.Pressure additionalPressure_Systolic
      "Pressure difference between mean and systolic pressure"
        annotation (Dialog(group="Systole"));     //= 24
    parameter Physiolibrary.Types.Fraction contractilityBasic
      "Relative contractility (1 if normal)"
         annotation (Dialog(group="Systole"));       //= 1
    parameter Physiolibrary.Types.Fraction n_Systole(displayUnit="1")=0.5
      "Exponent of P-V characteristic of ESV curve on systolic pressure"
        annotation (Dialog(group="Systole"));

    parameter Physiolibrary.Types.Frequency K
      "time adaptation coeficient of average ventricle blood volume";
                                                  // = 1
    parameter Physiolibrary.Types.HydraulicCompliance BasicCompliance; //(final quantity="Compliance", final displayUnit="ml/mmHg") = 1;

    parameter Physiolibrary.Types.Pressure NormalExternalPressure = -446
      "Typical value of pericardium cavity pressure (relative to environment ambient pressure)";
                                                                             //-446 Pa = -3.34522 mmHg

    //parameter Physiolibrary.Types.HydraulicCompliance MaxContractionCompliance; //=1;
    //parameter Physiolibrary.Types.HydraulicConductance Cond1;//=1;
    //parameter Physiolibrary.Types.HydraulicConductance Cond2;//=1;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a q_in annotation (
        extent=[-10,-110; 10,-90], Placement(transformation(extent={{-90,70},
              {-70,90}}),iconTransformation(extent={{10,70},{30,90}})));
    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_b q_out annotation (
        extent=[-10,-110; 10,-90], Placement(transformation(extent={{70,70},
              {90,90}}),   iconTransformation(extent={{-30,90},{-10,110}})));

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{12,-8},{32,12}}), iconTransformation(
            extent={{-10,-64},{10,-44}})));

    Physiolibrary.Types.RealIO.VolumeOutput Vol
                                  annotation (Placement(transformation(
          extent={{70,30},{76,36}}),    iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={40,-40})));

    annotation (
        Documentation(info="<html>
        <pre>Heart ventricle interface.</pre>
        </html>",revisions="<html>
        <ul>
            <li><i>january 2009 </i><br>by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center </li>
            <li><i>2014</i><br>Marek Matejak - update to Physiolibrary 2.3.0</li>
        </ul>
        </html>"),  Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},
              {100,100}}),   graphics={Text(
              extent={{-100,-126},{100,-92}},
              textString="%name",
              lineColor={0,0,255})}));
end IVentricle;