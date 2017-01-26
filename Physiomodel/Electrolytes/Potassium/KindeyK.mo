within Physiomodel.Electrolytes.Potassium;

model KindeyK
    extends Physiolibrary.Icons.Kidney;

        Physiolibrary.Blocks.Factors.Spline NaEffect(data={{0.0,0.3,0},{0.4,1.0,
        1.5},{4.0,3.0,0}}, Xscale=1e-3/60)
        annotation (Placement(transformation(extent={{44,30},{24,50}})));
        Physiolibrary.Blocks.Factors.LagSpline
                                      AldoEffect(data={{0.0,0.3,0},{12.0,
        1.0,0.06},{50.0,3.0,0}},
        Xscale=1e-8/Substances.Aldosterone.mw,
        HalfTime=Modelica.Math.log(2)*3*60*60,
        initialValue=12)
        annotation (Placement(transformation(extent={{44,38},{24,58}})));
        Physiolibrary.Blocks.Factors.Spline ThiazideEffect(data={{0.0,1.0,2.0},{
        0.6,2.0,0}})
        annotation (Placement(transformation(extent={{44,46},{24,66}})));
        Physiolibrary.Types.Constants.MolarFlowRateConst
        electrolytesFlowConstant(k=8.3333333333333e-07)
        annotation (Placement(transformation(extent={{18,76},{30,88}})));
        Physiolibrary.Chemical.Components.SolutePump DT_K(useSoluteFlowInput=true)
                                                    annotation (Placement(
        transformation(
        extent={{-6,-6},{6,6}},
        origin={34,22})));
        Physiolibrary.Blocks.Factors.Spline KEffect(data={{0.0,0.0,0},{4.4,1.0,
        0.5},{5.5,3.0,0}})
        annotation (Placement(transformation(extent={{24,22},{44,42}})));
        Physiolibrary.Blocks.Factors.Normalization KidneyFunction
        annotation (Placement(transformation(extent={{44,54},{24,74}})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
        transformation(extent={{-94,88},{-82,100}}), iconTransformation(
          extent={{60,60},{100,100}})));
        Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in
        "sodium concentration in blood incomming to glomerulus capillaries; sodium mass flow is filtration - reabsorbtion"
        annotation (Placement(transformation(extent={{-54,6},{-36,24}}),
        iconTransformation(extent={{10,-10},{30,10}})));
        Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out
        "sodium mass outflow to urine from collecting ducts" annotation (
        Placement(transformation(extent={{-14,-60},{2,-46}}),
        iconTransformation(extent={{10,-90},{30,-70}})));
equation
    connect(AldoEffect.y, NaEffect.yBase)     annotation (Line(
    points={{34,44},{34,42}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.y, AldoEffect.yBase)  annotation (Line(
    points={{34,52},{34,50}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(ThiazideEffect.u, busConnector. ThiazidePool_Thiazide_conc) annotation (Line(
    points={{42,56},{98,56},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(NaEffect.u, busConnector. DT_Na_Outflow) annotation (Line(
    points={{42,40},{98,40},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(NaEffect.y, KEffect.yBase) annotation (Line(
    points={{34,36},{34,34}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KEffect.y, DT_K.soluteFlow) annotation (Line(
    points={{34,28},{34,24.4},{36.4,24.4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(electrolytesFlowConstant.y, KidneyFunction.yBase) annotation (
    Line(
    points={{31.5,82},{34,82},{34,66}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KidneyFunction.y, ThiazideEffect.yBase) annotation (Line(
    points={{34,60},{34,58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(KidneyFunction.u, busConnector. kidney_FunctionEffect) annotation (Line(
    points={{42,64},{98,64},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));

    connect(KEffect.y, busConnector. CD_K_Outflow) annotation (Line(
    points={{34,28},{98,28},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{3,1},{3,1}}));
    connect(q_in, DT_K.q_in) annotation (Line(
    points={{-45,15},{-8.5,15},{-8.5,22},{28,22}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(DT_K.q_out, q_out) annotation (Line(
    points={{40,22},{56,22},{56,-44},{-4,-44},{-4,-53},{-6,-53}},
    color={200,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.KPool_conc_per_liter, KEffect.u) annotation (Line(
    points={{-88,94},{-88,32},{26,32}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(AldoEffect.u, busConnector.Aldosterone) annotation (Line(
    points={{42,48},{98,48},{98,94},{-88,94}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
    preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={Text(
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
    </tr><tr>
    <td></td>
    <td>Noriaki Ikeda: A model of overall regulation of body fluids (1979), Kitasato University</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>", info="<html>
    <p>TODO: Ikeda - Potassium glucose flow from ECF to ICF with insulin affects potassium flow to cells.</p>
    </html>"));
end KindeyK;
