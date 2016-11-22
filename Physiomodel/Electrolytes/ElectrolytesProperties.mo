within Physiomodel.Electrolytes;

model ElectrolytesProperties
    extends Physiolibrary.Icons.Electrolytes;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-106,88},{-88,106}}), iconTransformation(
        extent={{-120,20},{-80,60}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst
                                              OsmCell_OtherCations(k=0.692)
    annotation (Placement(transformation(extent={{4,-72},{24,-52}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst
                                              CellElectrolytesMass(k=1)
    annotation (Placement(transformation(extent={{6,-96},{26,-76}})));
    Modelica.Blocks.Math.Add3 Cells(
    k3=-1,
    k1=2,
    k2=2)  annotation (Placement(transformation(extent={{48,-68},{68,-48}})));
    Physiolibrary.Types.Constants.AmountOfSubstanceConst
                                              OsmECFV_OtherAnions(k=0.373)
    annotation (Placement(transformation(extent={{-84,-10},{-74,0}})));
    Modelica.Blocks.Math.Sum ECF(nin=8)
    annotation (Placement(transformation(extent={{-64,-6},{-44,14}})));
    Modelica.Blocks.Math.Sum BloodCations(nin=2,
    k=ones(2)*Modelica.Constants.F,
    y(unit="C/m3"))
    annotation (Placement(transformation(extent={{-76,38},{-56,58}})));
    Modelica.Blocks.Math.Feedback lessPO4
    annotation (Placement(transformation(extent={{76,74},{96,54}})));
    Modelica.Blocks.Math.Feedback lessSO4
    annotation (Placement(transformation(extent={{76,92},{96,72}})));
    Modelica.Blocks.Math.Add3 AnFlow(
    k1=Modelica.Constants.F,
    k2=Modelica.Constants.F,
    k3=2*Modelica.Constants.F)
    annotation (Placement(transformation(extent={{-80,-72},{-60,-52}})));
    Modelica.Blocks.Math.Add3 CatFlow(
    k1=Modelica.Constants.F,
    k2=Modelica.Constants.F,
    k3=Modelica.Constants.F)
    annotation (Placement(transformation(extent={{-80,-44},{-60,-24}})));
    Modelica.Blocks.Math.Feedback CollectingDuct_NetSumCats(y(unit="C"))
    annotation (Placement(transformation(extent={{-44,-44},{-24,-24}})));
    Modelica.Blocks.Math.Sum StrongAnions(nin=5,
    k=ones(5)*Modelica.Constants.F,
    y(unit="C/m3")) "{KA,PO4,SO4,Lac,Cl}"
    annotation (Placement(transformation(extent={{-82,70},{-62,90}})));
    Modelica.Blocks.Math.Feedback ECF_SID(y(unit="C/m3", displayUnit="meq/l"))
    "extracellular fluid strong ion difference"   annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        origin={0,64})));
    Modelica.Blocks.Math.Feedback lessCl
    annotation (Placement(transformation(extent={{78,52},{98,32}})));
    Modelica.Blocks.Math.Gain toCharge1(k=Modelica.Constants.F)
    annotation (Placement(transformation(extent={{60,52},{68,60}})));
    Modelica.Blocks.Math.Gain toCharge2(k=2*Modelica.Constants.F)
    annotation (Placement(transformation(extent={{60,84},{68,92}})));
    Modelica.Blocks.Math.Gain toCharge3(k=Modelica.Constants.F)
    annotation (Placement(transformation(extent={{58,66},{66,74}})));
    Physiolibrary.Types.Constants.OneConst                  const
    annotation (Placement(transformation(extent={{24,12},{34,22}})));
    Modelica.Blocks.Math.Feedback Pct      annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        origin={47,17})));
    Modelica.Blocks.Math.Product plasma_part(y(unit="C/m3", displayUnit=
        "mEq/l")) annotation (Placement(transformation(
      extent={{-5,-5},{5,5}},
      origin={69,17})));
    Modelica.Blocks.Math.Product ery_part(y(unit="C/m3", displayUnit=
        "mEq/l"))                       annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        origin={69,-3})));
    Modelica.Blocks.Math.Add blood_SID(y(unit="C/m3", displayUnit="meq/l"))
    annotation (Placement(transformation(extent={{80,0},{90,10}})));
    Physiolibrary.Types.Constants.VolumeDensityOfChargeConst _RBC_SID(k=
      3184016.2167) "cations expect potassium"
    annotation (Placement(transformation(extent={{48,-10},{56,-2}})));
