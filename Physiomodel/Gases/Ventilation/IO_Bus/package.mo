within Physiomodel.Gases.Ventilation;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        //  extends Physiolibrary.Icons.Ventilation;

        T.Frequency RespiratoryCenter_RespRate(varName="RespiratoryCenter-Output.Rate")
          "Respiration rate."
        annotation (Placement(transformation(extent={{-44,-62},{-38,-56}})));
        T.Fraction RespiratoryCenter_MotorNerveActivity(varName="RespiratoryCenter-Output.MotorNerveActivity")
          "Neural activity from respiratory center to respiratory muscle."
        annotation (Placement(transformation(extent={{-44,-72},{-38,-66}})));
        T.VolumeFlowRate AlveolarVentilation_Env(varName=
              "AlveolarVentilation_Env")
          annotation (Placement(transformation(extent={{-22,76},{-16,82}})));
        T.Fraction Bronchi_Dilution(varName="Bronchi.Dilution")
        annotation (Placement(transformation(extent={{-44,-24},{-38,-18}})));
        T.VolumeFlowRate BreathingTotalVentilation(
                                  varName="Breathing.TotalVentilation")
        annotation (Placement(transformation(extent={{-34,10},{-28,16}})));
    equation

        connect(RespiratoryCenter_MotorNerveActivity.y, busConnector.RespiratoryCenter_MotorNerveActivity) annotation (Line(
         points={{-37.7,-69},{90,-69},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(RespiratoryCenter_RespRate.y, busConnector.RespiratoryCenter_RespRate) annotation (Line(
         points={{-37.7,-59},{90,-59},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          connect(Bronchi_Dilution.y, busConnector.BronchiDilution) annotation (
              Line(
              points={{-37.7,-21},{26,-21},{26,-2},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
          connect(BreathingTotalVentilation.y, busConnector.BreathingTotalVentilation)
                                                                    annotation (
              Line(
              points={{-27.7,13},{15.65,13},{15.65,-2},{90,-2}},
              color={0,0,127},
              smooth=Smooth.None), Text(
              string="%second",
              index=1,
              extent={{6,3},{6,3}}));
        connect(AlveolarVentilation_Env.y, busConnector.AlveolarVentilation_Env)
          annotation (Line(
            points={{-15.7,79},{90,79},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
    end Variables;
end IO_Bus;