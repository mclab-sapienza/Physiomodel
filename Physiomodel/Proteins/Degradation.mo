within Physiomodel.Proteins;
model Degradation
    //  parameter Physiolibrary.Types.MassFlowRate  DegradationBasic "10 mg/min";
    //  parameter Real[:,3] data =  {{ 0.00,  0.0,  0.0}, { 0.07,  1.0,  40.0}, { 0.09,  6.0,  0.0}}
    //    "ProteinEffect";
       parameter Physiolibrary.Types.MolarFlowRate DegradationBasic = 2.75753e-09
      "10 mg/min";
       parameter Real[:,3] data =  {{ 0.00,  0.0,  0.0}, { 1.45,  1.0,  1.59}, { 1.97,  6.0,  0.0}}
      "ProteinEffect";

    Physiolibrary.Blocks.Interpolation.Curve c(
      x=data[:, 1],
      y=data[:, 2],
      slope=data[:, 3]);
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (Placement(
          transformation(extent={{-100,0},{-60,40}}), iconTransformation(extent=
             {{-110,-10},{-90,10}})));

    //  Physiolibrary.Types.AmountOfSubstance  degradedAmount(start=0);
    //  Physiolibrary.Types.Mass  degradedMass(start=0);
    //protected
    //  constant Physiolibrary.Types.Time sec=1;
    //  constant Physiolibrary.Types.Volume ghostPlasmaVol=3.02e-3
    //    "Strange dependence derived from original HumMod";
equation
    //  ProteinsMassConcentration2Concentration(c.u*1000) = q_in.conc;
      c.u = q_in.conc;
      q_in.q = DegradationBasic * c.val;
    //  q_in.q =ProteinsMass2AmountOfSubstance(DegradationBasic*c.val*sec,ghostPlasmaVol)/sec;

    //TODO: state
    //der(degradedAmount) = q_in.q;
    //  ProteinsMass2AmountOfSubstance(degradedMass,ghostPlasmaVol) = degradedAmount;
     annotation (
        defaultComponentName="degradation",
        Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
                100,100}}), graphics={Rectangle(
              extent={{-100,-50},{100,50}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid), Text(
              extent={{-88,-50},{100,50}},
              lineColor={0,0,255},
              textString="%name")}),        Documentation(revisions="<html>
        <p><i>2009-2010</i></p>
        <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
        </html>"));
end Degradation;
