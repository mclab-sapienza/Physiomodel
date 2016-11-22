within Physiomodel.Electrolytes.Phosphate;
model AcidDissociation
    Modelica.Blocks.Interfaces.RealInput
                                   CD_tPO4(
                                     displayUnit="mmol/min")
    "total PO4 in mmol/min"
    annotation (Placement(transformation(extent={{-120,60},{-80,100}}),
      iconTransformation(extent={{-120,60},{-80,100}})));
    Modelica.Blocks.Interfaces.RealInput
                                   PHU "pH of urine in collecting duct"
                                                                  annotation (
    Placement(transformation(extent={{-120,60},{-80,100}}), iconTransformation(
        extent={{-120,0},{-80,40}})));
    Modelica.Blocks.Interfaces.RealOutput
                                    CD_PO4_mEq(
                                         displayUnit="mEq/min") annotation (
    Placement(transformation(extent={{80,-80},{120,-40}}), iconTransformation(
        extent={{80,-80},{120,-40}})));

    Real H2PO4;
    Real HPO4;
equation
    HPO4/H2PO4 = 10^(PHU-6.8);
    CD_tPO4 = HPO4 + H2PO4;
    CD_PO4_mEq = 2*HPO4 + H2PO4;
end AcidDissociation;
