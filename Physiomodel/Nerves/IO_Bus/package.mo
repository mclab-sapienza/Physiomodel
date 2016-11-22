within Physiomodel.Nerves;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;

    redeclare model extends Variables
        T.Fraction AdrenalNerve_NA(varName="AdrenalNerve.NA")
        "Nerve activity of adrenal nerve."
        annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
        T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", storeUnit="Hz")
        "Neural activity of autonomous sympathetic nervous system."
        annotation (Placement(transformation(extent={{-36,20},{-30,26}})));
        T.Frequency GangliaKidney_NA(varName="GangliaKidney.NA(Hz)", storeUnit="Hz")
        "Sympathetis kidney ganglia neural activity."
        annotation (Placement(transformation(extent={{-36,30},{-30,36}})));
        T.Frequency VagusNerve(varName="VagusNerve.NA(Hz)", storeUnit="Hz")
        "Neurus vagus activity."
        annotation (Placement(transformation(extent={{-36,-12},{-30,-6}})));
        T.Fraction Kidney_Alpha_NA(varName="Kidney-Alpha.NA")
        "Kidney alpha neural activity effect."
        annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
        T.Fraction KidneyAlpha_PT_NA(varName="Kidney-Alpha.PT_NA")
        "Kidney alpha proximal tubule neural activity effect."
        annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
        T.Fraction SympsCNS_PituitaryNA(varName="SympsCNS.PituitaryNA")
        "Sympathetis pituitary nerve activity."
        annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
    equation

        connect(AdrenalNerve_NA.y, busConnector.AdrenalNerve_NA) annotation (Line(
        points={{-29.7,13},{90,13},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA) annotation (Line(
        points={{-29.7,23},{90,23},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(GangliaKidney_NA.y, busConnector.GangliaKidney_NA) annotation (Line(
        points={{-29.7,33},{90,33},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Kidney_Alpha_NA.y, busConnector.Kidney_Alpha_NA) annotation (Line(
        points={{-29.7,73},{90,73},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(KidneyAlpha_PT_NA.y, busConnector.KidneyAlpha_PT_NA) annotation (Line(
        points={{-29.7,83},{90,83},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(SympsCNS_PituitaryNA.y, busConnector.SympsCNS_PituitaryNA) annotation (Line(
        points={{-29.7,113},{90,113},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));

        connect(VagusNerve.y, busConnector.VagusNerve_NA_Hz) annotation (Line(
        points={{-29.7,-9},{66,-9},{66,-2},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Text(
            extent={{18,78},{100,40}},
            lineColor={0,0,0},
            textString="vars"), Text(
            extent={{-124,-54},{118,-88}},
            lineColor={0,0,255},
            textString="%name")}));
    end Variables;
end IO_Bus;