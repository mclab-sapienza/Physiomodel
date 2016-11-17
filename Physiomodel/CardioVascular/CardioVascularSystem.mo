within Physiomodel.CardioVascular;
model CardioVascularSystem
    extends Physiolibrary.Icons.CardioVascular;
    //  extends Physiomodel.Library.Utilities.DynamicState(stateName="BloodVol.Vol", initType=Library.Utilities.Init.NoInit);

    Heart.Heart heart
      annotation (Placement(transformation(extent={{0,-6},{26,20}})));
    Circulation.PulmonaryCirculation pulmonaryCirculation
      annotation (Placement(transformation(extent={{2,50},{30,78}})));
    Circulation.SystemicCirculationFullDynamic systemicCirculation
      annotation (Placement(transformation(extent={{-2,-68},{32,-34}})));
    Physiolibrary.Types.BusConnector busConnector
      "signals of organ bood flow resistence" annotation (Placement(
          transformation(extent={{-38,-8},{-16,14}}), iconTransformation(extent=
             {{-100,60},{-60,100}})));
    Blood.RedCells2 redCells(RBCBaseSecretionRate(k(displayUnit="m3/s")))
      annotation (Placement(transformation(extent={{-34,26},{-54,46}})));
    Blood.BloodPropertiesBase bloodProperties
          annotation (Placement(transformation(extent={{-36,-34},{-56,-14}})));

        /*initial equation
      if STEADY then
         bloodProperties.feedback.y = 0;
      end if;
    */
equation
    connect(busConnector, pulmonaryCirculation.busConnector) annotation (
      Line(
      points={{-27,3},{-26,3},{-26,71},{2,71}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(busConnector, systemicCirculation.busConnector) annotation (
      Line(
      points={{-27,3},{-26,3},{-26,-44.2},{-2.34,-44.2}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(busConnector, redCells.busConnector)    annotation (Line(
      points={{-27,3},{-26,3},{-26,42.8},{-36.2,42.8}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(busConnector, bloodProperties.busConnector) annotation (Line(
      points={{-27,3},{-26,3},{-26,-17.2},{-36.6,-17.2}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(busConnector, heart.busConnector) annotation (Line(
      points={{-27,3},{-25.5,3},{-25.5,3.1},{0,3.1}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None));
    connect(heart.fromLeftVentricle, systemicCirculation.q_in) annotation (
      Line(
      points={{16.12,3.36},{16.12,18},{32,18},{32,-51}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(systemicCirculation.q_out, heart.rightAtrium) annotation (Line(
      points={{-2,-51},{-4,-51},{-4,12.2},{5.72,12.2}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(pulmonaryCirculation.q_in, heart.fromRightVentricle) annotation (
      Line(
      points={{1.72,64},{-4,64},{-4,18},{8.06,18},{8.06,3.36}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(pulmonaryCirculation.q_out, heart.leftAtrium) annotation (Line(
      points={{30,64},{36,64},{36,12.46},{18.72,12.46}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));

    //  stateValue = bloodProperties.BloodVolume1.y;

      annotation ( Documentation(info="<html>
    <p><h4><font color=\"#008000\">Cardiovascular system</font></h4></p>
    <p><font style=\"color: #008000; \">Connect heart with pulmonary and systemic part. This connection contains pressures and blood flows before and after heart.</font></p>
    <p><font style=\"color: #008000; \">Output signal variables about blood volume between lungs capilaries and systemic tissue capilaries are used in gass transport submodels like O2 or CO2.</font></p>
    <p><font style=\"color: #008000; \">Output signal Vesseles_V0 is used for systemic veins collapsing in massive blood lost.</font></p>
    <p><font style=\"color: #008000; \">The blood properties convert known variables values to another meanings (haematocrit, viscosity, ..).</font></p>
    <p><font style=\"color: #008000; \">Red cells contains volume, loss and gains all red blood cells.</font></p>
    </html>", revisions="<html>

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

    </html>"),
            Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},{
                    100,100}}), graphics={Text(
                  extent={{-116,-96},{126,-130}},
                  lineColor={0,0,255},
                  textString="%name")}));
end CardioVascularSystem;