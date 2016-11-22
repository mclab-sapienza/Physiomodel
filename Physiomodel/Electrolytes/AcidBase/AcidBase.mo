within Physiomodel.Electrolytes.AcidBase;
model AcidBase
    extends Physiolibrary.Icons.AcidBase;
    BloodPhMeassure artysPH(_BEox(start=-0.177))
    annotation (Placement(transformation(extent={{86,28},{58,56}})));
    BloodPhMeassure veinsPH(_cTHox(start=0), pH(start=7.37))
    annotation (Placement(transformation(extent={{-56,28},{-84,56}})));

    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-44,72},{-4,112}}), iconTransformation(
      extent={{-20,-18},{20,22}})));

    //initial equation
    //  ArtysPh.pH=7.4;

    BloodPhMeassure lungsPH
    annotation (Placement(transformation(extent={{28,28},{0,56}})));
    Tissues.Bloods tissues_blood_acidity
    annotation (Placement(transformation(extent={{-6,-96},{14,-76}})));
    Tissues.Cells tissues_intracellular
    annotation (Placement(transformation(extent={{46,-96},{66,-76}})));
    Tissues.Interstitia tissues_interstitial_acidity
    annotation (Placement(transformation(extent={{20,-96},{40,-76}})));
    Physiomodel.Electrolytes.AcidBase.NormalSID normalSID
    annotation (Placement(transformation(extent={{-38,-38},{-66,2}})));
    Modelica.Blocks.Math.Feedback BEox(y(unit="C/m3", displayUnit="mEq/l"))
    annotation (Placement(transformation(extent={{-2,-12},{18,8}})));
    Urine pHUCalculation2_1
    annotation (Placement(transformation(extent={{26,-72},{80,-18}})));
    Buffers.Albumin albumin
    annotation (Placement(transformation(extent={{-86,-68},{-66,-48}})));
    Buffers.Globulins globulins
    annotation (Placement(transformation(extent={{-86,-90},{-66,-70}})));
    Modelica.Blocks.Math.Add add(k1=-1, k2=-1)
    annotation (Placement(transformation(extent={{-60,-92},{-50,-82}})));
