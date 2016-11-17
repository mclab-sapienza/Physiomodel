within Physiomodel.CardioVascular.Blood;
model BloodPropertiesBase
    extends Physiolibrary.Icons.Blood;

    Modelica.Blocks.Math.Add BloodVolume
    annotation (Placement(transformation(extent={{10,-70},{18,-62}})));
    Modelica.Blocks.Math.Min CollapsedEffect
    annotation (Placement(transformation(extent={{50,-84},{58,-76}})));
    Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{38,-78},{46,-70}})));
    Physiolibrary.Types.Constants.OneConst one
    annotation (Placement(transformation(extent={{38,-94},{46,-86}})));
    Modelica.Blocks.Math.Division HtcFract
    annotation (Placement(transformation(extent={{32,-46},{40,-38}})));
    Physiolibrary.Blocks.Interpolation.Curve HtcOnVisc(
    x={0,0.44,0.8},
    y={0.5,1,5},
    slope={0.8,3,30})
    annotation (Placement(transformation(extent={{46,-52},{66,-32}})));
    Modelica.Blocks.Math.Division division1
    annotation (Placement(transformation(extent={{78,-40},{86,-32}})));
    Physiolibrary.Types.Constants.OneConst one1
    annotation (Placement(transformation(extent={{64,-30},{72,-22}})));
    Physiolibrary.Types.Constants.OneConst one2
    annotation (Placement(transformation(extent={{28,-14},{36,-6}})));
    Modelica.Blocks.Math.Feedback PVCrit
    annotation (Placement(transformation(extent={{38,-14},{46,-6}})));
    Physiolibrary.Types.Constants.ConcentrationConst Hb(k=9.3)
    annotation (Placement(transformation(extent={{-20,8},{-28,16}})));
    Physiolibrary.Blocks.Factors.Normalization hematocritEffect(NormalValue=
    0.44)
    annotation (Placement(transformation(extent={{-44,-10},{-24,10}})));
    Physiolibrary.Types.Constants.ConcentrationConst DPG(k=5.4)
    annotation (Placement(transformation(extent={{26,90},{18,98}})));
    Physiolibrary.Types.Constants.FractionConst FMetHb(k=0.005)
    annotation (Placement(transformation(extent={{26,82},{18,90}})));
    Physiolibrary.Types.Constants.FractionConst FHbF(k=0.005)
    annotation (Placement(transformation(extent={{26,74},{18,82}})));
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-104,58},{-84,78}})));
    Modelica.Blocks.Math.Division division3(y(displayUnit="mmol/l"))
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
      origin={-4,2})));
    Modelica.Blocks.Math.Feedback feedback
    annotation (Placement(transformation(extent={{-20,32},{-40,52}})));
    Modelica.Blocks.Math.Add BloodVolume1
    annotation (Placement(transformation(extent={{-46,24},{-38,32}})));
    Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{66,2},{74,10}})));
    Modelica.Blocks.Math.Sum V0(nin=5)
    annotation (Placement(transformation(extent={{-30,-90},{-22,-82}})));
    Modelica.Blocks.Math.Sum VeinsVol(nin=5) "volume of deoxygenated blood"
    annotation (Placement(transformation(extent={{-26,-54},{-18,-46}})));
    Modelica.Blocks.Math.Sum ArtysVol(nin=4) "volume of oxygenated blood"
      annotation (Placement(transformation(extent={{-26,-34},{-18,-26}})));
