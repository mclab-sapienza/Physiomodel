within Physiomodel.Proteins;

model Synthesis
    //  parameter Physiolibrary.Types.MassFlowRate  SynthesisBasic "10 mg/min";
    parameter Physiolibrary.Types.MolarFlowRate SynthesisBasic = 2.75753e-09
    "10 mg/min";
    parameter Real[:,3] data =  {{ 20.0,  3.0,  0.0}, { 28.0,  1.0,  -0.2}, { 40.0,  0.0,  0.0}}
    "COPEffect";
    Physiolibrary.Blocks.Interpolation.Curve c(
    x=data[:, 1],
    y=data[:, 2],
    slope=data[:, 3],
    Xscale=101325/760);

    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (extent=[
      -10,-110; 10,-90], Placement(transformation(extent={{90,-10},{110,10}})));

    Physiolibrary.Types.Pressure COP;
    //  Physiolibrary.Types.AmountOfSubstance  synthetizedAmount(start=0);
    //  Physiolibrary.Types.Mass  synthetizedMass(start=0);
    //protected
    //  constant Physiolibrary.Types.Time sec=1;
    //  constant Physiolibrary.Types.Volume ghostPlasmaVol=3.02e-3
    //    "Strange dependence derived from original HumMod";
equation
    COP =  q_out.conc * Modelica.Constants.R * 310.15;
    c.u=COP;
    q_out.q = -SynthesisBasic * c.val;

    //TODO: state
    //der(synthetizedAmount) = -q_out.q;
    //  ProteinsMass2AmountOfSubstance(synthetizedMass,ghostPlasmaVol) = synthetizedAmount;
    annotation (
    defaultComponentName="synthesis",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
            100,100}}), graphics={Rectangle(
          extent={{-100,-50},{100,50}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-100,-50},{90,50}},
          lineColor={0,0,255},
          textString="%name")}),        Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end Synthesis;
