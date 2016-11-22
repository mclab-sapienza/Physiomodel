within Physiomodel.Electrolytes.AcidBase;
model Urine

    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qPO4(displayUnit="mmol/min")
    "total phosphates outflow to urine"                                                         annotation (Placement(
      transformation(
      extent={{-20,-20},{20,20}},
      origin={-100,100}),
                        iconTransformation(
      extent={{-10,-10},{10,10}},
      origin={-90,-50})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qKA(displayUnit="mmol/min")
    "total keto-acids outflow to urine"                                                         annotation (Placement(
      transformation(extent={{-120,42},{-80,82}}),  iconTransformation(
      extent={{-10,-10},{10,10}},
      origin={-90,-70})));
    Physiolibrary.Types.RealIO.pHOutput PHU(start=5.7) "urine pH" annotation (Placement(
      transformation(extent={{70,-61},{100,-31}}),iconTransformation(extent={{86,-16},
          {118,16}})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qNa(displayUnit="mmol/min")
    "total sodium outflow to urine"                                                                annotation (Placement(transformation(
        extent={{-120,-30},{-80,10}}), iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,90})));

    parameter Real CO2_solubility(displayUnit="(mmol/l)/Pa")=0.00023;
    parameter Real pKaCO2=6.1 "CO2 acid dissociation constant";
    parameter Real pKaHCO3=10.329 "HCO3 acid dissociation constant";
    parameter Real pKaH3PO4=1.91 "H3PO4 acid dissociation constant";
    parameter Real pKaH2PO4=6.66 "H2PO4 acid dissociation constant";
    parameter Real pKaHPO4=11.78 "HPO4 acid dissociation constant";
    parameter Real pKaKA=4.3
    "average Keto-acids acid dissociation constant";
    //constant Real ml2l = 0.001;

    Real zPO4 "average charge of one phosphate in urine";
         //(displayUnit="Eq/Mol")

    Real zKA "average charge of one keto acid in purine";
        //(displayUnit="Eq/Mol")

    Real zCO2_qCO2 "charge outflow in (bi)carbonates to urine";
              //(displayUnit="Eq/min")
    Physiolibrary.Types.RealIO.PressureInput
                                   pCO2(displayUnit="mmHg")
    "partial CO2 pressure"                   annotation (Placement(transformation(
        extent={{-120,-120},{-80,-80}}),
                                       iconTransformation(extent={{-100,-100},
          {-80,-80}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateInput
                                   qH2O(displayUnit="ml/min")
    "water flow to urine"                    annotation (Placement(transformation(
        extent={{-120,-140},{-80,-100}}),
                                       iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,-110})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput qCl(displayUnit="mmol/min")
    "chloride flow to urine"                 annotation (Placement(transformation(
        extent={{-120,-128},{-80,-88}}),
                                       iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,-10})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qSO4(displayUnit="mmol/min")
    "sulfate flow to urine"                  annotation (Placement(transformation(
        extent={{-120,-128},{-80,-88}}),
                                       iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,-30})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qK(displayUnit="mmol/min")
    "total potassium outflow to urine"                                                          annotation (Placement(transformation(
        extent={{-120,-30},{-80,10}}), iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,70})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qNH4(displayUnit="mmol/min")
    "total amonium outflow to urine"                                                            annotation (Placement(transformation(
        extent={{-120,-30},{-80,10}}), iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,50})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qMg(displayUnit="mmol/min")
    "chloride flow to urine"                 annotation (Placement(transformation(
        extent={{-120,-128},{-80,-88}}),
                                       iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,30})));
    Physiolibrary.Types.RealIO.MolarFlowRateInput
                                   qCa(displayUnit="mmol/min")
    "chloride flow to urine"                 annotation (Placement(transformation(
        extent={{-120,-128},{-80,-88}}),
                                       iconTransformation(extent={{-10,-10},{10,
          10}},
      origin={-90,10})));
    parameter Physiolibrary.Types.MolarFlowRate  qX(displayUnit="mmol/min") = -5.6666666666666666666666666666667e-7
    "other acids/electrolytes charge outflow";
equation

    zPO4 = -(1+2*10^(PHU-pKaH2PO4)+ 3*10^(2*PHU-pKaH2PO4 -pKaHPO4)) / (10^(pKaH3PO4-PHU)+1+10^(PHU-pKaH2PO4)+ 10^(2*PHU-pKaH2PO4-pKaHPO4));

    zKA = - 1/(10^(pKaKA-PHU)+1);

    zCO2_qCO2 = -CO2_solubility*pCO2*(10^(PHU-pKaCO2))*(qH2O);

    qX + 1*qNa + 1*qK + 2*qMg + 2*qCa + 1*qNH4 + (-1)*qCl + (-2)*qSO4 + zPO4*qPO4 + zKA*qKA + zCO2_qCO2 = 0;  // electroneutrality of urine outflow

    annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-120},{100,100}}),
                       graphics={
      Rectangle(
        extent={{-100,100},{100,-120}},
        lineColor={0,0,255},
        lineThickness=0.5,
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
      Text(
        extent={{118,70},{-36,96}},
        lineColor={0,0,255},
        lineThickness=0.5,
        textString="Urine pH")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-120},{100,
          100}}), graphics),
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
    <td><p>2013</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td><p>Medsoft 2013, 146-147</p></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end Urine;