equation
    connect(busConnector.O2Artys_sO2,artysPH. sO2)        annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,60},{64,60},{64,57.4},{63.6,
      57.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,6},{-6,6}}));
    connect(busConnector.O2Veins_sO2, veinsPH.sO2)         annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,60},{-78,60},{-78,57.4},{
      -78.4,57.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,6},{-6,6}}));
    connect(busConnector.ctAlb,artysPH. ctAlb)    annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,42},{59.4,42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CO2Artys_cHCO3,artysPH. cHCO3)    annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,53.2},{59.4,53.2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctAlb, veinsPH.ctAlb)    annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,42},{-82.6,42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CO2Veins_cHCO3, veinsPH.cHCO3)    annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,53.2},{-82.6,53.2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(artysPH.pH, busConnector.Artys_pH)    annotation (Line(
    points={{74.8,25.2},{74.8,16},{98,16},{98,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-8},{6,-8}}));
    connect(artysPH.pH_ery, busConnector.Artys_pH_ery)    annotation (Line(
    points={{69.2,25.2},{69.2,10},{98,10},{98,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-13},{6,-13}}));
    connect(veinsPH.pH, busConnector.Veins_pH)    annotation (Line(
    points={{-67.2,25.2},{-67.2,16},{-24,16},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-8},{6,-8}}));
    connect(veinsPH.pH_ery, busConnector.Veins_pH_ery)    annotation (Line(
    points={{-72.8,25.2},{-72.8,10},{-24,10},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-13},{6,-13}}));
    connect(busConnector.ctGlb,artysPH. ctGlb) annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,36.4},{59.4,36.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctPO4,artysPH. ctPO4) annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,30.8},{59.4,30.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctGlb, veinsPH.ctGlb) annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,36.4},{-82.6,36.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctPO4, veinsPH.ctPO4) annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,30.8},{-82.6,30.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(artysPH.pH, busConnector.BloodPh_ArtysPh) annotation (Line(
    points={{74.8,25.2},{74.8,16},{98,16},{98,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ctAlb,lungsPH. ctAlb)    annotation (Line(
    points={{-24,92},{-14,92},{-14,42},{1.4,42}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(lungsPH.pH, busConnector.Lung_pH)     annotation (Line(
    points={{16.8,25.2},{16.8,14},{34,14},{34,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-8},{6,-8}}));
    connect(lungsPH.pH_ery, busConnector.Lung_pH_ery)     annotation (Line(
    points={{11.2,25.2},{11.2,8},{34,8},{34,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,-13},{6,-13}}));
    connect(busConnector.ctGlb,lungsPH. ctGlb) annotation (Line(
    points={{-24,92},{-14,92},{-14,36.4},{1.4,36.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctPO4,lungsPH. ctPO4) annotation (Line(
    points={{-24,92},{-14,92},{-14,30.8},{1.4,30.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.O2Lung_sO2,lungsPH. sO2)              annotation (Line(
    points={{-24,92},{-14,92},{-14,57.4},{5.6,57.4}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CO2Lung_cHCO3,lungsPH. cHCO3)              annotation (
    Line(
    points={{-24,92},{-14,92},{-14,53.2},{1.4,53.2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector,tissues_blood_acidity. busConnector)
                                              annotation (Line(
    points={{-24,92},{-24,-80},{-4.8,-80},{-4.8,-79.8333}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(tissues_intracellular.busConnector, busConnector) annotation (
    Line(
    points={{47.2,-76.8},{-24,-76.8},{-24,92}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(busConnector, tissues_interstitial_acidity.busConnector)
    annotation (Line(
    points={{-24,92},{-24,-76.8},{21.2,-76.8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None));
    connect(lungsPH.pH, busConnector.lungs_pH_plasma) annotation (Line(
    points={{16.8,25.2},{16.8,14},{34,14},{34,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(lungsPH.pH_ery, busConnector.lungs_pH_ery) annotation (Line(
    points={{11.2,25.2},{11.2,8},{34,8},{34,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None));

    connect(busConnector.ctHb, veinsPH.ctHb) annotation (Line(
    points={{-24,92},{-24,74},{-100,74},{-100,47.6},{-82.6,47.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctHb, lungsPH.ctHb) annotation (Line(
    points={{-24,92},{-14,92},{-14,47.6},{1.4,47.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctHb, artysPH.ctHb) annotation (Line(
    points={{-24,92},{-24,74},{44,74},{44,47.6},{59.4,47.6}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(busConnector.BloodVol_Hct,normalSID. Hct)        annotation (
    Line(
    points={{-24,92},{-100,92},{-100,-32},{-64.6,-32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.HeatCore_Temp,normalSID. T)        annotation (
    Line(
    points={{-24,92},{-100,92},{-100,-26},{-64.6,-26}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctHb_ery,normalSID. tHb_E)        annotation (Line(
    points={{-24,92},{-100,92},{-100,-20},{-64.6,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctAlb,normalSID. ctAlb)        annotation (Line(
    points={{-24,92},{-100,92},{-100,-2},{-64.6,-2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctGlb,normalSID. ctGlb)        annotation (Line(
    points={{-24,92},{-100,92},{-100,-8},{-64.6,-8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctPO4,normalSID. ctPO4_P)        annotation (Line(
    points={{-24,92},{-100,92},{-100,-14},{-64.6,-14}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(normalSID.NSID,BEox. u2)        annotation (Line(
    points={{-35.2,-30},{-28,-30},{-28,-14},{8,-14},{8,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BEox.y, busConnector.Blood_BEox) annotation (Line(
    points={{17,-2},{88,-2},{88,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(BEox.y, veinsPH.BEox) annotation (Line(
    points={{17,-2},{88,-2},{88,64},{-58.8,64},{-58.8,56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BEox.y, lungsPH.BEox) annotation (Line(
    points={{17,-2},{88,-2},{88,64},{25.2,64},{25.2,56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BEox.y, artysPH.BEox) annotation (Line(
    points={{17,-2},{88,-2},{88,64},{83.2,64},{83.2,56}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CD_Na_Outflow, pHUCalculation2_1.qNa) annotation (
    Line(
    points={{-24,92},{-24,-20.4545},{28.7,-20.4545}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_K_Outflow, pHUCalculation2_1.qK) annotation (Line(
    points={{-24,92},{-24,-26},{28.7,-26},{28.7,-25.3636}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_NH4_Outflow, pHUCalculation2_1.qNH4) annotation (
    Line(
    points={{-24,92},{-24,-30},{28.7,-30},{28.7,-30.2727}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_Cl_Outflow, pHUCalculation2_1.qCl) annotation (
    Line(
    points={{-24,92},{-24,-46},{28.7,-46},{28.7,-45}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_SO4_Outflow, pHUCalculation2_1.qSO4) annotation (
    Line(
    points={{-24,92},{-24,-49.9091},{28.7,-49.9091}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_PO4_Outflow, pHUCalculation2_1.qPO4) annotation (
    Line(
    points={{-24,92},{-24,-54},{28.7,-54},{28.7,-54.8182}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_KA_Outflow, pHUCalculation2_1.qKA) annotation (
    Line(
    points={{-24,92},{-24,-59.7273},{28.7,-59.7273}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CO2Artys_pCO2, pHUCalculation2_1.pCO2) annotation (
    Line(
    points={{-24,92},{-24,-64},{28.7,-64},{28.7,-64.6364}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_H2O_Outflow, pHUCalculation2_1.qH2O) annotation (
    Line(
    points={{-24,92},{-24,-70},{28.7,-70},{28.7,-69.5455}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(pHUCalculation2_1.PHU, busConnector.Urine_pH) annotation (Line(
    points={{80.54,-42.5455},{98,-42.5455},{98,92},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.CD_Mg_Outflow, pHUCalculation2_1.qMg) annotation (
    Line(
    points={{-24,92},{-24,-35.1818},{28.7,-35.1818}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.CD_Ca_Outflow, pHUCalculation2_1.qCa) annotation (
    Line(
    points={{-24,92},{-24,-40.0909},{28.7,-40.0909}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(artysPH.pH, albumin.pH) annotation (Line(
    points={{74.8,25.2},{74.8,-98},{-100,-98},{-100,-52},{-86,-52}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(artysPH.pH, globulins.pH) annotation (Line(
    points={{74.8,25.2},{74.8,-98},{-100,-98},{-100,-74},{-86,-74}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ctAlb, albumin.tAlb) annotation (Line(
    points={{-24,92},{-100,92},{-100,-58},{-86,-58}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.ctGlb, globulins.ctGlb) annotation (Line(
    points={{-24,92},{-100,92},{-100,-82},{-86,-82}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(globulins.y, add.u2) annotation (Line(
    points={{-66,-88},{-64,-88},{-64,-90},{-61,-90}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(albumin.y, add.u1) annotation (Line(
    points={{-66,-66},{-60,-66},{-60,-84},{-61,-84}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(add.y, busConnector.BloodIons_ProteinAnions) annotation (Line(
    points={{-49.5,-87},{-36,-87},{-36,-88},{-24,-88},{-24,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Blood_SID, BEox.u1) annotation (Line(
    points={{-24,92},{-22,92},{-22,-2},{0,-2}},
    color={255,204,51},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
      graphics={                 Text(
        extent={{-118,-84},{124,-118}},
        lineColor={0,0,255},
        textString="%name")}),
    Documentation(revisions="<html>

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
    <td><p>2009</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    <tr>
    <td></td>
    <td>Noriaki Ikeda: A model of overall regulation of body fluids (1979), Kitasato University</td>
    </tr>
    <tr>
    <td></td>
    <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end AcidBase;