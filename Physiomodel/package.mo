﻿within ;
package Physiomodel "Mammalian physiology model"
  extends Physiolibrary.Icons.GolemLib;


  package Setup "Environment Influences"
    extends Physiolibrary.Icons.SetupLib;

    model Setup
      extends Physiolibrary.Icons.Setup;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{54,-24},{74,-4}}), iconTransformation(extent=
              {{60,40},{100,80}})));
      Exercise exercise
        annotation (Placement(transformation(extent={{0,10},{20,30}})));
      Tissues tissuesSetup
        annotation (Placement(transformation(extent={{20,-58},{40,-38}})));
      Blood bloodInOut
        annotation (Placement(transformation(extent={{-24,-60},{-4,-40}})));
      Enviroment enviroment
        annotation (Placement(transformation(extent={{-36,14},{-16,34}})));
      Posture posture
        annotation (Placement(transformation(extent={{38,4},{58,24}})));
      Diet diet
        annotation (Placement(transformation(extent={{-76,14},{-56,34}})));
      Drugs drugs
        annotation (Placement(transformation(extent={{-68,-58},{-48,-38}})));
      Secretion secretion
        annotation (Placement(transformation(extent={{-50,42},{-30,62}})));
      Anesthesia anesthesia
        annotation (Placement(transformation(extent={{-16,42},{4,62}})));
      Unpaired unpaired
        annotation (Placement(transformation(extent={{58,-62},{78,-42}})));
    equation
      connect(enviroment.busConnector, busConnector) annotation (Line(
          points={{-28,24},{-38,24},{-38,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(exercise.busConnector, busConnector) annotation (Line(
          points={{8,20},{-2,20},{-2,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(tissuesSetup.busConnector, busConnector) annotation (Line(
          points={{28,-48},{16,-48},{16,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(bloodInOut.busConnector, busConnector) annotation (Line(
          points={{-16,-50},{-22,-50},{-22,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(posture.busConnector, busConnector) annotation (Line(
          points={{46,14},{38,14},{38,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(diet.busConnector, busConnector) annotation (Line(
          points={{-68,24},{-76,24},{-76,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(drugs.busConnector, busConnector) annotation (Line(
          points={{-60,-48},{-66,-48},{-66,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(secretion.busConnector, busConnector) annotation (Line(
          points={{-42,52},{-50,52},{-50,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(anesthesia.busConnector, busConnector) annotation (Line(
          points={{-8,52},{-16,52},{-16,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      connect(unpaired.busConnector, busConnector) annotation (Line(
          points={{66,-52},{66,-33},{66,-14},{64,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-120,-42},{122,-76}},
              lineColor={0,0,255},
              textString="%name")}));
    end Setup;

    model Enviroment

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=9.81)
      annotation (Placement(transformation(extent={{14,36},{8,42}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant77(k=760)
      annotation (Placement(transformation(extent={{34,76},{28,82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant78(k=760)
      annotation (Placement(transformation(extent={{34,68},{28,74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant8(k=0)
      annotation (Placement(transformation(extent={{76,90},{68,98}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Gravity_Gz(k=1)
      annotation (Placement(transformation(extent={{14,28},{8,34}})));
    Physiolibrary.Types.Constants.FractionConst EnvironmentRelativeHumidity(k=
          0.7000000000000001)
      annotation (Placement(transformation(extent={{-84,12},{-78,18}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant AmbientTemperature(
        k=22.2)
      annotation (Placement(transformation(extent={{-84,20},{-78,26}})));
    equation
      connect(busConnector.BarometerPressure,Constant77. y)
        annotation (Line(
          points={{-33,-13},{-33,79},{27.25,79}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(busConnector.AirSupplyInspiredAirPressure,Constant78. y)
        annotation (Line(
          points={{-33,-13},{-33,71},{27.25,71}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(busConnector.pCO,Constant8. y) annotation (Line(
          points={{-33,-13},{46,-13},{46,94},{67,94}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(Gravity_Gz.y, busConnector.Gravity_Gz) annotation (Line(
          points={{7.25,31},{-33,31},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
        annotation (Line(
          points={{-77.25,15},{8,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(AmbientTemperature.y, busConnector.AmbientTemperature)
        annotation (Line(
          points={{-77.25,23},{-33,23},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="enviroment")}));
    end Enviroment;

    model Diet

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-24,-4}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant14(k=0)
      annotation (Placement(transformation(extent={{24,40},{16,48}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant15(k=0)
      annotation (Placement(transformation(extent={{24,48},{16,56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant16(k=0)
      annotation (Placement(transformation(extent={{24,56},{16,64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant17(k=0)
      annotation (Placement(transformation(extent={{24,64},{16,72}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant18(k=0)
      annotation (Placement(transformation(extent={{24,72},{16,80}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant19(k=
          0.128213)
      annotation (Placement(transformation(extent={{24,80},{16,88}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant20(k=0)
      annotation (Placement(transformation(extent={{24,88},{16,96}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant21(k=0)
      annotation (Placement(transformation(extent={{58,-98},{50,-90}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant22(k=0)
      annotation (Placement(transformation(extent={{80,-90},{72,-82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant23(k=0)
      annotation (Placement(transformation(extent={{36,-74},{28,-66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant24(k=0)
      annotation (Placement(transformation(extent={{82,-64},{74,-56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant25(k=0)
      annotation (Placement(transformation(extent={{36,-44},{28,-36}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant26(k=
          5.2e-002)
      annotation (Placement(transformation(extent={{-66,-72},{-74,-64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant27(k=0)
      annotation (Placement(transformation(extent={{24,32},{16,40}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant28(k=0)
      annotation (Placement(transformation(extent={{82,-28},{74,-20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant29(k=0)
      annotation (Placement(transformation(extent={{82,-20},{74,-12}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant30(k=0)
      annotation (Placement(transformation(extent={{82,-12},{74,-4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant31(k=0)
      annotation (Placement(transformation(extent={{82,-4},{74,4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant32(k=0)
      annotation (Placement(transformation(extent={{82,4},{74,12}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant33(k=
          0.142459)
      annotation (Placement(transformation(extent={{82,12},{74,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant34(k=0)
      annotation (Placement(transformation(extent={{82,20},{74,28}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst PO4(k(displayUnit=
            "mmol/min") = 0.022)
      annotation (Placement(transformation(extent={{-94,-32},{-86,-24}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst SO4(k=0.037)
      annotation (Placement(transformation(extent={{-94,-50},{-86,-42}})));
    Physiolibrary.Types.Constants.TemperatureConst          DietGoalH2O_DegK(k=294.261)
      annotation (Placement(transformation(extent={{-94,-14},{-88,-8}})));
    equation
      connect(Constant14.y,busConnector. IVDrip_NaRate) annotation (Line(
          points={{15,44},{-32,44},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant15.y,busConnector. Transfusion_NaRate) annotation (Line(
          points={{15,52},{-32,52},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant16.y,busConnector. SweatDuct_NaRate) annotation (Line(
          points={{15,60},{-32,60},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant17.y,busConnector. Hemorrhage_NaRate) annotation (Line(
          points={{15,68},{-32,68},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant18.y,busConnector. DialyzerActivity_Na_Flux) annotation (
          Line(
          points={{15,76},{-32,76},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant19.y,busConnector. DietIntakeElectrolytes_Na) annotation (
          Line(
          points={{15,84},{-32,84},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant20.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
          points={{15,92},{-32,92},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant21.y,busConnector. IVDrip_KRate) annotation (Line(
          points={{49,-94},{-32,-94},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant22.y,busConnector. Transfusion_KRate) annotation (Line(
          points={{71,-86},{-32,-86},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant23.y,busConnector. SweatDuct_KRate) annotation (Line(
          points={{27,-70},{-32,-70},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant24.y,busConnector. Hemorrhage_KRate) annotation (Line(
          points={{73,-60},{-32,-60},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant25.y,busConnector. DialyzerActivity_K_Flux) annotation (
          Line(
          points={{27,-40},{-32,-40},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant26.y,busConnector. DietIntakeElectrolytes_K) annotation (
          Line(
          points={{-75,-68},{-32,-68},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant27.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
          points={{15,36},{-32,36},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant28.y,busConnector. IVDrip_ClRate) annotation (Line(
          points={{73,-24},{-32,-24},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant29.y,busConnector. Transfusion_ClRate) annotation (Line(
          points={{73,-16},{-32,-16},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant30.y,busConnector. SweatDuct_ClRate) annotation (Line(
          points={{73,-8},{-32,-8},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant31.y,busConnector. Hemorrhage_ClRate) annotation (Line(
          points={{73,0},{-32,0},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant32.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
          Line(
          points={{73,8},{-32,8},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant33.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
          Line(
          points={{73,16},{-32,16},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Constant34.y, busConnector.GILumenVomitus_ClLoss) annotation (Line(
          points={{73,24},{-32,24},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None));
    connect(PO4.y, busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
        points={{-85,-28},{-80,-28},{-80,-30},{-32,-30},{-32,-12}},
        color={0,0,127},
        thickness=0.5,
        smooth=Smooth.None));
    connect(SO4.y, busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
        points={{-85,-46},{-32,-46},{-32,-12}},
        color={0,0,127},
        thickness=0.5,
        smooth=Smooth.None));
      connect(DietGoalH2O_DegK.y, busConnector.DietGoalH2O_DegK) annotation (
          Line(
          points={{-87.25,-11},{-84,-12},{-32,-12}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="diet")}));
    end Diet;

    model Exercise

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const7(k=1)
      annotation (Placement(transformation(extent={{-90,-88},{-84,-82}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const24(k=0)
      annotation (Placement(transformation(extent={{-90,-80},{-84,-74}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const25(k=0)
      annotation (Placement(transformation(extent={{-90,-48},{-84,-42}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const19(k=1)
      annotation (Placement(transformation(extent={{-90,-36},{-84,-30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const14(k=0.37)
      annotation (Placement(transformation(extent={{-96,-16},{-90,-10}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const15(k=0.27)
      annotation (Placement(transformation(extent={{-96,-6},{-90,0}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const11(k=0)
      annotation (Placement(transformation(extent={{-80,22},{-76,26}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=0)
      annotation (Placement(transformation(extent={{-90,-64},{-84,-58}})));
    equation
      connect(const7.y,busConnector. Exercise_MusclePump_Effect) annotation (
          Line(
          points={{-83.25,-85},{-48,-85},{-48,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const24.y,busConnector. Exercise_Metabolism_ContractionRate)
        annotation (Line(
          points={{-83.25,-77},{-48,-77},{-48,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const25.y,busConnector. Exercise_Metabolism_MotionWatts)
        annotation (Line(
          points={{-83.25,-45},{-48,-45},{-48,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const19.y, busConnector.LegMusclePump_Effect) annotation (Line(
          points={{-83.25,-33},{-47.85,-33},{-47.85,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const14.y, busConnector.HeatInsensibleSkin_H2O)  annotation (Line(
          points={{-89.25,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const15.y, busConnector.HeatInsensibleLung_H2O)  annotation (Line(
          points={{-89.25,-3},{-48.9,-3},{-48.9,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const11.y, busConnector.HeatSweating_H2O) annotation (Line(
          points={{-75.5,24},{-32.9,24},{-32.9,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const2.y, busConnector.ExerciseMetabolism_TotalWatts) annotation (
         Line(
          points={{-83.25,-61},{-48,-61},{-48,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const11.y, busConnector.SweatDuct_H2OOutflow) annotation (Line(
          points={{-75.5,24},{-33,24},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="exercise")}));
    end Exercise;

    model Posture

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const36(k=0)
      annotation (Placement(transformation(extent={{64,50},{58,56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const37(k=0)
      annotation (Placement(transformation(extent={{64,44},{58,50}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const10(k=0)
      annotation (Placement(transformation(extent={{64,32},{58,38}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant integerConstant(k=
          Physiomodel.Water.Hydrostatics.Posture.Lying)
      annotation (Placement(transformation(extent={{18,12},{24,18}})));
    equation
      connect(const36.y,busConnector. LowerTorsoArtyHeight)
        annotation (Line(
          points={{57.25,53},{52,53},{52,58},{-38,58},{-38,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const37.y,busConnector. LowerTorsoVeinHeight)
        annotation (Line(
          points={{57.25,47},{52,47},{52,58},{-38,58},{-38,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const10.y,busConnector. CarotidSinusHeight)
        annotation (Line(
          points={{57.25,35},{52,35},{52,58},{-38,58},{-38,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(integerConstant.y, busConnector.Status_Posture) annotation (Line(
          points={{24.75,15},{62.15,15},{62.15,-13},{-33,-13}},
          color={0,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="posture")}));
    end Posture;

    model Drugs

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const38(k=0)
      annotation (Placement(transformation(extent={{26,-72},{20,-66}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=0)
      annotation (Placement(transformation(extent={{-80,-88},{-72,-80}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=0)
      annotation (Placement(transformation(extent={{-92,6},{-84,14}})));
    equation
      connect(const38.y, busConnector.FurosemidePool_Loss) annotation (Line(
          points={{19.25,-69},{-33,-69},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant1.y,busConnector. FurosemidePool_Furosemide_conc)
        annotation (Line(
          points={{-71,-84},{-38,-84},{-38,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant2.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
          Line(
          points={{-83,10},{-62,10},{-62,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="drugs")}));
    end Drugs;

    model Blood

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const41(k=0)
      annotation (Placement(transformation(extent={{-90,-2},{-84,4}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const5(k=0)
      annotation (Placement(transformation(extent={{-90,-36},{-84,-30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const6(k=0)
      annotation (Placement(transformation(extent={{-92,-78},{-86,-72}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const(k=0)
      annotation (Placement(transformation(extent={{-90,10},{-86,14}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const22(k=0)
      annotation (Placement(transformation(extent={{-90,-24},{-86,-20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const16(k=0)
      annotation (Placement(transformation(extent={{-90,-62},{-86,-58}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const1(k=0)
      annotation (Placement(transformation(extent={{-90,-52},{-86,-48}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const2(k=0)
      annotation (Placement(transformation(extent={{-90,-44},{-84,-38}})));
    equation
      connect(const6.y, busConnector.Hemorrhage_ProteinRate) annotation (Line(
          points={{-85.25,-75},{-85.25,-75.5},{-33,-75.5},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const5.y, busConnector.Transfusion_ProteinRate) annotation (Line(
          points={{-83.25,-33},{-83.25,-32.5},{-33,-32.5},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const41.y, busConnector.IVDripProteinRate) annotation (Line(
          points={{-83.25,1},{-83.25,0.5},{-33,0.5},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const.y, busConnector.IVDrip_H2ORate)  annotation (Line(
          points={{-85.5,12},{-39.85,12},{-39.85,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const22.y, busConnector.Transfusion_PlasmaRate)
                                                             annotation (Line(
          points={{-85.5,-22},{-33,-22},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const16.y, busConnector.Hemorrhage_PlasmaRate)
                                                            annotation (Line(
          points={{-85.5,-60},{-33,-60},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, busConnector.Hemorrhage_RBCRate) annotation (Line(
          points={{-85.5,-50},{-33,-50},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const2.y, busConnector.Transfusion_RBCRate) annotation (Line(
          points={{-83.25,-41},{-33,-41},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="blood +-")}));
    end Blood;

    model Tissues

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
      Modelica.Blocks.Sources.Step step(
        startTime=600,
        height=0,
        offset=-3)
        annotation (Placement(transformation(extent={{-88,-40},{-78,-30}})));
      Modelica.Blocks.Sources.Step step1(
        offset=-4,
        startTime=600,
        height=0)
        annotation (Placement(transformation(extent={{-88,-26},{-78,-16}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant12(k=1)
      annotation (Placement(transformation(extent={{-90,46},{-84,52}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant11(k=0)
      annotation (Placement(transformation(extent={{-90,52},{-84,58}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant1(k=1)
      annotation (Placement(transformation(extent={{-88,22},{-80,30}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant21(units=
          "ml", k=31)
      annotation (Placement(transformation(extent={{-86,70},{-78,78}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant2(k=1)
      annotation (Placement(transformation(extent={{-88,10},{-80,18}})));
    equation
      connect(step.y,busConnector. Pericardium_Pressure)          annotation (
         Line(
          points={{-77.5,-35},{-32,-35},{-32,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(step1.y,busConnector. Thorax_AvePressure)          annotation (
          Line(
          points={{-77.5,-21},{-33,-21},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant12.y, busConnector.Thorax_LungInflation)
        annotation (Line(
          points={{-83.25,49},{-33,49},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant11.y, busConnector.ExcessLungWater_Volume)
        annotation (Line(
          points={{-83.25,55},{-33,55},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant1.y, busConnector.Kidney_NephronCount_Total_xNormal)
        annotation (Line(
          points={{-79,26},{-34,26},{-34,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant21.y, busConnector.Medulla_Volume)        annotation (Line(
          points={{-77,74},{-34,74},{-34,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Constant2.y, busConnector.Kidney_NephronCount_Filtering_xNormal)
        annotation (Line(
          points={{-79,14},{-34,14},{-34,-13},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="tissues")}));
    end Tissues;

    model Secretion "of urine and faeces"

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const9(k=0)
      annotation (Placement(transformation(extent={{-60,24},{-56,28}})));
    equation
      connect(const9.y, busConnector.BladerVoidFlow) annotation (Line(
          points={{-55.5,26},{-33,26},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const9.y, busConnector.BladderVoidFlow) annotation (Line(
          points={{-55.5,26},{-33,26},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="secretion")}));
    end Secretion;

    model Anesthesia

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-40,-20},{-26,-6}}), iconTransformation(
            extent={{-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const9(k=1)
      annotation (Placement(transformation(extent={{-60,24},{-56,28}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant const1(k=1)
      annotation (Placement(transformation(extent={{-76,14},{-72,18}})));
    equation
      connect(const9.y, busConnector.AnesthesiaTidalVolume) annotation (Line(
          points={{-55.5,26},{-33,26},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, busConnector.Anesthesia_VascularConductance)
        annotation (Line(
          points={{-71.5,16},{-33,16},{-33,-13}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-100,-20},{100,-60}},
              lineColor={0,0,0},
              textString="anesthesia")}),        Documentation(info="<html>
<p>effect 1 means no anesthesia</p>
</html>"));
    end Anesthesia;

    model Unpaired

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{72,-2},{86,12}}), iconTransformation(extent={
              {-40,-20},{0,20}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant HeatShivering_Cals(
        k=0.)
      annotation (Placement(transformation(extent={{-96,-70},{-90,-64}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      HypothalamusSkinFlow_NervesActivity(k=0.935029749050722)
      annotation (Placement(transformation(extent={{-96,-78},{-90,-72}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      HypothalamusTSH_TemperatureEffect(k=1.03855784498264)
      annotation (Placement(transformation(extent={{-96,-62},{-90,-56}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant
      skeletalMuscle_SizeMass(k=26743.5620376591)
      annotation (Placement(transformation(extent={{-96,22},{-90,28}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant skinSizeMass(k=
          2792.87262585285)
      annotation (Placement(transformation(extent={{-96,28},{-90,34}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant WeightCore(k=
          48332.7389031163)
      annotation (Placement(transformation(extent={{-96,34},{-90,40}})));
    equation
    connect(skeletalMuscle_SizeMass.y, busConnector.skeletalMuscle_SizeMass) annotation (Line(
     points={{-89.25,25},{79,25},{79,5}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skinSizeMass.y, busConnector.skinSizeMass) annotation (Line(
     points={{-89.25,31},{79,31},{79,5}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(WeightCore.y, busConnector.WeightCore) annotation (Line(
     points={{-89.25,37},{79,37},{79,5}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    end Unpaired;

    package IO_Bus
      extends Physiolibrary.Types.IO_Bus;

      redeclare model extends Variables
        extends Physiolibrary.Icons.Setup;

      T.Pressure AirSupplyInspiredAirPressure(varName="AirSupply-InspiredAir.Pressure")
      annotation (Placement(transformation(extent={{-78,22},{-70,14}})));
      T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance")
      annotation (Placement(transformation(extent={{-80,-144},{-74,-138}})));
      T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume")
      annotation (Placement(transformation(extent={{-80,-134},{-74,-128}})));
      T.Pressure BarometerPressure(varName="Barometer.Pressure")
      annotation (Placement(transformation(extent={{-86,38},{-80,44}})));
      T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM")
      annotation (Placement(transformation(extent={{68,36},{74,42}})));
      T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl-Flux")
      annotation (Placement(transformation(extent={{-80,-84},{-74,-78}})));
      T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux")
      annotation (Placement(transformation(extent={{-80,-74},{-74,-68}})));
      T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux")
      annotation (Placement(transformation(extent={{-80,-64},{-74,-58}})));
      T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K")
      annotation (Placement(transformation(extent={{-80,-54},{-74,-48}})));
      T.MolarFlowRate DietIntakeElectrolytes_Cl(varName="DietIntakeElectrolytes.Cl-_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-44},{-74,-38}})));
      T.MolarFlowRate DietIntakeElectrolytes_K(varName="DietIntakeElectrolytes.K+_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-30},{-74,-24}})));
      T.MolarFlowRate DietIntakeElectrolytes_Na(varName="DietIntakeElectrolytes.Na+_mEq/Min")
      annotation (Placement(transformation(extent={{-80,-24},{-74,-18}})));
      T.MolarFlowRate DietIntakeElectrolytes_PO4(varName="DietIntakeElectrolytes.PO4--mEq/Min")
      annotation (Placement(transformation(extent={{-80,-14},{-74,-8}})));
      T.MolarFlowRate DietIntakeElectrolytes_SO4(varName="DietIntakeElectrolytes.SO4--mEq/Min")
      annotation (Placement(transformation(extent={{-80,-4},{-74,2}})));
      T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate")
      annotation (Placement(transformation(extent={{-144,46},{-138,52}})));
      T.Power ExerciseMetabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W")
      annotation (Placement(transformation(extent={{-140,22},{-134,28}})));
      T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W")
      annotation (Placement(transformation(extent={{-140,30},{-134,36}})));
      T.Concentration FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Substances.Furosemide.unitConversions)
      annotation (Placement(transformation(extent={{-80,66},{-74,72}})));
      T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Substances.Furosemide.unitConversions)
      annotation (Placement(transformation(extent={{-80,76},{-74,82}})));
      T.Fraction Gravity_Gz(varName="Gravity.Gz")
      annotation (Placement(transformation(extent={{-80,86},{-74,92}})));
      T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss")
      annotation (Placement(transformation(extent={{-80,96},{-74,102}})));
      T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss")
      annotation (Placement(transformation(extent={{-80,106},{-74,112}})));
      T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss")
      annotation (Placement(transformation(extent={{-80,116},{-74,122}})));
      T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate")
      annotation (Placement(transformation(extent={{72,-176},{78,-170}})));
      T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate")
      annotation (Placement(transformation(extent={{60,-142},{66,-136}})));
      T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate")
      annotation (Placement(transformation(extent={{72,-168},{78,-162}})));
      T.VolumeFlowRate Hemorrhage_PlasmaRate(varName="Hemorrhage.PlasmaRate")
      annotation (Placement(transformation(extent={{72,-158},{78,-152}})));
      T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,-148},{78,-142}})));
      T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate")
      annotation (Placement(transformation(extent={{72,-138},{78,-132}})));
      T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate")
      annotation (Placement(transformation(extent={{72,-128},{78,-122}})));
      T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate")
      annotation (Placement(transformation(extent={{72,-118},{78,-112}})));
      T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate")
      annotation (Placement(transformation(extent={{72,-108},{78,-102}})));
      T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate")
      annotation (Placement(transformation(extent={{72,-98},{78,-92}})));
      T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)")
      annotation (Placement(transformation(extent={{72,-88},{78,-82}})));
      T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)")
      annotation (Placement(transformation(extent={{72,-78},{78,-72}})));
      T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect")
      annotation (Placement(transformation(extent={{-128,-28},{-122,-22}})));
      T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM")
      annotation (Placement(transformation(extent={{72,-58},{78,-52}})));
      T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM")
      annotation (Placement(transformation(extent={{72,-48},{78,-42}})));
      T.Pressure pCO(varName="pCO")
      annotation (Placement(transformation(extent={{-78,8},{-72,14}})));
      T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure")
      annotation (Placement(transformation(extent={{-102,2},{-96,8}})));
      T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g")
      annotation (Placement(transformation(extent={{50,164},{56,170}})));
      T.Mass skinSizeMass(varName="Skin-Size.Mass")
      annotation (Placement(transformation(extent={{100,158},{106,164}})));
      T.Fraction Status_Posture(varName="Status.Posture")
      annotation (Placement(transformation(extent={{70,42},{76,48}})));
      T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l")
      annotation (Placement(transformation(extent={{72,62},{78,68}})));
      T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure")
      annotation (Placement(transformation(extent={{72,72},{78,78}})));
      T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation")
      annotation (Placement(transformation(extent={{72,82},{78,88}})));
      T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate")
      annotation (Placement(transformation(extent={{72,92},{78,98}})));
      T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate")
      annotation (Placement(transformation(extent={{72,102},{78,108}})));
      T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate")
      annotation (Placement(transformation(extent={{72,112},{78,118}})));
      T.VolumeFlowRate Transfusion_PlasmaRate(varName="Transfusion.PlasmaRate")
      annotation (Placement(transformation(extent={{72,122},{78,128}})));
      T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,132},{78,138}})));
      T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate")
      annotation (Placement(transformation(extent={{72,142},{78,148}})));
      T.Mass WeightCore(varName="Weight.Core")
      annotation (Placement(transformation(extent={{72,152},{78,158}})));

      T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min")
      annotation (Placement(transformation(extent={{72,-124},{78,-118}})));
      T.Temperature AmbientTemperature(varName=
              "AmbientTemperature.Temp(C)")
      annotation (Placement(transformation(extent={{-82,44},{-76,50}})));
      T.Fraction EnvironmentRelativeHumidity(varName=
              "EnvironmentRelativeHumidity")
      annotation (Placement(transformation(extent={{-82,24},{-76,30}})));
      T.VolumeFlowRate DietIntakeH2O_Rate(varName="DietIntakeH2O.Rate(mL/Min)")
      annotation (Placement(transformation(extent={{-78,-20},{-72,-14}})));
      T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(
            varName="DialyzerActivity.UltrafiltrationRate")
      annotation (Placement(transformation(extent={{-86,-80},{-74,-68}})));
      T.VolumeFlowRate Hemorrhage_PlasmaRate1(                         varName="Hemorrhage.H2ORate")
      annotation (Placement(transformation(extent={{98,-168},{110,-156}})));
      T.VolumeFlowRate Transfusion_PlasmaRate1(                         varName="Transfusion.H2ORate")
      annotation (Placement(transformation(extent={{88,114},{98,124}})));
      T.VolumeFlowRate GILumenVomitus_H2OTarget(varName=
              "GILumenVomitus.H2OTarget")
      annotation (Placement(transformation(extent={{-84,122},{-72,134}})));
      T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName=
              "GILumenDiarrhea.H2OTarget")
      annotation (Placement(transformation(extent={{-82,132},{-70,144}})));
      T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH")
      annotation (Placement(transformation(extent={{-84,52},{-78,58}})));
      T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm")
          annotation (Placement(transformation(extent={{-82,142},{-70,154}})));
      T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure",
            storeUnit="mmHg")
          annotation (Placement(transformation(extent={{-82,32},{-76,38}})));
      equation
        connect( Gravity_Gz.y,busConnector.Gravity_Gz)          annotation (Line(
            points={{-73.7,89},{90,89},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(BarometerPressure.y,busConnector.BarometerPressure)
          annotation (Line(
            points={{-79.7,41},{4,41},{4,-2},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(AirSupplyInspiredAirPressure.y,busConnector.AirSupplyInspiredAirPressure)
          annotation (Line(
            points={{-69.6,18},{4,18},{4,-2},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(pCO.y,busConnector.pCO) annotation (Line(
            points={{-71.7,11},{90,11},{90,-2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect( IVDrip_NaRate.y,busConnector. IVDrip_NaRate) annotation (Line(
            points={{78.3,-95},{90,-95},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_NaRate.y,busConnector. Transfusion_NaRate) annotation (Line(
            points={{78.3,115},{90,115},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_NaRate.y,busConnector. Hemorrhage_NaRate) annotation (Line(
            points={{78.3,-165},{90,-165},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_Na_Flux.y,busConnector. DialyzerActivity_Na_Flux) annotation (
            Line(
            points={{-73.7,-61},{90,-61},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_Na.y,busConnector. DietIntakeElectrolytes_Na) annotation (
            Line(
            points={{-73.7,-21},{90,-21},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( GILumenDiarrhea_NaLoss.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
            points={{-73.7,109},{90,109},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( IVDrip_KRate.y,busConnector. IVDrip_KRate) annotation (Line(
            points={{78.3,-105},{90,-105},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_KRate.y,busConnector. Transfusion_KRate) annotation (Line(
            points={{78.3,105},{90,105},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_KRate.y,busConnector. Hemorrhage_KRate) annotation (Line(
            points={{66.3,-139},{90,-139},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_K_Flux.y,busConnector. DialyzerActivity_K_Flux) annotation (
            Line(
            points={{-73.7,-71},{90,-71},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_K.y,busConnector. DietIntakeElectrolytes_K) annotation (
            Line(
            points={{-73.7,-27},{90,-27},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( GILumenDiarrhea_KLoss.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
            points={{-73.7,99},{90,99},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( IVDrip_ClRate.y,busConnector. IVDrip_ClRate) annotation (Line(
            points={{78.3,-125},{90,-125},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Transfusion_ClRate.y,busConnector. Transfusion_ClRate) annotation (Line(
            points={{78.3,95},{90,95},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( Hemorrhage_ClRate.y,busConnector. Hemorrhage_ClRate) annotation (Line(
            points={{78.3,-173},{90,-173},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DialyzerActivity_Cl_Flux.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
            Line(
            points={{-73.7,-81},{90,-81},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect( DietIntakeElectrolytes_Cl.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
            Line(
            points={{-73.7,-41},{90,-41},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
            points={{-73.7,119},{90,119},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(DietIntakeElectrolytes_PO4.y,busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
            points={{-73.7,-11},{6,-11},{6,-2},{90,-2}},
            color={0,0,127},
            thickness=0.5,
            smooth=Smooth.None));
        connect(DietIntakeElectrolytes_SO4.y,busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
            points={{-73.7,-1},{90,-1},{90,-2}},
            color={0,0,127},
            thickness=0.5,
            smooth=Smooth.None));
        connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK) annotation (
            Line(
            points={{-73.7,-51},{-73.7,-50},{-28,-50},{-28,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Exercise_Metabolism_ContractionRate.y,busConnector. Exercise_Metabolism_ContractionRate)
          annotation (Line(
            points={{-137.7,49},{90,49},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect) annotation (Line(
            points={{-121.7,-25},{94.15,-25},{94.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts) annotation (
           Line(
            points={{-133.7,33},{90,33},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight)
          annotation (Line(
            points={{78.3,-55},{-6,-55},{-6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( LowerTorsoVeinHeight.y,busConnector. LowerTorsoVeinHeight)
          annotation (Line(
            points={{78.3,-45},{-6,-45},{-6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( CarotidSinusHeight.y,busConnector. CarotidSinusHeight)
          annotation (Line(
            points={{74.3,39},{0,39},{0,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Status_Posture.y,busConnector.Status_Posture) annotation (Line(
            points={{76.3,45},{6.15,45},{6.15,-2},{90,-2}},
            color={0,0,255},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( FurosemidePool_Furosemide_conc.y,busConnector. FurosemidePool_Furosemide_conc)
          annotation (Line(
            points={{-73.7,69},{8,69},{8,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( ThiazidePool_Thiazide_conc.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
            Line(
            points={{78.3,65},{90,65},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(FurosemidePool_Loss.y,busConnector.FurosemidePool_Loss) annotation (Line(
            points={{-73.7,79},{90,79},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate)  annotation (Line(
            points={{78.3,-115},{0.15,-115},{0.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_PlasmaRate.y,busConnector.Transfusion_PlasmaRate)
                                                               annotation (Line(
            points={{78.3,125},{90,125},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_PlasmaRate.y,busConnector.Hemorrhage_PlasmaRate)
                                                              annotation (Line(
            points={{78.3,-155},{90,-155},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_RBCRate.y,busConnector.Hemorrhage_RBCRate) annotation (Line(
            points={{78.3,-135},{90,-135},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_RBCRate.y,busConnector.Transfusion_RBCRate) annotation (Line(
            points={{78.3,145},{90,145},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Pericardium_Pressure.y,busConnector. Pericardium_Pressure)          annotation (
           Line(
            points={{-95.7,5},{90,5},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect( Thorax_AvePressure.y,busConnector. Thorax_AvePressure)          annotation (
            Line(
            points={{78.3,75},{90,75},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation)
          annotation (Line(
            points={{78.3,85},{90,85},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal)
          annotation (Line(
            points={{78.3,-75},{6,-75},{6,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Kidney_NephronCount_Filtering_xNormal.y,busConnector.Kidney_NephronCount_Filtering_xNormal)
          annotation (Line(
            points={{78.3,-85},{90,-85},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume)
                                                              annotation (Line(
            points={{-73.7,-131},{90,-131},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Anesthesia_VascularConductance.y,busConnector.Anesthesia_VascularConductance)
          annotation (Line(
            points={{-73.7,-141},{90,-141},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass) annotation (Line(
       points={{56.3,167},{90,167},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(skinSizeMass.y,busConnector.skinSizeMass) annotation (Line(
       points={{106.3,161},{90,161},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(WeightCore.y,busConnector.WeightCore) annotation (Line(
       points={{78.3,155},{90,155},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

        connect(AmbientTemperature.y, busConnector.AmbientTemperature)
          annotation (Line(
            points={{-75.7,47},{90,47},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
          annotation (Line(
            points={{-75.7,27},{90,27},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(DietIntakeH2O_Rate.y, busConnector.DietIntakeH2O_Rate) annotation (Line(
       points={{-71.7,-17},{90,-17},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate)
          annotation (Line(
            points={{-73.4,-74},{90,-74},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate)
                                                                        annotation (Line(
       points={{110.6,-162},{90,-162},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_PlasmaRate1.y, busConnector.Transfusion_H2ORate)
                                                                          annotation (Line(
       points={{98.5,119},{-14,119},{-14,36},{90,36},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget)
          annotation (Line(
            points={{-69.4,138},{0,138},{0,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget)
          annotation (Line(
            points={{-71.4,128},{90,128},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure)
          annotation (Line(
            points={{-75.7,35},{90,35},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Wind_MPH.y, busConnector.WindSpeed) annotation (Line(
            points={{-77.7,55},{90,55},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(GILumenFiber.y, busConnector.GILumenFiber_Mass) annotation (Line(
            points={{-69.4,148},{90,148},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate) annotation (
            Line(
            points={{78.3,-121},{90,-121},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate)
          annotation (Line(
            points={{78.3,-145},{78.3,-146.5},{90,-146.5},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate)
          annotation (Line(
            points={{78.3,135},{90,135},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(ExerciseMetabolism_MotionWatts.y, busConnector.Exercise_Metabolism_MotionWatts)
          annotation (Line(
            points={{-133.7,25},{90,25},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{-120,-42},{122,-76}},
                lineColor={0,0,255},
                textString="%name")}));
      end Variables;

      model Setup_test
        import Physiomodel;
      Physiomodel.CardioVascular.IO_Bus.InputFromFile cardioVascularSystem
          annotation (Placement(transformation(extent={{40,72},{60,94}})));
        Physiomodel.Metabolism.IO_Bus.InputFromFile nutrientsAndMetabolism
          annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
        Physiomodel.Electrolytes.IO_Bus.InputFromFile electrolytes
          annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
        Physiomodel.Hormones.IO_Bus.InputFromFile hormones
          annotation (Placement(transformation(extent={{40,6},{60,26}})));
        Physiomodel.Nerves.IO_Bus.InputFromFile nerves
          annotation (Placement(transformation(extent={{74,38},{94,58}})));
        Physiomodel.Setup.IO_Bus.InputFromFile     setup
          annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
        Physiomodel.Water.IO_Bus.InputFromFile water
          annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
        Physiomodel.Proteins.IO_Bus.InputFromFile proteins
          annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
        Physiomodel.Status.IO_Bus.InputFromFile status
          annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
        Physiomodel.Gases.IO_Bus.InputFromFile gases
          annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
        Physiomodel.Heat.IO_Bus.InputFromFile heat
          annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
      Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{30,-46},{44,-32}}), iconTransformation(
              extent={{-40,-20},{0,20}})));
        Physiomodel.Setup.IO_Bus.OutputComparison setup_dif
          annotation (Placement(transformation(extent={{-46,-94},{-26,-74}})));
        Physiomodel.Setup.IO_Bus.OutputToFile setup_varsToFile
          annotation (Placement(transformation(extent={{14,-98},{34,-78}})));
      equation
        connect(setup.busConnector,hormones. busConnector) annotation (Line(
            points={{-6,-96},{-6,16},{50,16}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,proteins. busConnector) annotation (Line(
            points={{-6,-96},{-6,-18},{-38,-18}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                      annotation (Line(
            points={{-6,-96},{-6,83},{50,83}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
          annotation (Line(
            points={{-6,-96},{-6,70},{-78,70}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,water. busConnector) annotation (Line(
            points={{-6,-96},{-6,4},{-76,4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nerves. busConnector) annotation (Line(
            points={{-6,-96},{-6,48},{84,48}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector,setup. busConnector)         annotation (Line(
            points={{52,-70},{-6,-70},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
            points={{84,-24},{-6,-24},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(gases.busConnector,setup. busConnector) annotation (Line(
            points={{-66,-54},{-6,-54},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(heat.busConnector,setup. busConnector) annotation (Line(
            points={{-38,40},{-6,40},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector, busConnector) annotation (Line(
            points={{52,-70},{37,-70},{37,-39}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup_dif.busConnector, setup.busConnector) annotation (Line(
            points={{-36,-84},{-6,-84},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup_varsToFile.busConnector, setup.busConnector) annotation (
            Line(
            points={{24,-88},{-6,-88},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
      end Setup_test;

      model Setup_test_SI
        import Physiomodel;
        Physiomodel.CardioVascular.IO_Bus.InputFromFile_SI cardioVascularSystem
          annotation (Placement(transformation(extent={{40,72},{60,94}})));
        Physiomodel.Metabolism.IO_Bus.InputFromFile_SI nutrientsAndMetabolism
          annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
        Physiomodel.Electrolytes.IO_Bus.InputFromFile_SI electrolytes
          annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
        Physiomodel.Hormones.IO_Bus.InputFromFile_SI hormones
          annotation (Placement(transformation(extent={{40,6},{60,26}})));
        Physiomodel.Nerves.IO_Bus.InputFromFile_SI nerves
          annotation (Placement(transformation(extent={{74,38},{94,58}})));
        Physiomodel.Setup.IO_Bus.InputFromFile_SI     setup
          annotation (Placement(transformation(extent={{-16,-106},{4,-86}})));
        Physiomodel.Water.IO_Bus.InputFromFile_SI water
          annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
        Physiomodel.Proteins.IO_Bus.InputFromFile_SI proteins
          annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
        Physiomodel.Status.IO_Bus.InputFromFile_SI status
          annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
        Physiomodel.Gases.IO_Bus.InputFromFile_SI gases
          annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
        Physiomodel.Heat.IO_Bus.InputFromFile_SI heat
          annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
      Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{30,-46},{44,-32}}), iconTransformation(
              extent={{-40,-20},{0,20}})));
        Physiomodel.Setup.IO_Bus.OutputComparison_SI setup_dif
          annotation (Placement(transformation(extent={{-46,-94},{-26,-74}})));
        Physiomodel.Setup.IO_Bus.OutputToFile_SI setup_varsToFile
          annotation (Placement(transformation(extent={{14,-98},{34,-78}})));
      equation
        connect(setup.busConnector,hormones. busConnector) annotation (Line(
            points={{-6,-96},{-6,16},{50,16}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,proteins. busConnector) annotation (Line(
            points={{-6,-96},{-6,-18},{-38,-18}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                      annotation (Line(
            points={{-6,-96},{-6,83},{50,83}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
          annotation (Line(
            points={{-6,-96},{-6,70},{-78,70}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,water. busConnector) annotation (Line(
            points={{-6,-96},{-6,4},{-76,4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nerves. busConnector) annotation (Line(
            points={{-6,-96},{-6,48},{84,48}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector,setup. busConnector)         annotation (Line(
            points={{52,-70},{-6,-70},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
            points={{84,-24},{-6,-24},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(gases.busConnector,setup. busConnector) annotation (Line(
            points={{-66,-54},{-6,-54},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(heat.busConnector,setup. busConnector) annotation (Line(
            points={{-38,40},{-6,40},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector, busConnector) annotation (Line(
            points={{52,-70},{37,-70},{37,-39}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup_dif.busConnector, setup.busConnector) annotation (Line(
            points={{-36,-84},{-6,-84},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup_varsToFile.busConnector, setup.busConnector) annotation (
            Line(
            points={{24,-88},{-6,-88},{-6,-96}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
      end Setup_test_SI;
    end IO_Bus;

    model ConstantSetup
      extends Physiolibrary.Icons.Setup;

      package T = Physiolibrary.Types.RealTypeInputParameters;
  protected
    T.Pressure AirSupplyInspiredAirPressure(varName="AirSupply-InspiredAir.Pressure")
    annotation (Placement(transformation(extent={{-80,-154},{-74,-148}})));
    T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance")
    annotation (Placement(transformation(extent={{-80,-144},{-74,-138}})));
    T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume")
    annotation (Placement(transformation(extent={{-80,-134},{-74,-128}})));
    T.Pressure BarometerPressure(varName="Barometer.Pressure")
    annotation (Placement(transformation(extent={{-80,-124},{-74,-118}})));
    T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM")
    annotation (Placement(transformation(extent={{-80,-94},{-74,-88}})));
    T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl-Flux")
    annotation (Placement(transformation(extent={{-80,-84},{-74,-78}})));
    T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux")
    annotation (Placement(transformation(extent={{-80,-74},{-74,-68}})));
    T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux")
    annotation (Placement(transformation(extent={{-80,-64},{-74,-58}})));
    T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K")
    annotation (Placement(transformation(extent={{-80,-54},{-74,-48}})));
    T.MolarFlowRate DietIntakeElectrolytes_Cl(varName="DietIntakeElectrolytes.Cl-_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-44},{-74,-38}})));
    T.MolarFlowRate DietIntakeElectrolytes_K(varName="DietIntakeElectrolytes.K+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-34},{-74,-28}})));
    T.MolarFlowRate DietIntakeElectrolytes_Na(varName="DietIntakeElectrolytes.Na+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-24},{-74,-18}})));
    T.MolarFlowRate DietIntakeElectrolytes_PO4(varName="DietIntakeElectrolytes.PO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-14},{-74,-8}})));
    T.MolarFlowRate DietIntakeElectrolytes_SO4(varName="DietIntakeElectrolytes.SO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-4},{-74,2}})));
    T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate")
    annotation (Placement(transformation(extent={{-80,16},{-74,22}})));
    T.Power Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-80,26},{-74,32}})));
    T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-80,56},{-74,62}})));
    T.Concentration FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,66},{-74,72}})));
    T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,76},{-74,82}})));
    T.Fraction Gravity_Gz(varName="Gravity.Gz")
    annotation (Placement(transformation(extent={{-80,86},{-74,92}})));
    T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss")
    annotation (Placement(transformation(extent={{-80,96},{-74,102}})));
    T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss")
    annotation (Placement(transformation(extent={{-80,106},{-74,112}})));
    T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss")
    annotation (Placement(transformation(extent={{-80,116},{-74,122}})));
    T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate")
    annotation (Placement(transformation(extent={{68,16},{74,22}})));
    T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate")
    annotation (Placement(transformation(extent={{68,28},{74,34}})));
    T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate")
    annotation (Placement(transformation(extent={{72,-168},{78,-162}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate(varName="Hemorrhage.PlasmaRate")
    annotation (Placement(transformation(extent={{72,-158},{78,-152}})));
    T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,-148},{78,-142}})));
    T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate")
    annotation (Placement(transformation(extent={{72,-138},{78,-132}})));
    T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate")
    annotation (Placement(transformation(extent={{72,-128},{78,-122}})));
    T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate")
    annotation (Placement(transformation(extent={{72,-118},{78,-112}})));
    T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate")
    annotation (Placement(transformation(extent={{72,-108},{78,-102}})));
    T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate")
    annotation (Placement(transformation(extent={{72,-98},{78,-92}})));
    T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)")
    annotation (Placement(transformation(extent={{72,-88},{78,-82}})));
    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)")
    annotation (Placement(transformation(extent={{72,-78},{78,-72}})));
    T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect")
    annotation (Placement(transformation(extent={{72,-68},{78,-62}})));
    T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-58},{78,-52}})));
    T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-48},{78,-42}})));
    T.Pressure pCO(varName="pCO")
    annotation (Placement(transformation(extent={{72,-28},{78,-22}})));
    T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure")
    annotation (Placement(transformation(extent={{72,-18},{78,-12}})));
    T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g")
    annotation (Placement(transformation(extent={{72,-8},{78,-2}})));
    T.Mass skinSizeMass(varName="Skin-Size.Mass")
    annotation (Placement(transformation(extent={{72,2},{78,8}})));
    T.Fraction Status_Posture(varName="Status.Posture")
    annotation (Placement(transformation(extent={{70,42},{76,48}})));
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l")
    annotation (Placement(transformation(extent={{72,62},{78,68}})));
    T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure")
    annotation (Placement(transformation(extent={{72,72},{78,78}})));
    T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation")
    annotation (Placement(transformation(extent={{72,82},{78,88}})));
    T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate")
    annotation (Placement(transformation(extent={{72,92},{78,98}})));
    T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate")
    annotation (Placement(transformation(extent={{72,102},{78,108}})));
    T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate")
    annotation (Placement(transformation(extent={{72,112},{78,118}})));
    T.VolumeFlowRate Transfusion_PlasmaRate(varName="Transfusion.PlasmaRate")
    annotation (Placement(transformation(extent={{72,122},{78,128}})));
    T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,132},{78,138}})));
    T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate")
    annotation (Placement(transformation(extent={{72,142},{78,148}})));
    T.Mass WeightCore(varName="Weight.Core")
    annotation (Placement(transformation(extent={{72,152},{78,158}})));

    T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{-90,-40},{-84,-34}})));
    T.Temperature AmbientTemperature(varName=
            "AmbientTemperature.Temp(C)")
    annotation (Placement(transformation(extent={{-94,10},{-88,16}})));
    T.Fraction EnvironmentRelativeHumidity(varName=
            "EnvironmentRelativeHumidity")
    annotation (Placement(transformation(extent={{-102,-12},{-96,-6}})));
    T.VolumeFlowRate DietIntakeH2O_Rate(varName="DietIntakeH2O.Rate(mL/Min)")
    annotation (Placement(transformation(extent={{-102,-20},{-96,-14}})));
    T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(
          varName="DialyzerActivity.UltrafiltrationRate")
    annotation (Placement(transformation(extent={{-134,0},{-122,12}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate1(                         varName="Hemorrhage.H2ORate")
    annotation (Placement(transformation(extent={{-132,18},{-120,30}})));
    T.VolumeFlowRate Transfusion_PlasmaRate1(                         varName="Transfusion.H2ORate")
    annotation (Placement(transformation(extent={{-130,30},{-120,40}})));
    T.VolumeFlowRate GILumenVomitus_H2OTarget(varName=
            "GILumenVomitus.H2OTarget")
    annotation (Placement(transformation(extent={{-84,122},{-72,134}})));
    T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName=
            "GILumenDiarrhea.H2OTarget")
    annotation (Placement(transformation(extent={{-82,132},{-70,144}})));
    T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH")
    annotation (Placement(transformation(extent={{-46,6},{-40,12}})));
    T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm")
        annotation (Placement(transformation(extent={{-82,142},{-70,154}})));
    T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure",
          storeUnit="mmHg")
        annotation (Placement(transformation(extent={{-92,-2},{-86,4}})));
  public
      Physiolibrary.Types.BusConnector busConnector
        annotation (Placement(transformation(extent={{6,2},{46,42}})));
    equation
      connect( Gravity_Gz.y,busConnector.Gravity_Gz)          annotation (Line(
          points={{-73.25,89},{26,89},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(BarometerPressure.y,busConnector.BarometerPressure)
        annotation (Line(
          points={{-73.25,-121},{4,-121},{4,22},{26,22}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(AirSupplyInspiredAirPressure.y,busConnector.AirSupplyInspiredAirPressure)
        annotation (Line(
          points={{-73.25,-151},{4,-151},{4,22},{26,22}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(pCO.y,busConnector.pCO) annotation (Line(
          points={{78.75,-25},{26,-25},{26,22}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect( IVDrip_NaRate.y,busConnector. IVDrip_NaRate) annotation (Line(
          points={{78.75,-95},{26,-95},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_NaRate.y,busConnector. Transfusion_NaRate) annotation (Line(
          points={{78.75,115},{26,115},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_NaRate.y,busConnector. Hemorrhage_NaRate) annotation (Line(
          points={{78.75,-165},{26,-165},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Na_Flux.y,busConnector. DialyzerActivity_Na_Flux) annotation (
          Line(
          points={{-73.25,-61},{26,-61},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Na.y,busConnector. DietIntakeElectrolytes_Na) annotation (
          Line(
          points={{-73.25,-21},{26,-21},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_NaLoss.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
          points={{-73.25,109},{26,109},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_KRate.y,busConnector. IVDrip_KRate) annotation (Line(
          points={{78.75,-105},{26,-105},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_KRate.y,busConnector. Transfusion_KRate) annotation (Line(
          points={{78.75,105},{26,105},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_KRate.y,busConnector. Hemorrhage_KRate) annotation (Line(
          points={{74.75,31},{26,31},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_K_Flux.y,busConnector. DialyzerActivity_K_Flux) annotation (
          Line(
          points={{-73.25,-71},{26,-71},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_K.y,busConnector. DietIntakeElectrolytes_K) annotation (
          Line(
          points={{-73.25,-31},{26,-31},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_KLoss.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
          points={{-73.25,99},{26,99},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_ClRate.y,busConnector. IVDrip_ClRate) annotation (Line(
          points={{78.75,-125},{26,-125},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_ClRate.y,busConnector. Transfusion_ClRate) annotation (Line(
          points={{78.75,95},{26,95},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_ClRate.y,busConnector. Hemorrhage_ClRate) annotation (Line(
          points={{74.75,19},{26,19},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Cl_Flux.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
          Line(
          points={{-73.25,-81},{26,-81},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Cl.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
          Line(
          points={{-73.25,-41},{26,-41},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
          points={{-73.25,119},{26,119},{26,22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_PO4.y,busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
          points={{-73.25,-11},{6,-11},{6,22},{26,22}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_SO4.y,busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
          points={{-73.25,-1},{26,-1},{26,22}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK) annotation (
          Line(
          points={{-73.25,-51},{-73.25,-50},{-28,-50},{-28,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_ContractionRate.y,busConnector. Exercise_Metabolism_ContractionRate)
        annotation (Line(
          points={{-73.25,19},{26,19},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_MotionWatts.y,busConnector. Exercise_Metabolism_MotionWatts)
        annotation (Line(
          points={{-73.25,29},{26,29},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect) annotation (Line(
          points={{78.75,-65},{-7.85,-65},{-7.85,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts) annotation (
         Line(
          points={{-73.25,59},{26,59},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight)
        annotation (Line(
          points={{78.75,-55},{-6,-55},{-6,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoVeinHeight.y,busConnector. LowerTorsoVeinHeight)
        annotation (Line(
          points={{78.75,-45},{-6,-45},{-6,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( CarotidSinusHeight.y,busConnector. CarotidSinusHeight)
        annotation (Line(
          points={{-73.25,-91},{0,-91},{0,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Status_Posture.y,busConnector.Status_Posture) annotation (Line(
          points={{76.75,45},{4.15,45},{4.15,22},{26,22}},
          color={0,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( FurosemidePool_Furosemide_conc.y,busConnector. FurosemidePool_Furosemide_conc)
        annotation (Line(
          points={{-73.25,69},{8,69},{8,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( ThiazidePool_Thiazide_conc.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
          Line(
          points={{78.75,65},{26,65},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(FurosemidePool_Loss.y,busConnector.FurosemidePool_Loss) annotation (Line(
          points={{-73.25,79},{26,79},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate)  annotation (Line(
          points={{78.75,-115},{0.15,-115},{0.15,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate.y,busConnector.Transfusion_PlasmaRate)
                                                             annotation (Line(
          points={{78.75,125},{26,125},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate.y,busConnector.Hemorrhage_PlasmaRate)
                                                            annotation (Line(
          points={{78.75,-155},{26,-155},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_RBCRate.y,busConnector.Hemorrhage_RBCRate) annotation (Line(
          points={{78.75,-135},{26,-135},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_RBCRate.y,busConnector.Transfusion_RBCRate) annotation (Line(
          points={{78.75,145},{26,145},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Pericardium_Pressure.y,busConnector. Pericardium_Pressure)          annotation (
         Line(
          points={{78.75,-15},{26,-15},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Thorax_AvePressure.y,busConnector. Thorax_AvePressure)          annotation (
          Line(
          points={{78.75,75},{26,75},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation)
        annotation (Line(
          points={{78.75,85},{26,85},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal)
        annotation (Line(
          points={{78.75,-75},{6,-75},{6,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Filtering_xNormal.y,busConnector.Kidney_NephronCount_Filtering_xNormal)
        annotation (Line(
          points={{78.75,-85},{26,-85},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume)
                                                            annotation (Line(
          points={{-73.25,-131},{26,-131},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Anesthesia_VascularConductance.y,busConnector.Anesthesia_VascularConductance)
        annotation (Line(
          points={{-73.25,-141},{26,-141},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass) annotation (Line(
     points={{78.75,-5},{26,-5},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skinSizeMass.y,busConnector.skinSizeMass) annotation (Line(
     points={{78.75,5},{26,5},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(WeightCore.y,busConnector.WeightCore) annotation (Line(
     points={{78.75,155},{26,155},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(AmbientTemperature.y, busConnector.AmbientTemperature)
        annotation (Line(
          points={{-87.25,13},{26,13},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
        annotation (Line(
          points={{-95.25,-9},{26,-9},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(DietIntakeH2O_Rate.y, busConnector.DietIntakeH2O_Rate) annotation (Line(
     points={{-95.25,-17},{26,-17},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate)
        annotation (Line(
          points={{-120.5,6},{-110,6},{-110,56},{26,56},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate)
                                                                      annotation (Line(
     points={{-118.5,24},{-116,24},{-116,56},{-178,56},{-178,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate1.y, busConnector.Transfusion_H2ORate)
                                                                        annotation (Line(
     points={{-118.75,35},{-118,35},{-118,56},{-178,56},{-178,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget)
        annotation (Line(
          points={{-68.5,138},{0,138},{0,22},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget)
        annotation (Line(
          points={{-70.5,128},{26,128},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure)
        annotation (Line(
          points={{-85.25,1},{26,1},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Wind_MPH.y, busConnector.WindSpeed) annotation (Line(
          points={{-39.25,9},{26,9},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenFiber.y, busConnector.GILumenFiber_Mass) annotation (Line(
          points={{-68.5,148},{26,148},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate) annotation (
          Line(
          points={{-83.25,-37},{26,-37},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate)
        annotation (Line(
          points={{78.75,-145},{78.75,-146.5},{26,-146.5},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate)
        annotation (Line(
          points={{78.75,135},{26,135},{26,22}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-120,-42},{122,-76}},
              lineColor={0,0,255},
              textString="%name")}));
    end ConstantSetup;

    model ExcerciseSetup
      extends Physiolibrary.Icons.Setup;

      package T = Physiolibrary.Types.RealTypeInputParameters;
  protected
    T.Pressure AirSupplyInspiredAirPressure(varName="AirSupply-InspiredAir.Pressure")
    annotation (Placement(transformation(extent={{-80,-154},{-74,-148}})));
    T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance")
    annotation (Placement(transformation(extent={{-80,-144},{-74,-138}})));
    T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume")
    annotation (Placement(transformation(extent={{-80,-134},{-74,-128}})));
    T.Pressure BarometerPressure(varName="Barometer.Pressure")
    annotation (Placement(transformation(extent={{-80,-124},{-74,-118}})));
    T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM")
    annotation (Placement(transformation(extent={{-80,-94},{-74,-88}})));
    T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl-Flux")
    annotation (Placement(transformation(extent={{-80,-84},{-74,-78}})));
    T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux")
    annotation (Placement(transformation(extent={{-80,-74},{-74,-68}})));
    T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux")
    annotation (Placement(transformation(extent={{-80,-64},{-74,-58}})));
    T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K")
    annotation (Placement(transformation(extent={{-80,-54},{-74,-48}})));
    T.MolarFlowRate DietIntakeElectrolytes_Cl(varName="DietIntakeElectrolytes.Cl-_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-44},{-74,-38}})));
    T.MolarFlowRate DietIntakeElectrolytes_K(varName="DietIntakeElectrolytes.K+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-34},{-74,-28}})));
    T.MolarFlowRate DietIntakeElectrolytes_Na(varName="DietIntakeElectrolytes.Na+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-24},{-74,-18}})));
    T.MolarFlowRate DietIntakeElectrolytes_PO4(varName="DietIntakeElectrolytes.PO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-14},{-74,-8}})));
    T.MolarFlowRate DietIntakeElectrolytes_SO4(varName="DietIntakeElectrolytes.SO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-4},{-74,2}})));
    T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate")
    annotation (Placement(transformation(extent={{-82,44},{-76,50}})));
    T.Power Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-82,36},{-76,42}})));
    T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-82,52},{-76,58}})));
    T.Concentration FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,66},{-74,72}})));
    T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,76},{-74,82}})));
    T.Fraction Gravity_Gz(varName="Gravity.Gz")
    annotation (Placement(transformation(extent={{-80,86},{-74,92}})));
    T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss")
    annotation (Placement(transformation(extent={{-80,96},{-74,102}})));
    T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss")
    annotation (Placement(transformation(extent={{-80,106},{-74,112}})));
    T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss")
    annotation (Placement(transformation(extent={{-80,116},{-74,122}})));
    T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate")
    annotation (Placement(transformation(extent={{68,16},{74,22}})));
    T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate")
    annotation (Placement(transformation(extent={{68,28},{74,34}})));
    T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate")
    annotation (Placement(transformation(extent={{72,-168},{78,-162}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate(varName="Hemorrhage.PlasmaRate")
    annotation (Placement(transformation(extent={{72,-158},{78,-152}})));
    T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,-148},{78,-142}})));
    T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate")
    annotation (Placement(transformation(extent={{72,-138},{78,-132}})));
    T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate")
    annotation (Placement(transformation(extent={{72,-128},{78,-122}})));
    T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate")
    annotation (Placement(transformation(extent={{72,-118},{78,-112}})));
    T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate")
    annotation (Placement(transformation(extent={{72,-108},{78,-102}})));
    T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate")
    annotation (Placement(transformation(extent={{72,-98},{78,-92}})));
    T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)")
    annotation (Placement(transformation(extent={{72,-88},{78,-82}})));
    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)")
    annotation (Placement(transformation(extent={{72,-78},{78,-72}})));
    T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect")
    annotation (Placement(transformation(extent={{72,-68},{78,-62}})));
    T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-58},{78,-52}})));
    T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-48},{78,-42}})));
    T.Pressure pCO(varName="pCO")
    annotation (Placement(transformation(extent={{72,-28},{78,-22}})));
    T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure")
    annotation (Placement(transformation(extent={{72,-18},{78,-12}})));
    T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g")
    annotation (Placement(transformation(extent={{72,-8},{78,-2}})));
    T.Mass skinSizeMass(varName="Skin-Size.Mass")
    annotation (Placement(transformation(extent={{72,2},{78,8}})));
    T.Fraction Status_Posture(varName="Status.Posture")
    annotation (Placement(transformation(extent={{70,42},{76,48}})));
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l")
    annotation (Placement(transformation(extent={{72,62},{78,68}})));
    T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure")
    annotation (Placement(transformation(extent={{72,72},{78,78}})));
    T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation")
    annotation (Placement(transformation(extent={{72,82},{78,88}})));
    T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate")
    annotation (Placement(transformation(extent={{72,92},{78,98}})));
    T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate")
    annotation (Placement(transformation(extent={{72,102},{78,108}})));
    T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate")
    annotation (Placement(transformation(extent={{72,112},{78,118}})));
    T.VolumeFlowRate Transfusion_PlasmaRate(varName="Transfusion.PlasmaRate")
    annotation (Placement(transformation(extent={{72,122},{78,128}})));
    T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,132},{78,138}})));
    T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate")
    annotation (Placement(transformation(extent={{72,142},{78,148}})));
    T.Mass WeightCore(varName="Weight.Core")
    annotation (Placement(transformation(extent={{72,152},{78,158}})));

    T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{-90,-40},{-84,-34}})));
    T.Temperature AmbientTemperature(varName=
            "AmbientTemperature.Temp(C)")
    annotation (Placement(transformation(extent={{-94,10},{-88,16}})));
    T.Fraction EnvironmentRelativeHumidity(varName=
            "EnvironmentRelativeHumidity")
    annotation (Placement(transformation(extent={{-102,-12},{-96,-6}})));
    T.VolumeFlowRate DietIntakeH2O_Rate(varName="DietIntakeH2O.Rate(mL/Min)")
    annotation (Placement(transformation(extent={{-102,-20},{-96,-14}})));
    T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(
          varName="DialyzerActivity.UltrafiltrationRate")
    annotation (Placement(transformation(extent={{96,-128},{108,-116}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate1(                         varName="Hemorrhage.H2ORate")
    annotation (Placement(transformation(extent={{98,-110},{110,-98}})));
    T.VolumeFlowRate Transfusion_PlasmaRate1(                         varName="Transfusion.H2ORate")
    annotation (Placement(transformation(extent={{100,-98},{110,-88}})));
    T.VolumeFlowRate GILumenVomitus_H2OTarget(varName=
            "GILumenVomitus.H2OTarget")
    annotation (Placement(transformation(extent={{-84,122},{-72,134}})));
    T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName=
            "GILumenDiarrhea.H2OTarget")
    annotation (Placement(transformation(extent={{-82,132},{-70,144}})));
    T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH")
    annotation (Placement(transformation(extent={{-46,6},{-40,12}})));
    T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm")
        annotation (Placement(transformation(extent={{-82,142},{-70,154}})));
    T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure",
          storeUnit="mmHg")
        annotation (Placement(transformation(extent={{-92,-2},{-86,4}})));
  public
    Physiolibrary.Types.BusConnector busConnector
      annotation (Placement(transformation(extent={{4,-18},{44,22}})));
    equation
      connect( Gravity_Gz.y,busConnector.Gravity_Gz)          annotation (Line(
          points={{-73.25,89},{24,89},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(BarometerPressure.y,busConnector.BarometerPressure)
        annotation (Line(
          points={{-73.25,-121},{4,-121},{4,2},{24,2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(AirSupplyInspiredAirPressure.y,busConnector.AirSupplyInspiredAirPressure)
        annotation (Line(
          points={{-73.25,-151},{4,-151},{4,2},{24,2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(pCO.y,busConnector.pCO) annotation (Line(
          points={{78.75,-25},{24,-25},{24,2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect( IVDrip_NaRate.y,busConnector. IVDrip_NaRate) annotation (Line(
          points={{78.75,-95},{24,-95},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_NaRate.y,busConnector. Transfusion_NaRate) annotation (Line(
          points={{78.75,115},{24,115},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_NaRate.y,busConnector. Hemorrhage_NaRate) annotation (Line(
          points={{78.75,-165},{24,-165},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Na_Flux.y,busConnector. DialyzerActivity_Na_Flux) annotation (
          Line(
          points={{-73.25,-61},{24,-61},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Na.y,busConnector. DietIntakeElectrolytes_Na) annotation (
          Line(
          points={{-73.25,-21},{24,-21},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_NaLoss.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
          points={{-73.25,109},{24,109},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_KRate.y,busConnector. IVDrip_KRate) annotation (Line(
          points={{78.75,-105},{24,-105},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_KRate.y,busConnector. Transfusion_KRate) annotation (Line(
          points={{78.75,105},{24,105},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_KRate.y,busConnector. Hemorrhage_KRate) annotation (Line(
          points={{74.75,31},{24,31},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_K_Flux.y,busConnector. DialyzerActivity_K_Flux) annotation (
          Line(
          points={{-73.25,-71},{24,-71},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_K.y,busConnector. DietIntakeElectrolytes_K) annotation (
          Line(
          points={{-73.25,-31},{24,-31},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_KLoss.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
          points={{-73.25,99},{24,99},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_ClRate.y,busConnector. IVDrip_ClRate) annotation (Line(
          points={{78.75,-125},{24,-125},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_ClRate.y,busConnector. Transfusion_ClRate) annotation (Line(
          points={{78.75,95},{24,95},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_ClRate.y,busConnector. Hemorrhage_ClRate) annotation (Line(
          points={{74.75,19},{24,19},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Cl_Flux.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
          Line(
          points={{-73.25,-81},{24,-81},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Cl.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
          Line(
          points={{-73.25,-41},{24,-41},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
          points={{-73.25,119},{24,119},{24,2}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_PO4.y,busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
          points={{-73.25,-11},{6,-11},{6,2},{24,2}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_SO4.y,busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
          points={{-73.25,-1},{24,-1},{24,2}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK) annotation (
          Line(
          points={{-73.25,-51},{-73.25,-50},{-28,-50},{-28,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_ContractionRate.y,busConnector. Exercise_Metabolism_ContractionRate)
        annotation (Line(
          points={{-75.25,47},{24,47},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_MotionWatts.y,busConnector. Exercise_Metabolism_MotionWatts)
        annotation (Line(
          points={{-75.25,39},{24,39},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect) annotation (Line(
          points={{78.75,-65},{-7.85,-65},{-7.85,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts) annotation (
         Line(
          points={{-75.25,55},{24,55},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight)
        annotation (Line(
          points={{78.75,-55},{-6,-55},{-6,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoVeinHeight.y,busConnector. LowerTorsoVeinHeight)
        annotation (Line(
          points={{78.75,-45},{-6,-45},{-6,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( CarotidSinusHeight.y,busConnector. CarotidSinusHeight)
        annotation (Line(
          points={{-73.25,-91},{0,-91},{0,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Status_Posture.y,busConnector.Status_Posture) annotation (Line(
          points={{76.75,45},{4.15,45},{4.15,2},{24,2}},
          color={0,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( FurosemidePool_Furosemide_conc.y,busConnector. FurosemidePool_Furosemide_conc)
        annotation (Line(
          points={{-73.25,69},{8,69},{8,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( ThiazidePool_Thiazide_conc.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
          Line(
          points={{78.75,65},{24,65},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(FurosemidePool_Loss.y,busConnector.FurosemidePool_Loss) annotation (Line(
          points={{-73.25,79},{24,79},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate)  annotation (Line(
          points={{78.75,-115},{0.15,-115},{0.15,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate.y,busConnector.Transfusion_PlasmaRate)
                                                             annotation (Line(
          points={{78.75,125},{24,125},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate.y,busConnector.Hemorrhage_PlasmaRate)
                                                            annotation (Line(
          points={{78.75,-155},{24,-155},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_RBCRate.y,busConnector.Hemorrhage_RBCRate) annotation (Line(
          points={{78.75,-135},{24,-135},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_RBCRate.y,busConnector.Transfusion_RBCRate) annotation (Line(
          points={{78.75,145},{24,145},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Pericardium_Pressure.y,busConnector. Pericardium_Pressure)          annotation (
         Line(
          points={{78.75,-15},{24,-15},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Thorax_AvePressure.y,busConnector. Thorax_AvePressure)          annotation (
          Line(
          points={{78.75,75},{24,75},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation)
        annotation (Line(
          points={{78.75,85},{24,85},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal)
        annotation (Line(
          points={{78.75,-75},{6,-75},{6,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Filtering_xNormal.y,busConnector.Kidney_NephronCount_Filtering_xNormal)
        annotation (Line(
          points={{78.75,-85},{24,-85},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume)
                                                            annotation (Line(
          points={{-73.25,-131},{24,-131},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Anesthesia_VascularConductance.y,busConnector.Anesthesia_VascularConductance)
        annotation (Line(
          points={{-73.25,-141},{24,-141},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass) annotation (Line(
     points={{78.75,-5},{24,-5},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skinSizeMass.y,busConnector.skinSizeMass) annotation (Line(
     points={{78.75,5},{24,5},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(WeightCore.y,busConnector.WeightCore) annotation (Line(
     points={{78.75,155},{24,155},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(AmbientTemperature.y, busConnector.AmbientTemperature)
        annotation (Line(
          points={{-87.25,13},{24,13},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
        annotation (Line(
          points={{-95.25,-9},{24,-9},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(DietIntakeH2O_Rate.y, busConnector.DietIntakeH2O_Rate) annotation (Line(
     points={{-95.25,-17},{24,-17},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate)
        annotation (Line(
          points={{109.5,-122},{24,-122},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate)
                                                                      annotation (Line(
     points={{111.5,-104},{18,-104},{18,54},{24,54},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate1.y, busConnector.Transfusion_H2ORate)
                                                                        annotation (Line(
     points={{111.25,-93},{-48,-93},{-48,36},{24,36},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget)
        annotation (Line(
          points={{-68.5,138},{0,138},{0,2},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget)
        annotation (Line(
          points={{-70.5,128},{24,128},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure)
        annotation (Line(
          points={{-85.25,1},{24,1},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Wind_MPH.y, busConnector.WindSpeed) annotation (Line(
          points={{-39.25,9},{24,9},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenFiber.y, busConnector.GILumenFiber_Mass) annotation (Line(
          points={{-68.5,148},{24,148},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate) annotation (
          Line(
          points={{-83.25,-37},{24,-37},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate)
        annotation (Line(
          points={{78.75,-145},{78.75,-146.5},{24,-146.5},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate)
        annotation (Line(
          points={{78.75,135},{24,135},{24,2}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-120,-42},{122,-76}},
              lineColor={0,0,255},
              textString="%name")}));
    end ExcerciseSetup;

    model HemorrhageSetup
      extends Physiolibrary.Icons.Setup;

      package T = Physiolibrary.Types.RealTypeInputParameters;

  protected
    T.Pressure AirSupplyInspiredAirPressure(varName="AirSupply-InspiredAir.Pressure")
    annotation (Placement(transformation(extent={{-80,-154},{-74,-148}})));
    T.Fraction Anesthesia_VascularConductance(varName="Anesthesia.VascularConductance")
    annotation (Placement(transformation(extent={{-80,-144},{-74,-138}})));
    T.Fraction AnesthesiaTidalVolume(varName="Anesthesia.TidalVolume")
    annotation (Placement(transformation(extent={{-80,-134},{-74,-128}})));
    T.Pressure BarometerPressure(varName="Barometer.Pressure")
    annotation (Placement(transformation(extent={{-80,-124},{-74,-118}})));
    T.Position CarotidSinusHeight(varName="Hydrostatics.CarotidCM")
    annotation (Placement(transformation(extent={{-80,-94},{-74,-88}})));
    T.MolarFlowRate DialyzerActivity_Cl_Flux(varName="DialyzerActivity.Cl-Flux")
    annotation (Placement(transformation(extent={{-80,-84},{-74,-78}})));
    T.MolarFlowRate DialyzerActivity_K_Flux(varName="DialyzerActivity.K+Flux")
    annotation (Placement(transformation(extent={{-80,-74},{-74,-68}})));
    T.MolarFlowRate DialyzerActivity_Na_Flux(varName="DialyzerActivity.Na+Flux")
    annotation (Placement(transformation(extent={{-80,-64},{-74,-58}})));
    T.Temperature DietGoalH2O_DegK(varName="DietGoalH2O.DegK",storeUnit="K")
    annotation (Placement(transformation(extent={{-80,-54},{-74,-48}})));
    T.MolarFlowRate DietIntakeElectrolytes_Cl(varName="DietIntakeElectrolytes.Cl-_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-44},{-74,-38}})));
    T.MolarFlowRate DietIntakeElectrolytes_K(varName="DietIntakeElectrolytes.K+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-34},{-74,-28}})));
    T.MolarFlowRate DietIntakeElectrolytes_Na(varName="DietIntakeElectrolytes.Na+_mEq/Min")
    annotation (Placement(transformation(extent={{-80,-24},{-74,-18}})));
    T.MolarFlowRate DietIntakeElectrolytes_PO4(varName="DietIntakeElectrolytes.PO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-14},{-74,-8}})));
    T.MolarFlowRate DietIntakeElectrolytes_SO4(varName="DietIntakeElectrolytes.SO4--mEq/Min")
    annotation (Placement(transformation(extent={{-80,-4},{-74,2}})));
    T.Frequency Exercise_Metabolism_ContractionRate(varName="Exercise-Metabolism.ContractionRate")
    annotation (Placement(transformation(extent={{-76,32},{-70,38}})));
    T.Power Exercise_Metabolism_MotionWatts(varName="Exercise-Metabolism.MotionWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-76,38},{-70,44}})));
    T.Power ExerciseMetabolism_TotalWatts(varName="Exercise-Metabolism.TotalWatts", storeUnit="W")
    annotation (Placement(transformation(extent={{-76,44},{-70,50}})));
    T.Concentration FurosemidePool_Furosemide_conc(varName="FurosemidePool.[Furosemide]", storeUnit="mg/l", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,66},{-74,72}})));
    T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min", unitConversions=Substances.Furosemide.unitConversions)
    annotation (Placement(transformation(extent={{-80,76},{-74,82}})));
    T.Fraction Gravity_Gz(varName="Gravity.Gz")
    annotation (Placement(transformation(extent={{-80,86},{-74,92}})));
    T.MolarFlowRate GILumenDiarrhea_KLoss(varName="GILumenDiarrhea.K+Loss")
    annotation (Placement(transformation(extent={{-80,96},{-74,102}})));
    T.MolarFlowRate GILumenDiarrhea_NaLoss(varName="GILumenDiarrhea.Na+Loss")
    annotation (Placement(transformation(extent={{-80,106},{-74,112}})));
    T.MolarFlowRate GILumenVomitus_ClLoss(varName="GILumenVomitus.Cl-Loss")
    annotation (Placement(transformation(extent={{-80,116},{-74,122}})));
    T.MolarFlowRate Hemorrhage_ClRate(varName="Hemorrhage.ClRate")
    annotation (Placement(transformation(extent={{68,16},{74,22}})));
    T.MolarFlowRate Hemorrhage_KRate(varName="Hemorrhage.KRate")
    annotation (Placement(transformation(extent={{68,28},{74,34}})));
    T.MolarFlowRate Hemorrhage_NaRate(varName="Hemorrhage.NaRate")
    annotation (Placement(transformation(extent={{72,-168},{78,-162}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate(varName="Hemorrhage.PlasmaRate")
    annotation (Placement(transformation(extent={{72,-158},{78,-152}})));
    T.MolarFlowRate Hemorrhage_ProteinRate(varName="Hemorrhage.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,-148},{78,-142}})));
    T.VolumeFlowRate Hemorrhage_RBCRate(varName="Hemorrhage.RBCRate")
    annotation (Placement(transformation(extent={{72,-138},{78,-132}})));
    T.MolarFlowRate IVDrip_ClRate(varName="IVDrip.ClRate")
    annotation (Placement(transformation(extent={{72,-128},{78,-122}})));
    T.VolumeFlowRate IVDrip_H2ORate(varName="IVDrip.H2ORate")
    annotation (Placement(transformation(extent={{72,-118},{78,-112}})));
    T.MolarFlowRate IVDrip_KRate(varName="IVDrip.KRate")
    annotation (Placement(transformation(extent={{72,-108},{78,-102}})));
    T.MolarFlowRate IVDrip_NaRate(varName="IVDrip.NaRate")
    annotation (Placement(transformation(extent={{72,-98},{78,-92}})));
    T.Fraction Kidney_NephronCount_Filtering_xNormal(varName="Kidney-NephronCount.Filtering(xNormal)")
    annotation (Placement(transformation(extent={{72,-88},{78,-82}})));
    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)")
    annotation (Placement(transformation(extent={{72,-78},{78,-72}})));
    T.Fraction LegMusclePump_Effect(varName="LegMusclePump.Effect")
    annotation (Placement(transformation(extent={{72,-68},{78,-62}})));
    T.Position LowerTorsoArtyHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-58},{78,-52}})));
    T.Position LowerTorsoVeinHeight(varName="Hydrostatics.LowerTorsoCM")
    annotation (Placement(transformation(extent={{72,-48},{78,-42}})));
    T.Pressure pCO(varName="pCO")
    annotation (Placement(transformation(extent={{72,-28},{78,-22}})));
    T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure")
    annotation (Placement(transformation(extent={{72,-18},{78,-12}})));
    T.Mass skeletalMuscle_SizeMass(varName="SkeletalMuscle-Size.Mass", storeUnit="g")
    annotation (Placement(transformation(extent={{72,-8},{78,-2}})));
    T.Mass skinSizeMass(varName="Skin-Size.Mass")
    annotation (Placement(transformation(extent={{72,2},{78,8}})));
    T.Fraction Status_Posture(varName="Status.Posture")
    annotation (Placement(transformation(extent={{70,42},{76,48}})));
    T.MassConcentration ThiazidePool_Thiazide_conc(varName="ThiazidePool.[Thiazide]", storeUnit="mg/l")
    annotation (Placement(transformation(extent={{72,62},{78,68}})));
    T.Pressure Thorax_AvePressure(varName="Thorax.AvePressure")
    annotation (Placement(transformation(extent={{72,72},{78,78}})));
    T.Fraction Thorax_LungInflation(varName="Thorax.LungInflation")
    annotation (Placement(transformation(extent={{72,82},{78,88}})));
    T.MolarFlowRate Transfusion_ClRate(varName="Transfusion.ClRate")
    annotation (Placement(transformation(extent={{72,92},{78,98}})));
    T.MolarFlowRate Transfusion_KRate(varName="Transfusion.KRate")
    annotation (Placement(transformation(extent={{72,102},{78,108}})));
    T.MolarFlowRate Transfusion_NaRate(varName="Transfusion.NaRate")
    annotation (Placement(transformation(extent={{72,112},{78,118}})));
    T.VolumeFlowRate Transfusion_PlasmaRate(varName="Transfusion.PlasmaRate")
    annotation (Placement(transformation(extent={{72,122},{78,128}})));
    T.MolarFlowRate Transfusion_ProteinRate(varName="Transfusion.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{72,132},{78,138}})));
    T.VolumeFlowRate Transfusion_RBCRate(varName="Transfusion.RBCRate")
    annotation (Placement(transformation(extent={{72,142},{78,148}})));
    T.Mass WeightCore(varName="Weight.Core")
    annotation (Placement(transformation(extent={{72,152},{78,158}})));

    T.MolarFlowRate IVDrip_ProteinRate(varName="IVDrip.ProteinRate", storeUnit="mmol/min")
    annotation (Placement(transformation(extent={{-90,-40},{-84,-34}})));
    T.Temperature AmbientTemperature(varName=
            "AmbientTemperature.Temp(C)")
    annotation (Placement(transformation(extent={{-94,10},{-88,16}})));
    T.Fraction EnvironmentRelativeHumidity(varName=
            "EnvironmentRelativeHumidity")
    annotation (Placement(transformation(extent={{-102,-12},{-96,-6}})));
    T.VolumeFlowRate DietIntakeH2O_Rate(varName="DietIntakeH2O.Rate(mL/Min)")
    annotation (Placement(transformation(extent={{-102,-20},{-96,-14}})));
    T.VolumeFlowRate DialyzerActivity_UltrafiltrationRate(
          varName="DialyzerActivity.UltrafiltrationRate")
    annotation (Placement(transformation(extent={{-134,0},{-122,12}})));
    T.VolumeFlowRate Hemorrhage_PlasmaRate1(                         varName="Hemorrhage.H2ORate")
    annotation (Placement(transformation(extent={{-132,18},{-120,30}})));
    T.VolumeFlowRate Transfusion_PlasmaRate1(                         varName="Transfusion.H2ORate")
    annotation (Placement(transformation(extent={{-130,30},{-120,40}})));
    T.VolumeFlowRate GILumenVomitus_H2OTarget(varName=
            "GILumenVomitus.H2OTarget")
    annotation (Placement(transformation(extent={{-84,122},{-72,134}})));
    T.VolumeFlowRate GILumenDiarrhea_H2OTarget(varName=
            "GILumenDiarrhea.H2OTarget")
    annotation (Placement(transformation(extent={{-82,132},{-70,144}})));
    T.Velocity Wind_MPH(varName="Wind.MPH",storeUnit="MPH")
    annotation (Placement(transformation(extent={{-46,6},{-40,12}})));
    T.AmountOfSubstance GILumenFiber(varName="GILumenVolume.[Fiber]", storeUnit="osm")
        annotation (Placement(transformation(extent={{-82,142},{-70,154}})));
    T.Pressure EnvironmentRelativeHumidity_VaporPressure(varName="RelativeHumidity.VaporPressure",
          storeUnit="mmHg")
        annotation (Placement(transformation(extent={{-92,-2},{-86,4}})));

  public
    Physiolibrary.Types.BusConnector busConnector
      annotation (Placement(transformation(extent={{-6,-20},{34,20}})));
    equation
      connect( Gravity_Gz.y,busConnector.Gravity_Gz)          annotation (Line(
          points={{-73.25,89},{14,89},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(BarometerPressure.y,busConnector.BarometerPressure)
        annotation (Line(
          points={{-73.25,-121},{14,-121},{14,0}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(AirSupplyInspiredAirPressure.y,busConnector.AirSupplyInspiredAirPressure)
        annotation (Line(
          points={{-73.25,-151},{14,-151},{14,0}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(pCO.y,busConnector.pCO) annotation (Line(
          points={{78.75,-25},{14,-25},{14,0}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect( IVDrip_NaRate.y,busConnector. IVDrip_NaRate) annotation (Line(
          points={{78.75,-95},{14,-95},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_NaRate.y,busConnector. Transfusion_NaRate) annotation (Line(
          points={{78.75,115},{14,115},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_NaRate.y,busConnector. Hemorrhage_NaRate) annotation (Line(
          points={{78.75,-165},{14,-165},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Na_Flux.y,busConnector. DialyzerActivity_Na_Flux) annotation (
          Line(
          points={{-73.25,-61},{14,-61},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Na.y,busConnector. DietIntakeElectrolytes_Na) annotation (
          Line(
          points={{-73.25,-21},{14,-21},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_NaLoss.y,busConnector. GILumenDiarrhea_NaLoss) annotation (Line(
          points={{-73.25,109},{14,109},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_KRate.y,busConnector. IVDrip_KRate) annotation (Line(
          points={{78.75,-105},{14,-105},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_KRate.y,busConnector. Transfusion_KRate) annotation (Line(
          points={{78.75,105},{14,105},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_KRate.y,busConnector. Hemorrhage_KRate) annotation (Line(
          points={{74.75,31},{14,31},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_K_Flux.y,busConnector. DialyzerActivity_K_Flux) annotation (
          Line(
          points={{-73.25,-71},{14,-71},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_K.y,busConnector. DietIntakeElectrolytes_K) annotation (
          Line(
          points={{-73.25,-31},{14,-31},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( GILumenDiarrhea_KLoss.y,busConnector. GILumenDiarrhea_KLoss) annotation (Line(
          points={{-73.25,99},{14,99},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( IVDrip_ClRate.y,busConnector. IVDrip_ClRate) annotation (Line(
          points={{78.75,-125},{14,-125},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Transfusion_ClRate.y,busConnector. Transfusion_ClRate) annotation (Line(
          points={{78.75,95},{14,95},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( Hemorrhage_ClRate.y,busConnector. Hemorrhage_ClRate) annotation (Line(
          points={{74.75,19},{14,19},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DialyzerActivity_Cl_Flux.y,busConnector. DialyzerActivity_Cl_Flux) annotation (
          Line(
          points={{-73.25,-81},{14,-81},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect( DietIntakeElectrolytes_Cl.y,busConnector. DietIntakeElectrolytes_Cl) annotation (
          Line(
          points={{-73.25,-41},{14,-41},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(GILumenVomitus_ClLoss.y,busConnector.GILumenVomitus_ClLoss) annotation (Line(
          points={{-73.25,119},{14,119},{14,0}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_PO4.y,busConnector.DietIntakeElectrolytes_PO4) annotation (Line(
          points={{-73.25,-11},{6,-11},{6,0},{14,0}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietIntakeElectrolytes_SO4.y,busConnector.DietIntakeElectrolytes_SO4) annotation (Line(
          points={{-73.25,-1},{14,-1},{14,0}},
          color={0,0,127},
          thickness=0.5,
          smooth=Smooth.None));
      connect(DietGoalH2O_DegK.y,busConnector.DietGoalH2O_DegK) annotation (
          Line(
          points={{-73.25,-51},{-73.25,-50},{-28,-50},{-28,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_ContractionRate.y,busConnector. Exercise_Metabolism_ContractionRate)
        annotation (Line(
          points={{-69.25,35},{14,35},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Exercise_Metabolism_MotionWatts.y,busConnector. Exercise_Metabolism_MotionWatts)
        annotation (Line(
          points={{-69.25,41},{14,41},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(LegMusclePump_Effect.y,busConnector.LegMusclePump_Effect) annotation (Line(
          points={{78.75,-65},{-7.85,-65},{-7.85,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ExerciseMetabolism_TotalWatts.y,busConnector.ExerciseMetabolism_TotalWatts) annotation (
         Line(
          points={{-69.25,47},{14,47},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoArtyHeight.y,busConnector. LowerTorsoArtyHeight)
        annotation (Line(
          points={{78.75,-55},{-6,-55},{-6,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( LowerTorsoVeinHeight.y,busConnector. LowerTorsoVeinHeight)
        annotation (Line(
          points={{78.75,-45},{-6,-45},{-6,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( CarotidSinusHeight.y,busConnector. CarotidSinusHeight)
        annotation (Line(
          points={{-73.25,-91},{0,-91},{0,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Status_Posture.y,busConnector.Status_Posture) annotation (Line(
          points={{76.75,45},{4.15,45},{4.15,0},{14,0}},
          color={0,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( FurosemidePool_Furosemide_conc.y,busConnector. FurosemidePool_Furosemide_conc)
        annotation (Line(
          points={{-73.25,69},{8,69},{8,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( ThiazidePool_Thiazide_conc.y,busConnector. ThiazidePool_Thiazide_conc) annotation (
          Line(
          points={{78.75,65},{14,65},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(FurosemidePool_Loss.y,busConnector.FurosemidePool_Loss) annotation (Line(
          points={{-73.25,79},{14,79},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_H2ORate.y,busConnector.IVDrip_H2ORate)  annotation (Line(
          points={{78.75,-115},{0.15,-115},{0.15,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate.y,busConnector.Transfusion_PlasmaRate)
                                                             annotation (Line(
          points={{78.75,125},{14,125},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate.y,busConnector.Hemorrhage_PlasmaRate)
                                                            annotation (Line(
          points={{78.75,-155},{14,-155},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_RBCRate.y,busConnector.Hemorrhage_RBCRate) annotation (Line(
          points={{78.75,-135},{14,-135},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_RBCRate.y,busConnector.Transfusion_RBCRate) annotation (Line(
          points={{78.75,145},{14,145},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Pericardium_Pressure.y,busConnector. Pericardium_Pressure)          annotation (
         Line(
          points={{78.75,-15},{14,-15},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect( Thorax_AvePressure.y,busConnector. Thorax_AvePressure)          annotation (
          Line(
          points={{78.75,75},{14,75},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Thorax_LungInflation.y,busConnector.Thorax_LungInflation)
        annotation (Line(
          points={{78.75,85},{14,85},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal)
        annotation (Line(
          points={{78.75,-75},{6,-75},{6,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Kidney_NephronCount_Filtering_xNormal.y,busConnector.Kidney_NephronCount_Filtering_xNormal)
        annotation (Line(
          points={{78.75,-85},{14,-85},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(AnesthesiaTidalVolume.y,busConnector.AnesthesiaTidalVolume)
                                                            annotation (Line(
          points={{-73.25,-131},{14,-131},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Anesthesia_VascularConductance.y,busConnector.Anesthesia_VascularConductance)
        annotation (Line(
          points={{-73.25,-141},{14,-141},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skeletalMuscle_SizeMass.y,busConnector.skeletalMuscle_SizeMass) annotation (Line(
     points={{78.75,-5},{14,-5},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(skinSizeMass.y,busConnector.skinSizeMass) annotation (Line(
     points={{78.75,5},{14,5},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(WeightCore.y,busConnector.WeightCore) annotation (Line(
     points={{78.75,155},{14,155},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(AmbientTemperature.y, busConnector.AmbientTemperature)
        annotation (Line(
          points={{-87.25,13},{14,13},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity.y, busConnector.EnvironmentRelativeHumidity)
        annotation (Line(
          points={{-95.25,-9},{14,-9},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
    connect(DietIntakeH2O_Rate.y, busConnector.DietIntakeH2O_Rate) annotation (Line(
     points={{-95.25,-17},{14,-17},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(DialyzerActivity_UltrafiltrationRate.y, busConnector.DialyzerActivity_UltrafiltrationRate)
        annotation (Line(
          points={{-120.5,6},{-110,6},{-110,56},{14,56},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_PlasmaRate1.y, busConnector.Hemorrhage_H2ORate)
                                                                      annotation (Line(
     points={{-118.5,24},{-116,24},{-116,56},{-178,56},{-178,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_PlasmaRate1.y, busConnector.Transfusion_H2ORate)
                                                                        annotation (Line(
     points={{-118.75,35},{-118,35},{-118,56},{-178,56},{-178,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenDiarrhea_H2OTarget.y, busConnector.GILumenDiarrhea_H2OTarget)
        annotation (Line(
          points={{-68.5,138},{0,138},{0,0},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenVomitus_H2OTarget.y, busConnector.GILumenVomitus_H2OTarget)
        annotation (Line(
          points={{-70.5,128},{14,128},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(EnvironmentRelativeHumidity_VaporPressure.y, busConnector.EnviromentRelativeHumidity_VaporPressure)
        annotation (Line(
          points={{-85.25,1},{14,1},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Wind_MPH.y, busConnector.WindSpeed) annotation (Line(
          points={{-39.25,9},{14,9},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(GILumenFiber.y, busConnector.GILumenFiber_Mass) annotation (Line(
          points={{-68.5,148},{14,148},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(IVDrip_ProteinRate.y, busConnector.IVDripProteinRate) annotation (
          Line(
          points={{-83.25,-37},{14,-37},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Hemorrhage_ProteinRate.y, busConnector.Hemorrhage_ProteinRate)
        annotation (Line(
          points={{78.75,-145},{78.75,-146.5},{14,-146.5},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(Transfusion_ProteinRate.y, busConnector.Transfusion_ProteinRate)
        annotation (Line(
          points={{78.75,135},{14,135},{14,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,
                -100},{100,100}}), graphics={Text(
              extent={{-120,-42},{122,-76}},
              lineColor={0,0,255},
              textString="%name")}));
    end HemorrhageSetup;
    annotation (Documentation(revisions="<html>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p>Author:</p></td>
<td><p>Marek Matejak</p></td>
</tr>
<tr>
<td><p>License:</p></td>
<td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
</tr>

<tr>
<td><p>Date of:</p></td>
<td><p>2008-2015</p></td>
</tr>
<tr>
<td><p>References:</p></td>
<td><p>Tom Coleman: HumMod 1.6, University of Mississippi Medical Center</p></td>
</tr>
</table>
<p>Copyright &copy; 2008-2015 Marek Matejak, Charles University in Prague.</p>
</html>"));
  end Setup;


  package Status "Fitness Status of Tissue Structures and Functionality"
   extends Physiolibrary.Icons.StatusLib;
    model TissuesFitness
     extends Physiolibrary.Icons.Status;
      Tissues.SkeletalMuscle skeletalMuscle
        annotation (Placement(transformation(extent={{-80,64},{-60,84}})));

      Tissues.Bone bone
        annotation (Placement(transformation(extent={{-80,32},{-60,52}})));

      Tissues.Fat fat
        annotation (Placement(transformation(extent={{-80,-58},{-60,-38}})));

      Tissues.Brain brain
        annotation (Placement(transformation(extent={{0,30},{20,50}})));

      Tissues.RightHeart rightHeart
        annotation (Placement(transformation(extent={{0,-90},{20,-70}})));

      Tissues.RespiratoryMuscle respiratoryMuscle
        annotation (Placement(transformation(extent={{-80,-28},{-60,-8}})));

      Tissues.OtherTissue otherTissue
        annotation (Placement(transformation(extent={{-80,2},{-60,22}})));

      Tissues.Liver liver
        annotation (Placement(transformation(extent={{0,64},{20,84}})));

      Tissues.LeftHeart leftHeart
        annotation (Placement(transformation(extent={{0,-60},{20,-40}})));

      Tissues.Kidney kidney
        annotation (Placement(transformation(extent={{0,-30},{20,-10}})));

      Tissues.GITract GITract
        annotation (Placement(transformation(extent={{0,-2},{20,18}})));

    Physiolibrary.Types.BusConnector busConnector
      annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
      Tissues.Skin skin
        annotation (Placement(transformation(extent={{-80,-88},{-60,-68}})));

      PatientStatus patientStatus
        annotation (Placement(transformation(extent={{74,16},{94,36}})));
    equation

      connect(bone.pH_intracellular, busConnector.bone_pH_intracellular)        annotation (
         Line(
          points={{-61,50},{-20,50},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(brain.pH_intracellular, busConnector.brain_pH_intracellular)
        annotation (Line(
          points={{19,48},{46,48},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(fat.pH_intracellular, busConnector.fat_pH_intracellular)     annotation (
          Line(
          points={{-61,-40},{-20,-40},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(GITract.pH_intracellular, busConnector.GITract_pH_intracellular)
        annotation (Line(
          points={{19,16},{46,16},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(kidney.pH_intracellular, busConnector.kidney_pH_intracellular)
        annotation (Line(
          points={{19,-12},{46,-12},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(leftHeart.pH_intracellular, busConnector.leftHeart_pH_intracellular)
        annotation (Line(
          points={{19,-42},{46,-42},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(liver.pH_intracellular, busConnector.liver_pH_intracellular)
        annotation (Line(
          points={{19,82},{46,82},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(otherTissue.pH_intracellular, busConnector.otherTissue_pH_intracellular)
        annotation (Line(
          points={{-61,20},{-20,20},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(respiratoryMuscle.pH_intracellular, busConnector.respiratoryMuscle_pH_intracellular)
        annotation (Line(
          points={{-61,-10},{-20,-10},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(rightHeart.pH_intracellular, busConnector.rightHeart_pH_intracellular)
        annotation (Line(
          points={{19,-72},{46,-72},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skin.pH_intracellular, busConnector.skin_pH_intracellular)     annotation (
         Line(
          points={{-61,-70},{-20,-70},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skeletalMuscle.pH_intracellular, busConnector.skeletalMuscle_pH_intracellular)
        annotation (Line(
          points={{-61,82},{-20.5,82},{-20.5,92},{-88,92}},
          color={127,0,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));

      connect(bone.T, busConnector.bone_T)        annotation (
         Line(
          points={{-61,46},{-20,46},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(brain.T, busConnector.brain_T)
        annotation (Line(
          points={{19,44},{46,44},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(fat.T, busConnector.fat_T)     annotation (
          Line(
          points={{-61,-44},{-20,-44},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(GITract.T, busConnector.GITract_T)
        annotation (Line(
          points={{19,12},{46,12},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(kidney.T, busConnector.kidney_T)
        annotation (Line(
          points={{19,-16},{46,-16},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(leftHeart.T, busConnector.leftHeart_T)
        annotation (Line(
          points={{19,-46},{46,-46},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(liver.T, busConnector.liver_T)
        annotation (Line(
          points={{19,78},{46,78},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(otherTissue.T, busConnector.otherTissue_T)
        annotation (Line(
          points={{-61,16},{-20,16},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(respiratoryMuscle.T, busConnector.respiratoryMuscle_T)
        annotation (Line(
          points={{-61,-14},{-20,-14},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(rightHeart.T, busConnector.rightHeart_T)
        annotation (Line(
          points={{19,-76},{46,-76},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skin.T, busConnector.skin_T)     annotation (
         Line(
          points={{-61,-74},{-20,-74},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skeletalMuscle.T, busConnector.skeletalMuscle_T)
        annotation (Line(
          points={{-61,78},{-20.5,78},{-20.5,92},{-88,92}},
          color={127,0,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));

      connect(bone.Fuel_FractUseDelay, busConnector.bone_Fuel_FractUseDelay)        annotation (
         Line(
          points={{-61,42},{-20,42},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(brain.Fuel_FractUseDelay, busConnector.brain_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,40},{46,40},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(fat.Fuel_FractUseDelay, busConnector.fat_Fuel_FractUseDelay)     annotation (
          Line(
          points={{-61,-48},{-20,-48},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(GITract.Fuel_FractUseDelay, busConnector.GITract_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,8},{46,8},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(kidney.Fuel_FractUseDelay, busConnector.kidney_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,-20},{46,-20},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(leftHeart.Fuel_FractUseDelay, busConnector.leftHeart_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,-50},{46,-50},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(liver.Fuel_FractUseDelay, busConnector.liver_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,74},{46,74},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(otherTissue.Fuel_FractUseDelay, busConnector.otherTissue_Fuel_FractUseDelay)
        annotation (Line(
          points={{-61,12},{-20,12},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(respiratoryMuscle.Fuel_FractUseDelay, busConnector.respiratoryMuscle_Fuel_FractUseDelay)
        annotation (Line(
          points={{-61,-18},{-20,-18},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(rightHeart.Fuel_FractUseDelay, busConnector.rightHeart_Fuel_FractUseDelay)
        annotation (Line(
          points={{19,-80},{46,-80},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skin.Fuel_FractUseDelay, busConnector.skin_Fuel_FractUseDelay)     annotation (
         Line(
          points={{-61,-78},{-20,-78},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skeletalMuscle.Fuel_FractUseDelay, busConnector.skeletalMuscle_Fuel_FractUseDelay)
        annotation (Line(
          points={{-61,74},{-20.5,74},{-20.5,92},{-88,92}},
          color={127,0,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));

      connect(bone.CellProteinAA, busConnector.CellProteinAA)       annotation (
         Line(
          points={{-61,34},{-20,34},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(brain.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,32},{46,32},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(fat.CellProteinAA, busConnector.CellProteinAA)     annotation (
          Line(
          points={{-61,-56},{-20,-56},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(GITract.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,0},{46,0},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(kidney.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,-28},{46,-28},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(leftHeart.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,-58},{46,-58},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(liver.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,66},{46,66},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(otherTissue.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{-61,4},{-20,4},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(respiratoryMuscle.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{-61,-26},{-20,-26},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(rightHeart.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{19,-88},{46,-88},{46,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skin.CellProteinAA, busConnector.CellProteinAA)     annotation (
         Line(
          points={{-61,-86},{-20,-86},{-20,92},{-88,92}},
          color={0,127,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));
      connect(skeletalMuscle.CellProteinAA, busConnector.CellProteinAA)
        annotation (Line(
          points={{-61,66},{-20.5,66},{-20.5,92},{-88,92}},
          color={127,0,0},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{5,2},{5,2}}));

    connect(bone.StructureEffect, busConnector.bone_StructureEffect) annotation (Line(
          points={{-68,30},{-20,30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(brain.StructureEffect, busConnector.brain_StructureEffect) annotation (Line(
          points={{12,28},{-20,28},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(fat.StructureEffect, busConnector.fat_StructureEffect) annotation (Line(
          points={{-68,-60},{-20,-60},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(GITract.StructureEffect, busConnector.GITract_StructureEffect) annotation (Line(
          points={{12,-4},{-20,-4},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(kidney.StructureEffect, busConnector.kidney_StructureEffect) annotation (Line(
          points={{12,-32},{-20,-32},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(leftHeart.StructureEffect, busConnector.leftHeart_StructureEffect) annotation (Line(
          points={{12,-62},{-20,-62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(liver.StructureEffect, busConnector.liver_StructureEffect) annotation (Line(
          points={{12,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(otherTissue.StructureEffect, busConnector.otherTissue_StructureEffect) annotation (Line(
          points={{-68,0},{-20,0},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(rightHeart.StructureEffect, busConnector.rightHeart_StructureEffect) annotation (Line(
          points={{12,-92},{-20,-92},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(respiratoryMuscle.StructureEffect, busConnector.respiratoryMuscle_StructureEffect) annotation (Line(
          points={{-68,-30},{-20,-30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skin.StructureEffect, busConnector.skin_StructureEffect) annotation (Line(
          points={{-68,-90},{-20,-90},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skeletalMuscle.StructureEffect, busConnector.skeletalMuscle_StructureEffect) annotation (Line(
          points={{-68,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));

    connect(bone.StructureEffect, busConnector.Bone_StructureEffect) annotation (Line(
          points={{-68,30},{-20,30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(brain.StructureEffect, busConnector.Brain_StructureEffect) annotation (Line(
          points={{12,28},{-20,28},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(fat.StructureEffect, busConnector.Fat_StructureEffect) annotation (Line(
          points={{-68,-60},{-20,-60},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(kidney.StructureEffect, busConnector.Kidney_StructureEffect) annotation (Line(
          points={{12,-32},{-20,-32},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(leftHeart.StructureEffect, busConnector.LeftHeart_StructureEffect) annotation (Line(
          points={{12,-62},{-20,-62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(liver.StructureEffect, busConnector.Liver_StructureEffect) annotation (Line(
          points={{12,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(otherTissue.StructureEffect, busConnector.OtherTissue_StructureEffect) annotation (Line(
          points={{-68,0},{-20,0},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(rightHeart.StructureEffect, busConnector.RightHeart_StructureEffect) annotation (Line(
          points={{12,-92},{-20,-92},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(respiratoryMuscle.StructureEffect, busConnector.RespiratoryMuscle_StructureEffect) annotation (Line(
          points={{-68,-30},{-20,-30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skin.StructureEffect, busConnector.Skin_StructureEffect) annotation (Line(
          points={{-68,-90},{-20,-90},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skeletalMuscle.StructureEffect, busConnector.SkeletalMuscle_StructureEffect) annotation (Line(
          points={{-68,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));

     connect(bone.FunctionEffect, busConnector.bone_FunctionEffect) annotation (Line(
          points={{-72,30},{-20,30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(brain.FunctionEffect, busConnector.brain_FunctionEffect) annotation (Line(
          points={{8,28},{-20,28},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(fat.FunctionEffect, busConnector.fat_FunctionEffect) annotation (Line(
          points={{-72,-60},{-20,-60},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(GITract.FunctionEffect, busConnector.GITract_FunctionEffect) annotation (Line(
          points={{8,-4},{-20,-4},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(kidney.FunctionEffect, busConnector.kidney_FunctionEffect) annotation (Line(
          points={{8,-32},{-20,-32},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(leftHeart.FunctionEffect, busConnector.leftHeart_FunctionEffect) annotation (Line(
          points={{8,-62},{-20,-62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(liver.FunctionEffect, busConnector.liver_FunctionEffect) annotation (Line(
          points={{8,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(otherTissue.FunctionEffect, busConnector.otherTissue_FunctionEffect) annotation (Line(
          points={{-72,0},{-20,0},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(rightHeart.FunctionEffect, busConnector.rightHeart_FunctionEffect) annotation (Line(
          points={{8,-92},{-20,-92},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(respiratoryMuscle.FunctionEffect, busConnector.respiratoryMuscle_FunctionEffect) annotation (Line(
          points={{-72,-30},{-20,-30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skin.FunctionEffect, busConnector.skin_FunctionEffect) annotation (Line(
          points={{-72,-90},{-20,-90},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skeletalMuscle.FunctionEffect, busConnector.skeletalMuscle_FunctionEffect) annotation (Line(
          points={{-72,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));

    connect(bone.FunctionEffect, busConnector.BoneFunctionEffect) annotation (Line(
          points={{-72,30},{-20,30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(brain.FunctionEffect, busConnector.BrainFunctionEffect) annotation (Line(
          points={{8,28},{-20,28},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(fat.FunctionEffect, busConnector.FatFunctionEffect) annotation (Line(
          points={{-72,-60},{-20,-60},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(GITract.FunctionEffect, busConnector.GITractFunctionEffect) annotation (Line(
          points={{8,-4},{-20,-4},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(kidney.FunctionEffect, busConnector.KidneyFunctionEffect) annotation (Line(
          points={{8,-32},{-20,-32},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(leftHeart.FunctionEffect, busConnector.LeftHeartFunctionEffect) annotation (Line(
          points={{8,-62},{-20,-62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(liver.FunctionEffect, busConnector.LiverFunctionEffect) annotation (Line(
          points={{8,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(otherTissue.FunctionEffect, busConnector.OtherTissueFunctionEffect) annotation (Line(
          points={{-72,0},{-20,0},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(rightHeart.FunctionEffect, busConnector.RightHeartFunctionEffect) annotation (Line(
          points={{8,-92},{-20,-92},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(respiratoryMuscle.FunctionEffect, busConnector.RespiratoryMuscleFunctionEffect) annotation (Line(
          points={{-72,-30},{-20,-30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skin.FunctionEffect, busConnector.SkinFunctionEffect) annotation (Line(
          points={{-72,-90},{-20,-90},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skeletalMuscle.FunctionEffect, busConnector.SkeletalMuscleFunctionEffect) annotation (Line(
          points={{-72,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));

    connect(bone.FunctionFailed, busConnector.bone.Function_Failed) annotation (Line(
          points={{-64,30},{-20,30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(brain.FunctionFailed, busConnector.brain.Function_Failed) annotation (Line(
          points={{16,28},{-20,28},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(GITract.FunctionFailed, busConnector.GITract.Function_Failed) annotation (Line(
          points={{16,-4},{-20,-4},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(fat.FunctionFailed, busConnector.fat.Function_Failed) annotation (Line(
          points={{-64,-60},{-20,-60},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(kidney.FunctionFailed, busConnector.Kidney_Function_Failed) annotation (Line(
          points={{16,-32},{-20,-32},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(leftHeart.FunctionFailed, busConnector.LeftHeart_Function_Failed) annotation (Line(
          points={{16,-62},{-20,-62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(liver.FunctionFailed, busConnector.Liver_Function_Failed) annotation (Line(
          points={{16,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(otherTissue.FunctionFailed, busConnector.otherTissue.Function_Failed) annotation (Line(
          points={{-64,0},{-20,0},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(rightHeart.FunctionFailed, busConnector.RightHeart_Function_Failed) annotation (Line(
          points={{16,-92},{-20,-92},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(respiratoryMuscle.FunctionFailed, busConnector.respiratoryMuscle.Function_Failed) annotation (Line(
          points={{-64,-30},{-20,-30},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skin.FunctionFailed, busConnector.Skin_Function_Failed) annotation (Line(
          points={{-64,-90},{-20,-90},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));
     connect(skeletalMuscle.FunctionFailed, busConnector.skeletalMuscle.Function_Failed) annotation (Line(
          points={{-64,62},{-20,62},{-20,92},{-88,92}},
          color={0,0,127},
          smooth=Smooth.None));

      connect(brain.FunctionEffect, patientStatus.BrainFunctionEffect)
        annotation (Line(
          points={{8,28},{8,26},{74,26}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
                -100},{100,100}}), graphics={                 Text(
              extent={{-152,-102},{150,-138}},
              lineColor={0,0,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              textString="%name")}),
        Documentation(info="<html>
<p>BE_interstitial is base excess in the interstitium of the tissue. The standard value is 0, when strong acid concentration increase, then BE value decrease with the same concentration. </p>
<p>Meaning might be interpreted like what amount of hydrogen iont must be added to sollution if the end poit of titration will be pH=7.4 and pCO2=5.3kPa.</p>
<p>For any tissue can be simplified with difference of lactate concentration from its normal value.</p>
</html>",     revisions="<html>
<p>Marek Matejak, 24.12.2009</p>
</html>"));
    end TissuesFitness;

    model Failed
      parameter Real effectAtFailing=0.2;
      parameter Real effectAtRevitaling=0.4;

      Modelica.Blocks.Interfaces.RealInput FunctionEffect
                                                   annotation (Placement(
            transformation(extent={{-118,-20},{-78,20}}), iconTransformation(extent=
               {{-120,-20},{-80,20}})));
      Modelica.Blocks.Interfaces.BooleanOutput
                                             Failed(start=false) annotation (Placement(transformation(
              extent={{80,-20},{120,20}}), iconTransformation(extent={{80,-20},{120,
                20}})));
      Boolean a(start=false);
      Boolean b(start=true);
      Boolean c(start=false);
    //initial equation
    //  c=false;
    equation
      a=FunctionEffect<effectAtFailing;
      b=FunctionEffect>effectAtRevitaling;
      c=pre(Failed);
      Failed=a or ( c and ( not b));
    end Failed;

    model PatientStatus
      extends Physiolibrary.Icons.StatusNormal;
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

    block Normal
      extends Modelica.StateGraph.InitialStepWithSignal;
      extends Physiolibrary.Icons.StatusNormal;
    end Normal;

    block Confused
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusConfused;
    end Confused;

    block Impaired
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusImpaired;
    end Impaired;

    block Comatose
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusComatose;
    end Comatose;

    block NotBreathing
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusNotBreathing;
    end NotBreathing;

    block MayBeDead
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusMayBeDead;
    end MayBeDead;

    block IsReallyDead
      extends Modelica.StateGraph.StepWithSignal;
      extends Physiolibrary.Icons.StatusIsReallyDead;
    end IsReallyDead;

    package Tissues
      model TissueFitness

        Physiolibrary.Types.RealIO.FractionOutput FunctionEffect   annotation (Placement(transformation(
                extent={{56,-14},{68,-2}}),  iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={-20,-120})));
        Physiolibrary.Types.RealIO.FractionOutput StructureEffect                         annotation (Placement(
              transformation(extent={{-8,-34},{8,-18}}),  iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={20,-120})));

        Physiolibrary.Types.RealIO.pHInput pH_intracellular
                                         annotation (Placement(transformation(extent={{-84,42},
                  {-72,54}}),           iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,80})));
        Physiolibrary.Types.RealIO.TemperatureInput T(
                                        final displayUnit="degC")
        "tissue temperature"             annotation (Placement(transformation(extent={{-104,66},
                  {-92,78}}),           iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,40})));

        Physiolibrary.Types.RealIO.FractionInput Fuel_FractUseDelay                        annotation (Placement(transformation(extent={{-96,54},
                  {-84,66}}),           iconTransformation(extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,0})));

        Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                                      CellProteinAA(final displayUnit=
             "mol") annotation (Placement(transformation(extent={{-2,30},{8,40}}),
              iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={90,-80})));

      Physiolibrary.Blocks.Factors.Spline PhOnStructure(data={{6.5,0.1,0},{6.6,
            0.0,0}})
        annotation (Placement(transformation(extent={{-64,14},{-44,36}})));
      Physiolibrary.Blocks.Factors.Spline FuelOnStructure(data={{0.5,0.05,0},{
            0.8,0.00,0}})
        annotation (Placement(transformation(extent={{-64,0},{-44,20}})));
      Physiolibrary.Blocks.Factors.Spline TemperatureOnStructure(data={{44.0 + 273.15,
              0.00,0},{46.0 + 273.15,0.05,0}})
        annotation (Placement(transformation(extent={{-64,-14},{-44,6}})));
      Physiolibrary.Types.Constants.FrequencyConst            Constant(k(
            displayUnit="1/min") = 0.016666666666667)
        annotation (Placement(transformation(extent={{-66,34},{-58,42}})));
        Modelica.Blocks.Math.Feedback feedback
          annotation (Placement(transformation(extent={{-64,-16},{-44,-36}})));
        Modelica.Blocks.Continuous.Integrator integrator(y_start=1, k=1)
          annotation (Placement(transformation(extent={{-38,-36},{-18,-16}})));
      Physiolibrary.Blocks.Factors.Spline PhOnFunction(data={{6.6,0.0,0},{6.7,
            1.0,0}})
        annotation (Placement(transformation(extent={{20,38},{40,58}})));
      Physiolibrary.Blocks.Factors.Spline ProteinOnFunction(data={{3000.0,0.0,0},
            {5200.0,1.0,0}}, Xscale=1e-3/Substances.AminoAcids.mw)
        annotation (Placement(transformation(extent={{20,24},{40,46}})));
      Physiolibrary.Blocks.Factors.Spline FuelOnFunction(data={{0.0,0.0,0},{0.9,
            1.0,0}})
        annotation (Placement(transformation(extent={{20,50},{40,70}})));
      Physiolibrary.Blocks.Factors.Spline TemperatureOnFunction(data={{10 + 273.15,0.0,
              0},{37 + 273.15,1.0,0.12},{40 + 273.15,1.5,0},{46 + 273.15,0.0,0}})
        annotation (Placement(transformation(extent={{20,62},{40,82}})));
      Physiolibrary.Types.Constants.FractionConst             Constant1(k=1)
        annotation (Placement(transformation(extent={{20,78},{28,86}})));
      Physiolibrary.Blocks.Factors.Normalization StructureEff
        annotation (Placement(transformation(extent={{20,10},{40,30}})));
        Failed failed
          annotation (Placement(transformation(extent={{44,-70},{64,-50}})));
        Modelica.Blocks.Interfaces.BooleanOutput
                                               FunctionFailed
                                                        annotation (Placement(
              transformation(extent={{76,-66},{88,-54}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={60,-120})));
      Physiolibrary.Types.Constants.FrequencyConst            Constant2(k=0)
        annotation (Placement(transformation(extent={{-86,-30},{-78,-22}})));
      equation

        connect(PhOnStructure.u, pH_intracellular)
                                                  annotation (Line(
            points={{-62,25},{-70,25},{-70,48},{-78,48}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(FuelOnStructure.u, Fuel_FractUseDelay) annotation (Line(
            points={{-62,10},{-82,10},{-82,60},{-90,60}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(TemperatureOnStructure.u, T) annotation (Line(
            points={{-62,-4},{-92,-4},{-92,72},{-98,72}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(PhOnStructure.y, FuelOnStructure.yBase) annotation (Line(
            points={{-54,20.6},{-54,12}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(FuelOnStructure.y, TemperatureOnStructure.yBase) annotation (Line(
            points={{-54,6},{-54,-2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(Constant.y, PhOnStructure.yBase) annotation (Line(
            points={{-57,38},{-54,38},{-54,27.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(TemperatureOnStructure.y, feedback.u2) annotation (Line(
            points={{-54,-8},{-54,-18}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(feedback.y, integrator.u) annotation (Line(
            points={{-45,-26},{-40,-26}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(integrator.y, StructureEffect) annotation (Line(
            points={{-17,-26},{0,-26}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(pH_intracellular, PhOnFunction.u)
                                                 annotation (Line(
            points={{-78,48},{22,48}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(CellProteinAA, ProteinOnFunction.u) annotation (Line(
            points={{3,35},{22,35}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(Fuel_FractUseDelay, FuelOnFunction.u) annotation (Line(
            points={{-90,60},{22,60}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(T, TemperatureOnFunction.u) annotation (Line(
            points={{-98,72},{22,72}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(TemperatureOnFunction.y, FuelOnFunction.yBase) annotation (Line(
            points={{30,68},{30,62}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(FuelOnFunction.y, PhOnFunction.yBase) annotation (Line(
            points={{30,56},{30,50}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(PhOnFunction.y, ProteinOnFunction.yBase) annotation (Line(
            points={{30,44},{30,37.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(Constant1.y, TemperatureOnFunction.yBase) annotation (Line(
            points={{29,82},{30,82},{30,74}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(integrator.y, StructureEff.u) annotation (Line(
            points={{-17,-26},{-12,-26},{-12,20},{22,20}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(ProteinOnFunction.y, StructureEff.yBase) annotation (Line(
            points={{30,30.6},{30,22}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(StructureEff.y, FunctionEffect) annotation (Line(
            points={{30,16},{30,-8},{62,-8}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(StructureEff.y, failed.FunctionEffect) annotation (Line(
            points={{30,16},{30,-60},{44,-60}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(failed.Failed, FunctionFailed) annotation (Line(
            points={{64,-60},{82,-60}},
            color={255,0,255},
            smooth=Smooth.None));
        connect(Constant2.y, feedback.u1) annotation (Line(
            points={{-77,-26},{-62,-26}},
            color={0,0,127},
            smooth=Smooth.None));
        annotation ( Icon(coordinateSystem(
                preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
              graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,
                    0,255})}));
      end TissueFitness;

      model SkeletalMuscle
        extends TissueFitness;
        extends Physiolibrary.Icons.SkeletalMuscle;
      end SkeletalMuscle;

      model Bone
        extends TissueFitness;
        extends Physiolibrary.Icons.Bone;
      end Bone;

      model OtherTissue
        extends TissueFitness;
        extends Physiolibrary.Icons.OtherTissue;
      end OtherTissue;

      model RespiratoryMuscle
        extends TissueFitness;
        extends Physiolibrary.Icons.RespiratoryMuscle;
      end RespiratoryMuscle;

      model Fat
        extends TissueFitness;
        extends Physiolibrary.Icons.Fat;
      end Fat;

      model Skin
        extends TissueFitness(TemperatureOnFunction(data={{10.0+273.15,0.0,0},{29.5+273.15,
                1.0,0.12},{40.0+273.15,1.5,0},{46.0+273.15,0.0,0}}));
        extends Physiolibrary.Icons.Skin;
      end Skin;

      model Liver
        extends TissueFitness;
        extends Physiolibrary.Icons.Liver;
      end Liver;

      model Brain
        extends TissueFitness;
        extends Physiolibrary.Icons.Brain;
      end Brain;

      model GITract
        extends TissueFitness;
        extends Physiolibrary.Icons.GITract;
      end GITract;

      model Kidney
        extends TissueFitness;
        extends Physiolibrary.Icons.Kidney;
      end Kidney;

      model LeftHeart
        extends TissueFitness;
        extends Physiolibrary.Icons.LeftHeart;
      end LeftHeart;

      model RightHeart
        extends TissueFitness;
        extends Physiolibrary.Icons.RightHeart;
      end RightHeart;
    end Tissues;

    package IO_Bus
        extends Physiolibrary.Types.IO_Bus;
      redeclare model extends Variables

      T.Fraction Bone_StructureEffect(varName="Bone-Structure.Effect")
        "Bone tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
      T.Fraction brain_FunctionEffect(varName="Brain-Function.Effect")
        "Brain tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
      T.Fraction Brain_StructureEffect(varName="Brain-Structure.Effect")
        "Brain tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
      T.Fraction FatFunctionEffect(varName="Fat-Function.Effect")
        "Fat tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
      T.Fraction Fat_StructureEffect(varName="Fat-Structure.Effect")
        "Fat tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
      T.Fraction GITractFunctionEffect(varName="GITract-Function.Effect")
        "GITract tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
      T.Fraction GITract_StructureEffect(varName="GITract-Structure.Effect")
        "GITract tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
      T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect")
        "Kidney tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
      //T.Fraction KidneyFunction_Effect(varName="Kidney-Function.Effect")
      //    "Kidney tissue function effect. []"
      //annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
      T.Fraction Kidney_StructureEffect(varName="Kidney-Structure.Effect")
        "Kidney tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,100},{-30,106}})));
      T.Fraction LeftHeart_StructureEffect(varName="LeftHeart-Structure.Effect")
        "LeftHeart tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
      T.Fraction LiverFunctionEffect(varName="Liver-Function.Effect")
        "Liver tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
      T.Fraction Liver_StructureEffect(varName="Liver-Structure.Effect")
        "Liver tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,130},{-30,136}})));
      T.Fraction OtherTissueFunctionEffect(varName="OtherTissue-Function.Effect")
        "OtherTissue tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,140},{-30,146}})));
      T.Fraction OtherTissue_StructureEffect(varName="OtherTissue-Structure.Effect")
        "OtherTissue tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,150},{-30,156}})));
      T.Fraction RespiratoryMuscleFunctionEffect(varName="RespiratoryMuscle-Function.Effect")
        "RespiratoryMuscle tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,160},{-30,166}})));
      T.Fraction RespiratoryMuscle_StructureEffect(varName="RespiratoryMuscle-Structure.Effect")
        "RespiratoryMuscle tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,170},{-30,176}})));
      T.Fraction RightHeart_StructureEffect(varName="RightHeart-Structure.Effect")
        "RightHeart tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,180},{-30,186}})));
      T.Fraction SkeletalMuscle_StructureEffect(varName="SkeletalMuscle-Structure.Effect")
        "SkeletalMuscle tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,190},{-30,196}})));
      T.Fraction Skin_StructureEffect(varName="Skin-Structure.Effect")
        "Skin tissue structural damage effect. []"
      annotation (Placement(transformation(extent={{-36,200},{-30,206}})));
      BooleanVariable Bone_Function_Failed(varName="Bone-Function.Failed")
        "Bone function failture if true."
      annotation (Placement(transformation(extent={{-36,210},{-30,216}})));
      BooleanVariable Brain_Function_Failed(varName="Brain-Function.Failed")
        "Brain function failture if true."
      annotation (Placement(transformation(extent={{-36,220},{-30,226}})));
      BooleanVariable Fat_Function_Failed(varName="Fat-Function.Failed")
        "Fat function failture if true."
      annotation (Placement(transformation(extent={{-36,230},{-30,236}})));
      BooleanVariable GITract_Function_Failed(varName="GITract-Function.Failed")
        "GITract function failture if true."
      annotation (Placement(transformation(extent={{-36,240},{-30,246}})));
      BooleanVariable Kidney_Function_Failed(varName="Kidney-Function.Failed")
        "Kidney function failture if true."
      annotation (Placement(transformation(extent={{-36,250},{-30,256}})));
      BooleanVariable LeftHeart_Function_Failed(varName="LeftHeart-Function.Failed")
        "LeftHeart function failture if true."
      annotation (Placement(transformation(extent={{-36,260},{-30,266}})));
      BooleanVariable Liver_Function_Failed(varName="Liver-Function.Failed")
        "Liver function failture if true."
      annotation (Placement(transformation(extent={{-36,270},{-30,276}})));
      BooleanVariable OtherTissue_Function_Failed(varName="OtherTissue-Function.Failed")
        "OtherTissue function failture if true."
      annotation (Placement(transformation(extent={{-36,280},{-30,286}})));
      BooleanVariable RespiratoryMuscle_Function_Failed(varName="RespiratoryMuscle-Function.Failed")
        "RespiratoryMuscle function failture if true."
      annotation (Placement(transformation(extent={{-36,290},{-30,296}})));
      BooleanVariable RightHeart_Function_Failed(varName="RightHeart-Function.Failed")
        "RightHeart function failture if true."
      annotation (Placement(transformation(extent={{-36,300},{-30,306}})));
      BooleanVariable SkeletalMuscle_Function_Failed(varName="SkeletalMuscle-Function.Failed")
        "SkeletalMuscle function failture if true."
      annotation (Placement(transformation(extent={{-36,310},{-30,316}})));
      BooleanVariable Skin_Function_Failed(varName="Skin-Function.Failed")
        "Skin function failture if true."
      annotation (Placement(transformation(extent={{-36,320},{-30,326}})));
      T.Fraction skin_FunctionEffect(varName=
              "Skin-Function.Effect") "Skin tissue function effect. []"
      annotation (Placement(transformation(extent={{-36,2},{-30,8}})));
      equation
      connect(Bone_StructureEffect.y, busConnector.Bone_StructureEffect) annotation (Line(
       points={{-29.7,13},{90,13},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(brain_FunctionEffect.y, busConnector.brain_FunctionEffect) annotation (Line(
       points={{-29.7,23},{90,23},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Brain_StructureEffect.y, busConnector.Brain_StructureEffect) annotation (Line(
       points={{-29.7,33},{90,33},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(FatFunctionEffect.y, busConnector.FatFunctionEffect) annotation (Line(
       points={{-29.7,43},{90,43},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Fat_StructureEffect.y, busConnector.Fat_StructureEffect) annotation (Line(
       points={{-29.7,53},{90,53},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(GITractFunctionEffect.y, busConnector.GITractFunctionEffect) annotation (Line(
       points={{-29.7,63},{90,63},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(GITract_StructureEffect.y, busConnector.GITract_StructureEffect) annotation (Line(
       points={{-29.7,73},{90,73},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect) annotation (Line(
       points={{-29.7,83},{90,83},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Kidney_StructureEffect.y, busConnector.Kidney_StructureEffect) annotation (Line(
       points={{-29.7,103},{90,103},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(LeftHeart_StructureEffect.y, busConnector.LeftHeart_StructureEffect) annotation (Line(
       points={{-29.7,113},{90,113},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(LiverFunctionEffect.y, busConnector.LiverFunctionEffect) annotation (Line(
       points={{-29.7,123},{90,123},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Liver_StructureEffect.y, busConnector.Liver_StructureEffect) annotation (Line(
       points={{-29.7,133},{90,133},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(OtherTissueFunctionEffect.y, busConnector.OtherTissueFunctionEffect) annotation (Line(
       points={{-29.7,143},{90,143},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(OtherTissue_StructureEffect.y, busConnector.OtherTissue_StructureEffect) annotation (Line(
       points={{-29.7,153},{90,153},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(RespiratoryMuscleFunctionEffect.y, busConnector.RespiratoryMuscleFunctionEffect) annotation (Line(
       points={{-29.7,163},{90,163},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(RespiratoryMuscle_StructureEffect.y, busConnector.RespiratoryMuscle_StructureEffect) annotation (Line(
       points={{-29.7,173},{90,173},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(RightHeart_StructureEffect.y, busConnector.RightHeart_StructureEffect) annotation (Line(
       points={{-29.7,183},{90,183},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(SkeletalMuscle_StructureEffect.y, busConnector.SkeletalMuscle_StructureEffect) annotation (Line(
       points={{-29.7,193},{90,193},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Skin_StructureEffect.y, busConnector.Skin_StructureEffect) annotation (Line(
       points={{-29.7,203},{90,203},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Bone_Function_Failed.y, busConnector.bone.Function_Failed) annotation (Line(
       points={{-29.7,213},{90,213},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Brain_Function_Failed.y, busConnector.brain.Function_Failed) annotation (Line(
       points={{-29.7,223},{90,223},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Fat_Function_Failed.y, busConnector.fat.Function_Failed) annotation (Line(
       points={{-29.7,233},{90,233},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(GITract_Function_Failed.y, busConnector.GITract.Function_Failed) annotation (Line(
       points={{-29.7,243},{90,243},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Kidney_Function_Failed.y, busConnector.Kidney_Function_Failed) annotation (Line(
       points={{-29.7,253},{90,253},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(LeftHeart_Function_Failed.y, busConnector.LeftHeart_Function_Failed) annotation (Line(
       points={{-29.7,263},{90,263},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Liver_Function_Failed.y, busConnector.Liver_Function_Failed) annotation (Line(
       points={{-29.7,273},{90,273},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(OtherTissue_Function_Failed.y, busConnector.otherTissue.Function_Failed) annotation (Line(
       points={{-29.7,283},{90,283},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(RespiratoryMuscle_Function_Failed.y, busConnector.respiratoryMuscle.Function_Failed) annotation (Line(
       points={{-29.7,293},{90,293},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(RightHeart_Function_Failed.y, busConnector.RightHeart_Function_Failed) annotation (Line(
       points={{-29.7,303},{90,303},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(SkeletalMuscle_Function_Failed.y, busConnector.skeletalMuscle.Function_Failed) annotation (Line(
       points={{-29.7,313},{90,313},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Skin_Function_Failed.y, busConnector.Skin_Function_Failed) annotation (Line(
       points={{-29.7,323},{90,323},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

        connect(skin_FunctionEffect.y, busConnector.skin_FunctionEffect)
          annotation (Line(
            points={{-29.7,5},{25.15,5},{25.15,-2},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={
              Text(
                extent={{18,100},{100,62}},
                lineColor={0,0,0},
                textString="vars"),
              Text(
                extent={{-124,-90},{118,-124}},
                lineColor={0,0,255},
                textString="%name")}));
      end Variables;

      model Status_test
        import Physiomodel;
      Physiomodel.CardioVascular.IO_Bus.InputFromFile cardioVascularSystem
          annotation (Placement(transformation(extent={{40,72},{60,94}})));
        Physiomodel.Metabolism.IO_Bus.InputFromFile nutrientsAndMetabolism
          annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
        Physiomodel.Electrolytes.IO_Bus.InputFromFile electrolytes
          annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
        Physiomodel.Hormones.IO_Bus.InputFromFile hormones
          annotation (Placement(transformation(extent={{40,6},{60,26}})));
        Physiomodel.Nerves.IO_Bus.InputFromFile nerves
          annotation (Placement(transformation(extent={{74,38},{94,58}})));
        Physiomodel.Setup.IO_Bus.InputFromFile     setup
          annotation (Placement(transformation(extent={{-16,-104},{4,-84}})));
        Physiomodel.Water.IO_Bus.InputFromFile water
          annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
        Physiomodel.Proteins.IO_Bus.InputFromFile proteins
          annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
        Physiomodel.Status.TissuesFitness status
          annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
        Physiomodel.Gases.IO_Bus.InputFromFile gases
          annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
        Physiomodel.Heat.IO_Bus.InputFromFile heat
          annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
      Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{30,-46},{44,-32}}), iconTransformation(
              extent={{-40,-20},{0,20}})));
      Physiomodel.Status.IO_Bus.OutputComparison outputComparison
        annotation (Placement(transformation(extent={{72,-74},{92,-54}})));
      equation
        connect(setup.busConnector,hormones. busConnector) annotation (Line(
            points={{-6,-94},{-6,16},{50,16}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,proteins. busConnector) annotation (Line(
            points={{-6,-94},{-6,-18},{-38,-18}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                      annotation (Line(
            points={{-6,-94},{-6,83},{50,83}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
          annotation (Line(
            points={{-6,-94},{-6,70},{-78,70}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,water. busConnector) annotation (Line(
            points={{-6,-94},{-6,4},{-76,4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nerves. busConnector) annotation (Line(
            points={{-6,-94},{-6,48},{84,48}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector,setup. busConnector)         annotation (Line(
            points={{43.2,-60.8},{-6,-60.8},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
            points={{84,-24},{-6,-24},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(gases.busConnector,setup. busConnector) annotation (Line(
            points={{-66,-54},{-6,-54},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(heat.busConnector,setup. busConnector) annotation (Line(
            points={{-38,40},{-6,40},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector, busConnector) annotation (Line(
            points={{43.2,-60.8},{37,-60.8},{37,-39}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
      connect(status.busConnector, outputComparison.busConnector) annotation (
          Line(
          points={{43.2,-60.8},{62,-60.8},{62,-64},{82,-64}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      end Status_test;

      model Status_test_SI
        import Physiomodel;
      Physiomodel.CardioVascular.IO_Bus.InputFromFile_SI cardioVascularSystem
          annotation (Placement(transformation(extent={{40,72},{60,94}})));
        Physiomodel.Metabolism.IO_Bus.InputFromFile nutrientsAndMetabolism
          annotation (Placement(transformation(extent={{-88,60},{-68,80}})));
        Physiomodel.Electrolytes.IO_Bus.InputFromFile_SI electrolytes
          annotation (Placement(transformation(extent={{74,-34},{94,-14}})));
        Physiomodel.Hormones.IO_Bus.InputFromFile_SI hormones
          annotation (Placement(transformation(extent={{40,6},{60,26}})));
        Physiomodel.Nerves.IO_Bus.InputFromFile_SI nerves
          annotation (Placement(transformation(extent={{74,38},{94,58}})));
        Physiomodel.Setup.IO_Bus.InputFromFile_SI     setup
          annotation (Placement(transformation(extent={{-16,-104},{4,-84}})));
        Physiomodel.Water.IO_Bus.InputFromFile_SI water
          annotation (Placement(transformation(extent={{-86,-6},{-66,14}})));
        Physiomodel.Proteins.IO_Bus.InputFromFile_SI proteins
          annotation (Placement(transformation(extent={{-48,-28},{-28,-8}})));
        Physiomodel.Status.TissuesFitness status
          annotation (Placement(transformation(extent={{42,-80},{62,-60}})));
        Physiomodel.Gases.IO_Bus.InputFromFile_SI gases
          annotation (Placement(transformation(extent={{-76,-64},{-56,-44}})));
        Physiomodel.Heat.IO_Bus.InputFromFile_SI heat
          annotation (Placement(transformation(extent={{-28,30},{-48,50}})));
      Physiolibrary.Types.BusConnector busConnector annotation (Placement(
            transformation(extent={{30,-46},{44,-32}}), iconTransformation(
              extent={{-40,-20},{0,20}})));
      Physiomodel.Status.IO_Bus.OutputComparison_SI outputComparison_SI
        annotation (Placement(transformation(extent={{74,-76},{94,-56}})));
      equation
        connect(setup.busConnector,hormones. busConnector) annotation (Line(
            points={{-6,-94},{-6,16},{50,16}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,proteins. busConnector) annotation (Line(
            points={{-6,-94},{-6,-18},{-38,-18}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,cardioVascularSystem. busConnector)
                                                      annotation (Line(
            points={{-6,-94},{-6,83},{50,83}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nutrientsAndMetabolism. busConnector)
          annotation (Line(
            points={{-6,-94},{-6,70},{-78,70}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,water. busConnector) annotation (Line(
            points={{-6,-94},{-6,4},{-76,4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(setup.busConnector,nerves. busConnector) annotation (Line(
            points={{-6,-94},{-6,48},{84,48}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector,setup. busConnector)         annotation (Line(
            points={{43.2,-60.8},{-6,-60.8},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(electrolytes.busConnector,setup. busConnector) annotation (Line(
            points={{84,-24},{-6,-24},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(gases.busConnector,setup. busConnector) annotation (Line(
            points={{-66,-54},{-6,-54},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(heat.busConnector,setup. busConnector) annotation (Line(
            points={{-38,40},{-6,40},{-6,-94}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(status.busConnector, busConnector) annotation (Line(
            points={{43.2,-60.8},{37,-60.8},{37,-39}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
      connect(status.busConnector, outputComparison_SI.busConnector)
        annotation (Line(
          points={{43.2,-60.8},{64,-60.8},{64,-66},{84,-66}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
      end Status_test_SI;
    end IO_Bus;

    annotation (Documentation(revisions="<html>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p>Author:</p></td>
<td><p>Marek Matejak</p></td>
</tr>
<tr>
<td><p>License:</p></td>
<td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
</tr>

<tr>
<td><p>Date of:</p></td>
<td><p>2008-2015</p></td>
</tr>
<tr>
<td><p>References:</p></td>
<td><p>Tom Coleman: HumMod 1.6, University of Mississippi Medical Center</p></td>
</tr>
</table>
<p>Copyright &copy; 2008-2015 Marek Matejak, Charles University in Prague.</p>
</html>"));
  end Status;


  annotation (uses(Modelica(version="3.2.1"), Physiolibrary(version="2.3.1")),                           Documentation(revisions="<html>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p>Author:</p></td>
<td><p>Marek Matejak</p></td>
</tr>
<tr>
<td><p>License:</p></td>
<td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
</tr>
</table>
<p><br>Copyright &copy; 2008-2015 Marek Matejak. All rights reserved.</p>
</html>"),
  version="1.0.0");
end Physiomodel;
