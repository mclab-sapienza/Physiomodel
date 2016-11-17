within Physiomodel.CardioVascular.Blood;
model RedCells2
    extends Physiolibrary.Icons.RedCells;
    Physiolibrary.Blocks.Factors.SplineLag      EPOEffect(
    HalfTime=3*86400*Modelica.Math.log(2),
    data={{0.0,0.0,0},{1.3,1.0,1.0},{4.0,4.0,0}},
    stateName="[EPO]Delay.Effect",
    UsePositiveLog10=true,
    Xscale=1e3) "20 miu/ml = 20e3 iu/m3"
    annotation (Placement(transformation(extent={{-46,-16},{-26,4}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-88,58},{-68,78}})));
    Physiolibrary.Blocks.Math.FractionGain
                          H2O(f=0.66)
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
    origin={54,-84})));
    Hormones.EPO EPO
    annotation (Placement(transformation(extent={{-74,-16},{-54,4}})));
    Physiolibrary.Population.Sources.Growth transfusion(useChangeInput=true)
    annotation (Placement(transformation(extent={{-46,-52},{-26,-32}})));
    Physiolibrary.Population.Sources.Growth erythropoiesis(useChangeInput=
    true)
    annotation (Placement(transformation(extent={{-46,-30},{-26,-10}})));
    Physiolibrary.Population.Sources.Loss hemorrhage(useChangeInput=true)
    annotation (Placement(transformation(extent={{58,-32},{78,-12}})));
    Physiolibrary.Population.Components.Mortality mortality(LifeTime(
    displayUnit="d") = 10368000)
    annotation (Placement(transformation(extent={{58,-52},{78,-32}})));
    Physiolibrary.Population.Components.Population erythrocytes(
    population_start=12e12,
    NominalPopulation=1e12,
    NominalPopulationChange=1e6)
    "red cell count (with density of 5e6 per one uL)"
    annotation (Placement(transformation(extent={{4,-42},{24,-22}})));
    Modelica.Blocks.Math.Gain RBCVol(k=2.4e-3/12e12) "12e12 cells == 2.4 L"
    annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={30,-76})));
    Physiolibrary.Types.Constants.PopulationChangeConst RBCBaseSecretionRate(
    k=1.16e6) "13.7 ml/day (12e12 cells == 2.4 L)"
    annotation (Placement(transformation(extent={{-50,8},{-42,16}})));
    Modelica.Blocks.Math.Gain RBCVolToCells(k=12e12/2.4e-3)
    "12e12 cells == 2.4 L" annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    origin={-58,-36})));
    Modelica.Blocks.Math.Gain RBCVol2(k=12e12/2.4e-3)
    "12e12 cells == 2.4 L" annotation (Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=270,
    origin={68,0})));
equation
    connect(H2O.y, busConnector.RBCH2O_Vol) annotation (Line(
        points={{58.4,-84},{98,-84},{98,68},{-78,68}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(EPOEffect.u, EPO.Erythropoetin) annotation (Line(
      points={{-44,-6},{-54,-6}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector, EPO.busConnector) annotation (Line(
      points={{-78,68},{-78,-12},{-72,-12}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None));
    connect(EPOEffect.y, erythropoiesis.populationChange) annotation (Line(
      points={{-36,-10},{-36,-16}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(erythropoiesis.port_b, erythrocytes.port) annotation (Line(
      points={{-26,-20},{-6,-20},{-6,-32},{14,-32}},
      color={0,127,127},
      thickness=1,
      smooth=Smooth.None));
    connect(transfusion.port_b, erythrocytes.port) annotation (Line(
      points={{-26,-42},{-6,-42},{-6,-32},{14,-32}},
      color={0,127,127},
      thickness=1,
      smooth=Smooth.None));
    connect(erythrocytes.port, hemorrhage.port_a) annotation (Line(
      points={{14,-32},{34,-32},{34,-22},{58,-22}},
      color={0,127,127},
      thickness=1,
      smooth=Smooth.None));
    connect(erythrocytes.port, mortality.port_a) annotation (Line(
      points={{14,-32},{34,-32},{34,-42},{58.2,-42}},
      color={0,127,127},
      thickness=1,
      smooth=Smooth.None));
    connect(RBCVol.y, H2O.u) annotation (Line(
      points={{34.4,-76},{42,-76},{42,-84},{49.2,-84}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(erythrocytes.population, RBCVol.u) annotation (Line(
      points={{20,-42},{20,-76},{25.2,-76}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(RBCVol.y, busConnector.RBCVol_Vol) annotation (Line(
      points={{34.4,-76},{98,-76},{98,68},{-78,68}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(RBCBaseSecretionRate.y, EPOEffect.yBase) annotation (Line(
      points={{-41,12},{-36,12},{-36,-4}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(transfusion.populationChange, RBCVolToCells.y) annotation (Line(
      points={{-36,-38},{-36,-36},{-53.6,-36}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.Transfusion_RBCRate, RBCVolToCells.u) annotation (
      Line(
      points={{-78,68},{-78,-36},{-62.8,-36}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.Hemorrhage_RBCRate, RBCVol2.u) annotation (Line(
      points={{-78,68},{68,68},{68,4.8}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(RBCVol2.y, hemorrhage.populationChange) annotation (Line(
      points={{68,-4.4},{68,-18}},
      color={0,0,127},
      smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(
            preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
          graphics={                  Text(
            extent={{-136,-46},{148,-68}},
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
end RedCells2;