equation
        connect(busConnector.PlasmaVol_Vol, BloodVolume.u2)
                                                    annotation (Line(
            points={{-94,68},{-94,-68.4},{9.2,-68.4}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(busConnector.RBCVol_Vol, BloodVolume.u1)
                                                  annotation (Line(
            points={{-94,68},{-94,-63.6},{9.2,-63.6}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(division.y, CollapsedEffect.u1)
                                    annotation (Line(
            points={{46.4,-74},{47.8,-74},{47.8,-77.6},{49.2,-77.6}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(BloodVolume.y, division.u1)
                                    annotation (Line(
            points={{18.4,-66},{28,-66},{28,-71.6},{37.2,-71.6}},
            color={0,0,127},
            smooth=Smooth.None));
      connect(one.y, CollapsedEffect.u2) annotation (Line(
          points={{47,-90},{48,-90},{48,-82.4},{49.2,-82.4}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(CollapsedEffect.y, busConnector.BloodVol_CollapsedEffect)
                                                              annotation (Line(
            points={{58.4,-80},{90,-80},{90,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(HtcFract.u2, BloodVolume.y)
                                    annotation (Line(
            points={{31.2,-44.4},{26,-44.4},{26,-66},{18.4,-66}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(HtcFract.u1,busConnector. RBCVol_Vol) annotation (Line(
            points={{31.2,-39.6},{-94,-39.6},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(HtcFract.y,HtcOnVisc. u) annotation (Line(
            points={{40.4,-42},{46,-42}},
            color={0,0,127},
            smooth=Smooth.None));
      connect(one1.y, division1.u1) annotation (Line(
          points={{73,-26},{74,-26},{74,-33.6},{77.2,-33.6}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(HtcOnVisc.val,division1. u2) annotation (Line(
            points={{66,-42},{75.5,-42},{75.5,-38.4},{77.2,-38.4}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(division1.y,busConnector. Viscosity_ConductanceEffect) annotation (Line(
            points={{86.4,-36},{90,-36},{90,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(HtcFract.y,busConnector. BloodVol_Hct) annotation (Line(
            points={{40.4,-42},{42,-42},{42,-20},{-94,-20},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None));
      connect(one2.y, PVCrit.u1) annotation (Line(
          points={{37,-10},{38.8,-10}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(HtcFract.y,PVCrit. u2) annotation (Line(
            points={{40.4,-42},{42,-42},{42,-13.2}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(PVCrit.y,busConnector. BloodVol_PVCrit) annotation (Line(
            points={{45.6,-10},{90,-10},{90,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(Hb.y, hematocritEffect.yBase) annotation (Line(
          points={{-29,12},{-34,12},{-34,2}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(hematocritEffect.y,busConnector. ctHb) annotation (Line(
            points={{-34,-4},{-34,-10},{-94,-10},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(busConnector.cDPG, DPG.y) annotation (Line(
          points={{-94,68},{-4,68},{-4,94},{17,94}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(busConnector.FMetHb, FMetHb.y) annotation (Line(
          points={{-94,68},{-4,68},{-4,86},{17,86}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(busConnector.FHbF, FHbF.y) annotation (Line(
          points={{-94,68},{-4,68},{-4,78},{17,78}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(Hb.y, division3.u1) annotation (Line(
          points={{-29,12},{-34,12},{-34,4},{-8.8,4},{-8.8,4.4}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(HtcFract.y, division3.u2) annotation (Line(
            points={{40.4,-42},{42,-42},{42,-20},{-18,-20},{-18,-0.4},{-8.8,
              -0.4}},
            color={0,0,127},
            smooth=Smooth.None));

        connect(division3.y, busConnector.ctHb_ery) annotation (Line(
            points={{0.4,2},{20,2},{20,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(BloodVolume.y, feedback.u1) annotation (Line(
            points={{18.4,-66},{26,-66},{26,42},{-22,42}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(busConnector.ArtysVol, BloodVolume1.u1) annotation (Line(
            points={{-94,68},{-94,30},{-46.8,30},{-46.8,30.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(busConnector.VeinsVol, BloodVolume1.u2) annotation (Line(
            points={{-94,68},{-94,26},{-46.8,26},{-46.8,25.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(BloodVolume1.y, feedback.u2) annotation (Line(
            points={{-37.6,28},{-30,28},{-30,34}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(PVCrit.y, product.u2) annotation (Line(
            points={{45.6,-10},{54,-10},{54,3.6},{65.2,3.6}},
            color={0,0,127},
            smooth=Smooth.None));
        connect(busConnector.PortalVein_BloodFlow, product.u1) annotation (Line(
            points={{-94,68},{54,68},{54,8.4},{65.2,8.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None));
        connect(product.y, busConnector.PortalVein_PlasmaFlow) annotation (Line(
            points={{74.4,6},{90,6},{90,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None));

        connect(busConnector.PulmonaryCirculation_V0,V0. u[1])
          annotation (Line(
            points={{-94,68},{-94,-82},{-32,-82},{-32,-86.64},{-30.8,-86.64}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,6},{-6,6}}));
        connect(busConnector.Heart_V0,V0. u[2]) annotation (
            Line(
            points={{-94,68},{-94,-86.32},{-30.8,-86.32}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,2},{-6,2}}));
        connect(busConnector.SystemicArtys_V0,V0. u[3])
          annotation (Line(
            points={{-94,68},{-94,-90},{-32,-90},{-32,-86},{-30.8,-86}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-2},{-6,-2}}));
        connect(busConnector.PortalVein_V0,V0. u[4]) annotation (Line(
            points={{-94,68},{-94,-94},{-32,-94},{-32,-86},{-30.8,-85.68}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-6},{-6,-6}}));
        connect(busConnector.SystemicVeins_V0,V0. u[5]) annotation (Line(
            points={{-94,68},{-94,-98},{-32,-98},{-32,-86},{-30.8,-85.36}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-10},{-6,-10}}));
        connect(VeinsVol.y, busConnector.VeinsVol) annotation (Line(
            points={{-17.6,-50},{2,-50},{2,-42},{-94,-42},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(busConnector.PulmonaryCirculation_DeoxygenatedBloodVolume,VeinsVol. u[1])
          annotation (Line(
            points={{-94,68},{-94,-46},{-28,-46},{-28,-50.64},{-26.8,-50.64}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,6},{-6,6}}));
        connect(busConnector.Heart_DeoxygenatedBloodVolume,VeinsVol. u[2]) annotation (
            Line(
            points={{-94,68},{-94,-50.32},{-26.8,-50.32}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,2},{-6,2}}));
        connect(busConnector.SplanchnicCirculation_DeoxygenatedBloodVolume,VeinsVol. u[3])
          annotation (Line(
            points={{-94,68},{-94,-54},{-28,-54},{-28,-50},{-26.8,-50}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-2},{-6,-2}}));
        connect(busConnector.SystemicVeins_DeoxygenatedBloodVolume,VeinsVol. u[4])
          annotation (Line(
            points={{-94,68},{-94,-58},{-28,-58},{-28,-49.68},{-26.8,-49.68}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-6},{-6,-6}}));
        connect(ArtysVol.y, busConnector.ArtysVol) annotation (Line(
            points={{-17.6,-30},{2,-30},{2,-22},{-94,-22},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(busConnector.PulmonaryCirculation_OxygenatedBloodVolume,ArtysVol. u[1])
          annotation (Line(
            points={{-94,68},{-94,-26},{-28,-26},{-28,-30.6},{-26.8,-30.6}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,6},{-6,6}}));
        connect(busConnector.Heart_OxygenatedBloodVolume,ArtysVol. u[2]) annotation (
            Line(
            points={{-94,68},{-94,-30.2},{-26.8,-30.2}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,2},{-6,2}}));
        connect(busConnector.SystemicArtys_OxygenatedBloodVolume,ArtysVol. u[3])
          annotation (Line(
            points={{-94,68},{-94,-34},{-28,-34},{-28,-29.8},{-26.8,-29.8}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-2},{-6,-2}}));
        connect(feedback.y, busConnector.BloodVolume_change) annotation (Line(
            points={{-39,42},{-66,42},{-66,68},{-94,68}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
      connect(BloodVolume.y, busConnector.BloodVolume) annotation (Line(
          points={{18.4,-66},{90,-66},{90,68},{-94,68}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(HtcFract.y, hematocritEffect.u) annotation (Line(
          points={{40.4,-42},{42,-42},{42,-20},{-52,-20},{-52,0},{-42,0}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.LegArtys_OxygenatedBloodVolume, ArtysVol.u[4])
          annotation (Line(
            points={{-94,68},{-94,-38},{-26.8,-38},{-26.8,-29.4}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-6},{-6,-6}}));
        connect(busConnector.LegVeins_DeoxygenatedBloodVolume, VeinsVol.u[5])
          annotation (Line(
            points={{-94,68},{-94,-62},{-28,-62},{-28,-49.36},{-26.8,-49.36}},
            color={0,0,255},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%first",
            index=-1,
            extent={{-6,-10},{-6,-10}}));
      connect(V0.y, division.u2) annotation (Line(
          points={{-21.6,-86},{8,-86},{8,-76.4},{37.2,-76.4}},
          color={0,0,127},
          smooth=Smooth.None));
        annotation ( Icon(coordinateSystem(
                        preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                      graphics={                          Text(
                        extent={{-142,-108},{142,-130}},
                        lineColor={0,0,255},
                        textString="%name")}),
                  Documentation(info="<html>
        <p>BloodVolume .. whole blood volume</p>
        <p>BloodVol_Hct .. haematocrit</p>
        <p>BloodVol_PVCrit .. 1-BloodVol_Hct, plamacrit</p>
        <p>ctHb_ery .. concentration of heme group in erythrocytes = 4 * MCHC (mean corpuscular hemoglobin concentration)</p>
        <p>ctHb .. concentration of heme group in whole blood</p>
        <p>FHbF .. featal Hb fraction from all Hb</p>
        <p>FMetHb .. metha-Hb fraction from all Hb</p>
        <p>cDPG .. concentration of 2,3-diphosphoglycerate in erythrocytes</p>
        <p>Viscosity_ConductanceEffect .. multiply coeficient of blood resistance through vesseles</p>
        <p>BloodVol_CollapsedEffect .. effect of small blood volume on systemic veins collasping</p>
        <p>Vesseles_V0 .. volume of no-pressure generating blood in all vessels.</p>
        <p>ArtysVol .. volume of all oxigenated blood</p>
        <p>VeinsVol .. volume of all deoxigenated blood</p>
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

        </html>"));
end BloodPropertiesBase;