within Physiomodel.Electrolytes;
model Electrolytes
    extends Physiolibrary.Icons.Electrolytes;
    Sodium.Sodium sodium
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Potassium.Potassium potassium
    annotation (Placement(transformation(extent={{-44,60},{-24,80}})));
    Chloride.Chloride2 chloride
    annotation (Placement(transformation(extent={{-10,60},{10,80}})));
    Phosphate.Phosphate3 phosphate
    annotation (Placement(transformation(extent={{-44,16},{-24,36}})));
    Sulphate.Sulphate2 sulphate
    annotation (Placement(transformation(extent={{-10,16},{10,36}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{82,36},{106,60}}), iconTransformation(extent=
      {{-120,20},{-80,60}})));
    ElectrolytesProperties electrolytesProperties
    annotation (Placement(transformation(extent={{48,18},{68,38}})));
    NH4.Ammonium ammonium
    annotation (Placement(transformation(extent={{-86,16},{-66,36}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst CD_Ca_Outflow(k=2e-07)
    "calcium outflow to urine needed for urine acid-base"
    annotation (Placement(transformation(extent={{-54,-22},{-34,-2}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst CD_Mg_Outflow(k=5e-08)
    "magnesium outflow to urine needed for urine acid-base"
    annotation (Placement(transformation(extent={{-54,-44},{-34,-24}})));

    AcidBase.AcidBase acidBase
    annotation (Placement(transformation(extent={{42,72},{62,92}})));
equation
    connect(sodium.busConnector, busConnector) annotation (Line(
    points={{-62,78},{-62,48},{94,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, potassium.busConnector) annotation (Line(
    points={{94,48},{-26,48},{-26,78}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, chloride.busConnector) annotation (Line(
    points={{94,48},{8.1,48},{8.1,78.1}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, electrolytesProperties.busConnector) annotation (
    Line(
    points={{94,48},{48,48},{48,32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(sulphate.busConnector, busConnector) annotation (Line(
    points={{8,34},{8,48},{94,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(phosphate.busConnector, busConnector) annotation (Line(
    points={{-26,34},{-26,48},{94,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(ammonium.busConnector, busConnector) annotation (Line(
    points={{-67.9,34.1},{-67.9,48},{94,48}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));

    connect(CD_Ca_Outflow.y, busConnector.CD_Ca_Outflow) annotation (Line(
    points={{-31.5,-12},{94,-12},{94,48}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CD_Mg_Outflow.y, busConnector.CD_Mg_Outflow) annotation (Line(
    points={{-31.5,-34},{94,-34},{94,48}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(busConnector, acidBase.busConnector) annotation (Line(
    points={{94,48},{74,48},{74,82.2},{52,82.2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None));
    annotation (                                        Icon(coordinateSystem(preserveAspectRatio=true,
      extent={{-100,-100},{100,100}}), graphics={               Text(
      extent={{-122,-58},{120,-92}},
      lineColor={0,0,255},
      textString="%name")}),
    Documentation(revisions="<html>

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
    </tr><tr>
    <td></td>
    <td>Noriaki Ikeda: A model of overall regulation of body fluids (1979), Kitasato University</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Electrolytes;