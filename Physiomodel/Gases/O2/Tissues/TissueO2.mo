within Physiomodel.Gases.O2.Tissues;
model TissueO2
    extends TissueO2Base;
equation
    connect(O2Tissue.alveolar, Metabolism_O2Use.q_in) annotation (Line(
        points={{-8.4,-14.2},{-8.4,-44.1},{-8,-44.1},{-8,-74}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
end TissueO2;
