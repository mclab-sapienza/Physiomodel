within Physiomodel.Gases.O2;
model O2
    extends Physiolibrary.Icons.Oxygen;
    Physiolibrary.Chemical.Components.Substance                artys(
                                 stateName="O2Artys.Mass[mMol]",
      useNormalizedVolume=false,
    solute_start=0.0130979)
      annotation (Placement(transformation(extent={{60,-96},{80,-76}})));
    Physiolibrary.Chemical.Components.Substance                veins(
                                           stateName="O2Veins.Mass[mMol]",
      useNormalizedVolume=false,
    solute_start=0.0247781)
      annotation (Placement(transformation(extent={{-88,-54},{-68,-34}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{88,16},{108,36}}), iconTransformation(
          extent={{60,60},{100,100}})));
    Ventilation.AlveolarVentilation alveolarVentilation(solventFlowPump(q_out(
          conc(start=104/760)), useSolutionFlowInput=true)) annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        origin={-8,50})));
    Physiolibrary.Chemical.Components.Stream pulmShortCircuit(
      useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{-16,-28},{4,-48}})));
    Modelica.Blocks.Math.Feedback pulmShortCircuitFlow
      annotation (Placement(transformation(extent={{26,-64},{6,-44}})));
    MeassureBloodO2 artysO2(
    pO2(start=13459),
    cO2Hb(start=7.82305),
    pCO2(start=4428.03),
      a(start=-0.1))
      annotation (Placement(transformation(extent={{64,-20},{84,0}})));
                           /**/
    MeassureBloodO2 veinsO2(
    pO2(start=6140),
    cO2Hb(start=6.52),
    a(start=0.076),
    pCO2(start=6400))
      annotation (Placement(transformation(extent={{-90,-18},{-70,2}})));
                           /**/
    Physiomodel.Gases.O2.BloodO2_Siggaard O2Lung(
    pCO2(start=5700),
    pO2(start=13870),
      sO2CO(start=0.977),
      q_in(q(start=10)),
      a(start=-0.1),
      cO2Hb(start=8.16),
      tO2(start=8.161))
      annotation (Placement(transformation(extent={{-16,-18},{4,2}})));
     // sO2CO(start=0.951486),
                                           /**/
    Real x;
    Physiolibrary.Chemical.Components.GasSolubility
                                      gasSolubility(useHeatPort=true,
    C=1700,
    kH_T0(displayUnit="(mmol/l)/kPa at 37degC") = 0.02707666941329,
    solubilityRateCoef(displayUnit="m3/s") = 0.01,
    T0=310.15)
      annotation (Placement(transformation(extent={{-18,12},{2,32}})));
    Physiolibrary.Thermal.Sources.UnlimitedHeat alveolus(T=310.15)
    annotation (Placement(transformation(extent={{60,46},{80,66}})));
    Physiolibrary.Chemical.Sources.UnlimitedGasStorage air(PartialPressure(
        displayUnit="mmHg") = 21331.5819864, useHeatPort=true)
    annotation (Placement(transformation(extent={{-58,70},{-38,90}})));
    Physiolibrary.Thermal.Sources.UnlimitedHeat environment(T=298.15)
    annotation (Placement(transformation(extent={{-92,46},{-72,66}})));
    TissuesO2 tissuesO2
    annotation (Placement(transformation(extent={{-14,-94},{6,-74}})));
initial equation
    //if Artys.STEADY then
       // Veins.soluteMass
      // x = -O2Lung.q_out.q;
    //   x = ((-O2Lung.q_out.q - tissuesO2.O2ToTissues)/O2Lung.BloodFlow)*Veins.SolventVolume;
       // end if;
