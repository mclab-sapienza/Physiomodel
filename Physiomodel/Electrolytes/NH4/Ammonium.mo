within Physiomodel.Electrolytes.NH4;
model Ammonium
    extends Physiolibrary.Icons.Amonium;
    Physiolibrary.Blocks.Factors.Spline PT_NH3_AcuteEffect(data={{7.00,2.0,0},
    {7.42,1.0,-3.0},{7.80,0.0,0}})
    "marek: normal pH corrected from 7.45 to 7.42"
    annotation (Placement(transformation(extent={{-60,52},{-40,72}})));
    Physiolibrary.Blocks.Factors.SplineLag PT_NH3_ChronicEffect(
    HalfTime=3*86400*Modelica.Math.log(2),
    stateName="PT_NH3.ChronicPhEffect",
    data={{7.00,3.0,0},{7.42,1.0,-4.0},{7.80,0.0,0}})
    "marek: normal pH corrected from 7.45 to 7.42"
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    Physiolibrary.Blocks.Factors.Spline CD_NH4_PhOnFlux(data={{7.00,1.0,0},{
    7.42,0.6,-2.0},{7.80,0.0,0}})
    "marek: normal pH corrected from 7.45 to 7.42"
    annotation (Placement(transformation(extent={{-60,24},{-40,44}})));
    Physiolibrary.Types.Constants.MolarFlowRateConst
    electrolytesFlowConstant(k=6.6666666666667e-07)
    annotation (Placement(transformation(extent={{-68,74},{-56,86}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-98,42},{-86,54}}), iconTransformation(
      extent={{62,62},{100,100}})));
    Physiolibrary.Blocks.Factors.Spline ChloridePoolEffect(data={{0.00,0.0,0},
    {80,1.0,0.0}})
    "electroneutrality does not allow to extract cation without anion"
    annotation (Placement(transformation(extent={{-60,-2},{-40,18}})));
equation

    connect(PT_NH3_AcuteEffect.y, PT_NH3_ChronicEffect.yBase) annotation (
    Line(
    points={{-50,58},{-50,52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(PT_NH3_ChronicEffect.y, CD_NH4_PhOnFlux.yBase) annotation (Line(
    points={{-50,46},{-50,36}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(electrolytesFlowConstant.y, PT_NH3_AcuteEffect.yBase) annotation (
    Line(
    points={{-54.5,80},{-50,80},{-50,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.Artys_pH, PT_NH3_AcuteEffect.u) annotation (Line(
    points={{-92,48},{-76,48},{-76,62},{-58,62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Artys_pH, PT_NH3_ChronicEffect.u) annotation (Line(
    points={{-92,48},{-76,48},{-76,50},{-58,50}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.Artys_pH, CD_NH4_PhOnFlux.u) annotation (Line(
    points={{-92,48},{-76,48},{-76,34},{-58,34}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(CD_NH4_PhOnFlux.y, ChloridePoolEffect.yBase) annotation (Line(
    points={{-50,30},{-50,10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ClPool, ChloridePoolEffect.u) annotation (Line(
    points={{-92,48},{-92,8},{-58,8}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ChloridePoolEffect.y, busConnector.CD_NH4_Outflow) annotation (
    Line(
    points={{-50,4},{-50,-8},{-92,-8},{-92,48}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={              Text(
        extent={{-112,-102},{108,-128}},
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
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Ammonium;