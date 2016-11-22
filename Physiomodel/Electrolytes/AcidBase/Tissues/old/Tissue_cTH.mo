within Physiomodel.Electrolytes.AcidBase.Tissues.old;
model Tissue_cTH "interstitial titratable acidity"

    Physiolibrary.Chemical.Sources.UnlimitedSolutePump inputPump1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-76,-28},{-56,-8}})));
    Physiolibrary.Chemical.Components.Substance                interstitium(
    useNormalizedVolume=false)
    annotation (Placement(transformation(extent={{-20,-28},{0,-8}})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure
    concentrationMeasure(toAnotherUnitCoef=1, unitsString="mEq/l")
    annotation (Placement(transformation(extent={{-16,-18},{4,2}})));
    Physiolibrary.Chemical.Components.Stream solventFlowPump(
    useSolutionFlowInput=true)
    annotation (Placement(transformation(extent={{48,14},{68,34}})));
    Physiolibrary.Chemical.Components.Stream solventFlowPump1(
    useSolutionFlowInput=true) annotation (Placement(transformation(
    extent={{-10,-10},{10,10}},
    origin={24,24})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput LactateFromMetabolism                 annotation (Placement(transformation(extent={{-82,-16},
      {-70,-4}}),                                                                                                   iconTransformation(extent={{-10,-10},{10,10}},         rotation=180,         origin={90,-60})));
                                                               //(displayUnit="mEq/min")
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (
    Placement(transformation(extent={{74,14},{94,34}}),
    iconTransformation(extent={{90,-10},{110,10}})));
    Physiolibrary.Types.RealIO.VolumeInput InterstitialWater(
                                            displayUnit="ml")                                                                                              annotation (Placement(transformation(extent={{-38,-18},
      {-26,-6}}),                                                                                                    iconTransformation(extent={{-10,-10},{10,10}},         rotation=180,         origin={90,40})));
    Physiolibrary.Types.RealIO.ConcentrationOutput cTH
    "interstitial titratable acidity"                                             annotation (Placement(
    transformation(extent={{-4,-4},{4,4}}),     iconTransformation(
    extent={{-20,-20},{20,20}},
    rotation=270,
    origin={20,-120})));                        //(displayUnit="mEq/l")
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
    Placement(transformation(extent={{-16,16},{0,32}}),
    iconTransformation(extent={{-110,-10},{-90,10}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateInput BloodFlow(
                                    displayUnit="ml/min")                                                                                                  annotation (Placement(transformation(extent={{4,38},{
  16,50}}),                                                                                                    iconTransformation(extent={{-10,-10},{10,10}},         rotation=180,         origin={90,80})));
equation
    connect(inputPump1.soluteFlow, LactateFromMetabolism) annotation (Line(
    points={{-62,-14},{-62,-10},{-76,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(inputPump1.q_out,interstitium. q_out) annotation (Line(
    points={{-56,-18},{-10,-18}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.q_in,interstitium. q_out) annotation (Line(
    points={{-6,-10},{-10,-10},{-10,-18}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(concentrationMeasure.concentration, cTH) annotation (Line(
    points={{-6,-4},{-6,0},{0,0}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(solventFlowPump.q_out, q_out) annotation (Line(
    points={{68,24},{84,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(solventFlowPump.solutionFlow, BloodFlow) annotation (Line(
    points={{58,28},{58,44},{10,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(BloodFlow, solventFlowPump1.solutionFlow) annotation (Line(
    points={{10,44},{24,44},{24,28}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(q_in, solventFlowPump1.q_in) annotation (Line(
    points={{-8,24},{14,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(solventFlowPump1.q_out, solventFlowPump.q_in) annotation (Line(
    points={{34,24},{48,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(interstitium.q_out, solventFlowPump.q_in) annotation (Line(
    points={{-10,-18},{42,-18},{42,24},{48,24}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(InterstitialWater, interstitium.solutionVolume) annotation (
    Line(
    points={{-32,-12},{-24,-12},{-24,-14},{-14,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
          -100},{100,100}}), graphics={Rectangle(extent={{-100,100},{
            100,-100}}, lineColor={0,0,0}), Text(
        extent={{2,98},{88,48}},
        lineColor={0,0,0},
        textString="cTH")}),              Documentation(revisions="<html>

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
    <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Tissue_cTH;