equation
    x = ((-O2Lung.q_out.q - tissuesO2.O2ToTissues)/O2Lung.BloodFlow)*veins.volume;
    connect(pulmShortCircuitFlow.u1, busConnector.CardiacOutput)
      annotation (Line(
        points={{24,-54},{34,-54},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(pulmShortCircuit.q_out,artys. q_out)
                                              annotation (Line(
        points={{4,-38},{14,-38},{14,-18},{70,-18},{70,-86}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(pulmShortCircuit.solutionFlow, pulmShortCircuitFlow.y)
    annotation (Line(
      points={{-6,-45},{-6,-54},{7,-54}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(busConnector.AlveolarVentilated_BloodFlow, pulmShortCircuitFlow.u2)
      annotation (Line(
        points={{98,26},{-50,26},{-50,-14},{-30,-14},{-30,-62},{16,-62}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(veins.q_out, pulmShortCircuit.q_in) annotation (Line(
        points={{-78,-44},{-78,-18},{-24,-18},{-24,-38},{-16,-38}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector.CO2Artys_pCO2, artysO2.pCO2)              annotation (
        Line(
        points={{98,26},{34,26},{34,-4},{65,-4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(artysO2.ctHb, busConnector.ctHb)              annotation (Line(
        points={{83,0},{104,0},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(artysO2.cDPG, busConnector.cDPG)              annotation (Line(
        points={{83,-4},{104,-4},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(artysO2.FMetHb, busConnector.FMetHb)              annotation (Line(
        points={{83,-8},{104,-8},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(artysO2.FHbF, busConnector.FHbF)              annotation (Line(
        points={{83,-12},{104,-12},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(artysO2.pCO, busConnector.pCO)              annotation (Line(
        points={{83,-16},{104,-16},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.Artys_pH, artysO2.pH)  annotation (Line(
        points={{98,26},{34,26},{34,0},{65,0}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.core_T, artysO2.T)       annotation (Line(
        points={{98,26},{34,26},{34,-8},{65,-8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(artys.q_out, artysO2.q_in) annotation (Line(
        points={{70,-86},{70,-18},{74,-18}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(veinsO2.ctHb, busConnector.ctHb)              annotation (Line(
        points={{-71,2},{-50,2},{-50,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(veinsO2.cDPG, busConnector.cDPG)              annotation (Line(
        points={{-71,-2},{-50,-2},{-50,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(veinsO2.FMetHb, busConnector.FMetHb)              annotation (Line(
        points={{-71,-6},{-50,-6},{-50,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(veinsO2.FHbF, busConnector.FHbF)              annotation (Line(
        points={{-71,-10},{-50,-10},{-50,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(veinsO2.pCO, busConnector.pCO)              annotation (Line(
        points={{-71,-14},{-50,-14},{-50,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.CO2Veins_pCO2, veinsO2.pCO2)              annotation (
        Line(
        points={{98,26},{-100,26},{-100,-2},{-89,-2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.Veins_pH, veinsO2.pH)  annotation (Line(
        points={{98,26},{-100,26},{-100,2},{-89,2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.core_T, veinsO2.T)       annotation (Line(
        points={{98,26},{-100,26},{-100,-6},{-89,-6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(veins.q_out, veinsO2.q_in)  annotation (Line(
        points={{-78,-44},{-78,-16},{-80,-16}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector.O2Veins_sO2, veinsO2.sO2)  annotation (Line(
        points={{98,26},{-100,26},{-100,-26},{-80,-26},{-80,-20}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-3,-3},{-3,-3}}));
    connect(artysO2.sO2, busConnector.O2Artys_sO2) annotation (Line(
        points={{74,-22},{74,-28},{104,-28},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{3,-3},{3,-3}}));
    connect(artysO2.pO2, busConnector.O2Artys_PO2) annotation (Line(
        points={{78,-22},{104,-22},{104,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.CO2Lung_pCO2,O2Lung. pCO2)               annotation (
        Line(
        points={{98,26},{-50,26},{-50,-2},{-15,-2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(O2Lung.ctHb, busConnector.ctHb)               annotation (Line(
        points={{3,2},{34,2},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(O2Lung.cDPG, busConnector.cDPG)               annotation (Line(
        points={{3,-2},{34,-2},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(O2Lung.FMetHb, busConnector.FMetHb)               annotation (Line(
        points={{3,-6},{34,-6},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(O2Lung.FHbF, busConnector.FHbF)               annotation (Line(
        points={{3,-10},{34,-10},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(O2Lung.pCO, busConnector.pCO)               annotation (Line(
        points={{3,-14},{34,-14},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(busConnector.AlveolarVentilated_BloodFlow,O2Lung. BloodFlow)
      annotation (Line(
        points={{98,26},{-50,26},{-50,-11.4},{-16,-11.4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(O2Lung.sO2, busConnector.O2Lung_sO2) annotation (Line(
        points={{-6,-20},{-6,-26},{34,-26},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,-3},{6,-3}}));
    connect(busConnector.core_T,O2Lung. T) annotation (Line(
        points={{98,26},{-50,26},{-50,-6},{-15,-6}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(veins.q_out,O2Lung. q_in) annotation (Line(
        points={{-78,-44},{-78,-17},{-15,-17}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(O2Lung.q_out,artys. q_out) annotation (Line(
        points={{3,-17},{70,-17},{70,-86}},
        color={200,0,0},
        thickness=1,
        smooth=Smooth.None));
    connect(busConnector.lungs_pH_plasma, O2Lung.pH) annotation (Line(
        points={{98,26},{-50,26},{-50,2},{-15,2}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(alveolarVentilation.AlveolarVentilation_Env, busConnector.AlveolarVentilation_Env)
      annotation (Line(
        points={{0,52},{34,52},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(alveolarVentilation.BronchiDilution, busConnector.BronchiDilution)
      annotation (Line(
        points={{0,46},{34,46},{34,26},{98,26}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(alveolarVentilation.alveolar, gasSolubility.q_out) annotation (Line(
        points={{-7.8,40},{-8,40},{-8,32}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(O2Lung.alveolar, gasSolubility.q_in) annotation (Line(
        points={{-6.4,0.2},{-8,0.2},{-8,14}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(artys.solutionVolume, busConnector.ArtysVol) annotation (Line(
      points={{66,-82},{66,-74},{34,-74},{34,26},{98,26}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(veins.solutionVolume, busConnector.VeinsVol) annotation (Line(
      points={{-82,-40},{-82,-34},{-100,-34},{-100,26},{98,26}},
      color={0,0,127},
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
    connect(alveolus.port, gasSolubility.heatPort) annotation (Line(
      points={{80,56},{84,56},{84,22},{-8,22}},
      color={191,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(air.q_out, alveolarVentilation.inspired) annotation (Line(
      points={{-38,80},{-28,80},{-28,58},{-18,58}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(air.q_out, alveolarVentilation.expired) annotation (Line(
      points={{-38,80},{14,80},{14,58},{2,58}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(environment.port, air.heatPort) annotation (Line(
      points={{-72,56},{-48,56},{-48,80}},
      color={191,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(artys.q_out, tissuesO2.q_in) annotation (Line(
      points={{70,-86},{38,-86},{38,-84},{8,-84}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(veins.q_out, tissuesO2.q_out) annotation (Line(
      points={{-78,-44},{-52,-44},{-52,-84},{-16,-84}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(tissuesO2.busConnector, busConnector) annotation (Line(
      points={{-12.8,-74.8},{-12.8,-70},{106,-70},{106,26},{98,26}},
      color={255,204,51},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
      annotation ( Icon(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics={                 Text(
            extent={{-120,-62},{122,-96}},
            lineColor={0,0,255},
            textString="%name")}),
              Documentation(revisions="<html>

            <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
            <td><p>Author:</p></td>
            <td>Marek Matejak</td>
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
            <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
            </tr>
            </table>
            <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

            </html>"));
end O2;