equation
    connect(busConnector.KCell_Mass, Cells.u1)  annotation (Line(
    points={{-97,97},{-96,97},{-96,-86},{-22,-86},{-22,-50},{46,-50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(OsmCell_OtherCations.y, Cells.u2)  annotation (Line(
    points={{26.5,-62},{28,-62},{28,-58},{46,-58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(CellElectrolytesMass.y, Cells.u3)  annotation (Line(
    points={{28.5,-86},{31.5,-86},{31.5,-66},{46,-66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.NaPool_mass, ECF.u[1])  annotation (Line(
    points={{-97,97},{-96,97},{-96,12},{-66,12},{-66,2.25}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.KPool_mass, ECF.u[2])  annotation (Line(
    points={{-97,97},{-96,97},{-96,8},{-66,8},{-66,2.75}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.ClPool_mass, ECF.u[3])  annotation (Line(
    points={{-97,97},{-97,10},{-66,10},{-66,3.25}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(OsmECFV_OtherAnions.y, ECF.u[8])  annotation (Line(
    points={{-72.75,-5},{-66,-5},{-66,5.75}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.NaPool, BloodCations.u[1]) annotation (Line(
    points={{-97,97},{-97,64},{-78,64},{-78,47}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.KPool, BloodCations.u[2]) annotation (Line(
    points={{-97,97},{-96,97},{-96,66},{-78,66},{-78,49}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(lessSO4.y, busConnector.BloodIons_StrongAnionsLessSO4)   annotation (Line(
    points={{95,82},{100,82},{100,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BloodIons_StrongAnionsLessPO4, lessPO4.y)   annotation (
    Line(
    points={{-97,97},{100,97},{100,64},{95,64}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(CollectingDuct_NetSumCats.y, busConnector.CollectingDuct_NetSumCats)
    annotation (Line(
    points={{-25,-34},{100,-34},{100,96},{-96,96},{-96,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(CatFlow.y, CollectingDuct_NetSumCats.u1) annotation (Line(
    points={{-59,-34},{-42,-34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AnFlow.y, CollectingDuct_NetSumCats.u2) annotation (Line(
    points={{-59,-62},{-34,-62},{-34,-42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CD_NH4_Outflow, CatFlow.u1)
                                         annotation (Line(
    points={{-97,97},{-96,97},{-96,-26},{-82,-26}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.CD_PO4_Outflow, AnFlow.u2) annotation (Line(
    points={{-97,97},{-96,97},{-96,-62},{-82,-62}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.CD_SO4_Outflow, AnFlow.u3) annotation (Line(
    points={{-97,97},{-96,97},{-96,-70},{-82,-70}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(BloodCations.y, ECF_SID.u1) annotation (Line(
    points={{-55,48},{-16,48},{-16,64},{-8,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PO4Pool, StrongAnions.u[2])
    annotation (Line(
    points={{-97,97},{-96,97},{-96,79.2},{-84,79.2}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.SO4Pool, StrongAnions.u[3])
    annotation (Line(
    points={{-97,97},{-97,80},{-84,80}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ClPool, StrongAnions.u[5])
    annotation (Line(
    points={{-97,97},{-94,97},{-94,80},{-84,80},{-84,81.6}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.PO4Pool_Osmoles, ECF.u[4]) annotation (Line(
    points={{-97,97},{-96,97},{-96,4},{-68,4},{-68,3.75},{-66,3.75}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.SO4Pool_Osmoles, ECF.u[5]) annotation (Line(
    points={{-97,97},{-96,97},{-96,14},{-66,14},{-66,4.25}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.LacPool, StrongAnions.u[4])
    annotation (Line(
    points={{-97,97},{-97,80.8},{-84,80.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(ECF.y, busConnector.OsmECFV_Electrolytes)
    annotation (Line(
    points={{-43,4},{-30,4},{-30,-14},{-97,-14},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Cells.y, busConnector.OsmCell_Electrolytes)
    annotation (Line(
    points={{69,-58},{100,-58},{100,96},{-97,96},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.KAPool, StrongAnions.u[1])
    annotation (Line(
    points={{-97,97},{-97,78.4},{-84,78.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector.CD_KA_Outflow, AnFlow.u1)                annotation (
    Line(
    points={{-97,97},{-97,-54},{-82,-54}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.KAPool_Osmoles, ECF.u[7])                annotation (
    Line(
    points={{-97,97},{-96,97},{-96,16},{-66,16},{-66,5.25}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(BloodCations.y, busConnector.BloodIons_Cations)
    annotation (Line(
    points={{-55,48},{-16,48},{-16,94},{-97,94},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(busConnector.CD_Na_Outflow, CatFlow.u2) annotation (Line(
    points={{-97,97},{-97,-34},{-82,-34}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_K_Outflow, CatFlow.u3) annotation (Line(
    points={{-97,97},{-97,-42},{-82,-42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(BloodCations.y, busConnector.BloodCations) annotation (Line(
    points={{-55,48},{-16,48},{-16,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(StrongAnions.y, busConnector.BloodIons_StrongAnions) annotation (
    Line(
    points={{-61,80},{100,80},{100,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(StrongAnions.y, lessSO4.u1)   annotation (Line(
    points={{-61,80},{74,80},{74,82},{78,82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(StrongAnions.y, lessPO4.u1)   annotation (Line(
    points={{-61,80},{74,80},{74,64},{78,64}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(StrongAnions.y, ECF_SID.u2) annotation (Line(
    points={{-61,80},{0,80},{0,72}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(StrongAnions.y, lessCl.u1) annotation (Line(
    points={{-61,80},{74,80},{74,42},{80,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(lessCl.y, busConnector.BloodIons_StrongAnionsLessCl) annotation (
    Line(
    points={{97,42},{100,42},{100,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(toCharge1.y, lessCl.u2) annotation (Line(
    points={{68.4,56},{76,56},{76,50},{88,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ClPool_conc_per_liter, toCharge1.u) annotation (Line(
    points={{-97,97},{50,97},{50,56},{59.2,56}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(lessSO4.u2, toCharge2.y) annotation (Line(
    points={{86,90},{78,90},{78,88},{68.4,88}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.SO4Pool_conc_per_liter, toCharge2.u) annotation (Line(
    points={{-97,97},{50,97},{50,88},{59.2,88}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(lessPO4.u2, toCharge3.y) annotation (Line(
    points={{86,72},{76,72},{76,70},{66.4,70}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PO4Pool_conc_per_liter, toCharge3.u) annotation (Line(
    points={{-97,97},{48,97},{48,70},{57.2,70}},
    color={255,0,0},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(ECF_SID.y, busConnector.Plasma_SID) annotation (Line(
    points={{9,64},{36,64},{36,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(const.y, Pct.u1) annotation (Line(
    points={{35.25,17},{43,17}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ery_part.y, blood_SID.u2) annotation (Line(
    points={{74.5,-3},{74.5,2},{79,2}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(plasma_part.y, blood_SID.u1) annotation (Line(
    points={{74.5,17},{74.5,8},{79,8}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ECF_SID.y, plasma_part.u1) annotation (Line(
    points={{9,64},{40,64},{40,26},{63,26},{63,20}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Pct.y, plasma_part.u2) annotation (Line(
    points={{51.5,17},{51.5,14},{63,14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.BloodVol_Hct, Pct.u2) annotation (Line(
    points={{-97,97},{-97,20},{10,20},{10,0},{47,0},{47,13}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.BloodVol_Hct,ery_part. u1) annotation (Line(
    points={{-97,97},{-97,20},{10,20},{10,0},{63,0}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(blood_SID.y, busConnector.Blood_SID) annotation (Line(
    points={{90.5,5},{100,5},{100,97},{-97,97}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(_RBC_SID.y, ery_part.u2) annotation (Line(
    points={{57,-6},{63,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.LacPool_Mass, ECF.u[6]) annotation (Line(
    points={{-97,97},{-97,24},{-96,24},{-96,6},{-66,6},{-66,4.75}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    annotation ( Icon(coordinateSystem(preserveAspectRatio=true,
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
end ElectrolytesProperties;