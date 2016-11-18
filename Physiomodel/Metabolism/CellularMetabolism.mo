within Physiomodel.Metabolism;


model CellularMetabolism
    extends Physiolibrary.Icons.CellularMetabolism;

    constant Physiolibrary.Types.Density WaterDensity = 1000;

    parameter Boolean canBurnFattyAcids = true;

    parameter Physiolibrary.Types.MolarEnergy glucoseEnergy = (1/0.2439e-6)*4.1864*Substances.Glucose.mw
    "Metabolism-Tools.CarboAerobic(mg/cal)=0.2439";   // 1/(kg/cal)*(J/cal)*(kg/mol) = J/mol
    parameter Physiolibrary.Types.MolarEnergy fattyAcidsEnergy = (1/0.1075e-6)*4.1864*Substances.FattyAcids.mw
    "Metabolism-Tools.Fat(mg/cal)=0.1075";
    parameter Physiolibrary.Types.MolarEnergy lactateEnergy = (1/0.2538e-6)*4.1864*Substances.Lactate.mw
    "Metabolism-Tools.Lac-(mg/cal)=0.2438";
    parameter Physiolibrary.Types.MolarEnergy ketoAcidsEnergy = (1/0.1075e-6)*4.1864*Substances.KetoAcids.mw
    "Metabolism-Tools.Fat(mg/cal)=0.1075";
    parameter Physiolibrary.Types.MolarEnergy oxygenEnergy = (1/0.2093)*4.1864*22710.95322615; // 22710.95322615 ml/mol of oxygen at 0 degC

    parameter Physiolibrary.Types.MolarEnergy glucoseAnaerobicEnergy = glucoseEnergy - lactateEnergy;
    parameter Physiolibrary.Types.MolarEnergy glycogenAnaerobicEnergy = glucoseAnaerobicEnergy;
    /*
    parameter Real eTOglu_coef(displayUnit="g/kcal") = 0.2439
    "how much carbohydrates will be produced with one kilocalorie";
    parameter Real eTOlac_coef(displayUnit="g/kcal") = 0.2538
    "how much lactate will produce one kilocalorie";
    parameter Real eTOfat_coef(displayUnit="g/kcal") = 0.1075
    "how much fatty acids will produce one kilocalorie";
    parameter Real eTOketo_coef(displayUnit="g/kcal") = 0.1075
    "how much ketoacids will produce one kilocalorie";

    parameter Real eTOo2_coef(displayUnit="ml/kcal") = 0.2093
    "how much oxygen will be produced with one kilocalorie";

    parameter Real anaerobic_glu2energy( displayUnit="kcal/g") = (1.0/eTOglu_coef) - (1.0/eTOlac_coef)
    "how much energy in callories will produce one unit of reactant by anaerobic metabolism"; // 0.1577

    parameter Real gly2energy( displayUnit="kcal/g") = anaerobic_glu2energy
    "how much energy in callories is produced by one gram of glycogen";

    */

    parameter Real RQglu(displayUnit="1") = 1
    "how much CO2 will be produced with one oxygen by glucose burning";
    parameter Real RQlac(displayUnit="1") = 1
    "how much CO2 will be produced with one oxygen by lactate burning";
    parameter Real RQfat(displayUnit="1") = 0.7
    "how much CO2 will be produced with one oxygen by fatty acid burning";
    parameter Real RQketo(displayUnit="1") = 0.7
    "how much CO2 will be produced with one oxygen by keto acid burning";

    /*
    parameter Physiolibrary.Types.MolarMass lacDensity( displayUnit="g/mol") = 0.09008 "density of lactate";

    parameter Real glu2lac( displayUnit="mEq/g") = 1.0 / lacDensity
    "how much lactate will produce one gram of glucose";
    parameter Real gly2lac( displayUnit="mEq/g") =  1.0 / lacDensity
    "how much lactate is produced by one gram of glycogen";
    */

    parameter Real[:,3] LacFractionData
    "fraction of oxygen to be use for lactate metabolism (depends on lactate concentration)";

    //  parameter Real[:,3] PO2OnAerobicFractionData
    //    "Aerobic Fraction of O2 tissue use depents on pO2";
    parameter Real[:,3] PO2OnAerobicFractionData = {{2,0,0},{10,1,0}}
    "Aerobic Fraction of O2 tissue use depents on pO2";

    Physiolibrary.Blocks.Interpolation.Curve LacFraction(
    x=LacFractionData[:, 1],
    y=LacFractionData[:, 2],
    slope=LacFractionData[:, 3],
    Xscale=10/90.08)           annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={-10,52})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a lactate(q(nominal=1e-6))
    annotation (Placement(transformation(extent={{46,47},{66,67}}),
      iconTransformation(extent={{-76,90},{-56,110}}))); //(q(final displayUnit="mEq/min"), conc(final displayUnit="mEq/ml")) "in mEq/ml"

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a   glucose(q(nominal=1e-6))
    annotation (Placement(transformation(extent={{45,-4},{65,16}}),
      iconTransformation(extent={{-110,70},{-90,90}})));       //(q(final displayUnit="mg/min"), conc(final displayUnit="mg/ml")) "in mg/ml"

    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                        Tissue_CO2FromMetabolism
                                                          annotation (
      Placement(transformation(extent={{98,58},{106,66}}),
        iconTransformation(extent={{74,-20},{114,20}})));
    Physiolibrary.Types.RealIO.VolumeFlowRateOutput
                                        Tissue_MetabolicH2ORate
                                                          annotation (
      Placement(transformation(extent={{90,-98},{100,-88}}),
        iconTransformation(extent={{-20,-20},{20,20}},
        rotation=270,
        origin={14,-98})));

    Physiolibrary.Types.RealIO.PowerInput CalsUse(
                                        displayUnit="cal/min") annotation (
      Placement(transformation(extent={{46,-86},{56,-76}}),
        iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={40,100})));
    Physiolibrary.Blocks.Interpolation.Curve AerobicFraction(
    x=PO2OnAerobicFractionData[:, 1],
    y=PO2OnAerobicFractionData[:, 2],
    slope=PO2OnAerobicFractionData[:, 3],
    Xscale=101325/760)
    annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
    Physiolibrary.Types.RealIO.PressureInput
                                       pO2(
                                          displayUnit="mmHg")
                                           annotation (Placement(
        transformation(
        extent={{-4.57101,-4.57142},{11.4274,11.4284}},
        origin={-93.427,6.5716}),
                           iconTransformation(
        extent={{-11.4284,-11.4285},{28.5715,28.5715}},
        origin={-104.572,-48.5715})));
    //  Real O2Use;
    Physiolibrary.Types.MolarFlowRate O2UseByGlu,O2UseByLac,O2UseByFA, O2UseByKA;
    Physiolibrary.Types.Fraction FAfraction, KAfraction, Ratio;
    Physiolibrary.Types.Power AnaerobicCals;

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a fattyAcids
    annotation (Placement(transformation(extent={{45,-60},{65,-40}}),
      iconTransformation(extent={{-110,-10},{-90,10}})));  //(q(final displayUnit="mg/min"), conc(final displayUnit="mg/ml")) "in mg/ml"

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a glycogen "glycogen flow"
    annotation (Placement(transformation(extent={{4,-50},{26,-28}}),
      iconTransformation(extent={{-110,30},{-90,50}})));
    parameter Real GlycogenAvailability[:,3]= {{  0,  0.0,  0.0}, { 50,  1.0,  0.0}};

    Physiolibrary.Blocks.Interpolation.Curve GlycogenAvailabilityCurve(
    x=GlycogenAvailability[:, 1],
    y=GlycogenAvailability[:, 2],
    slope=GlycogenAvailability[:, 3],
    Xscale=1/180.16)
    annotation (Placement(transformation(extent={{-44,-88},{-14,-58}})));
    Physiolibrary.Types.RealIO.MolarFlowRateOutput
                                        O2Use
    annotation (Placement(transformation(extent={{90,-10},{130,30}}),
        iconTransformation(extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-56,-84})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a ketoAcids
    annotation (Placement(transformation(extent={{67,-40},{87,-20}}),
      iconTransformation(extent={{-38,90},{-18,110}})));  //(q(final displayUnit="mg/min"), conc(final displayUnit="mg/ml")) "in mg/ml"

    Modelica.SIunits.Power gluW=glucose.q*glucoseEnergy, gluO2W=O2UseByGlu*oxygenEnergy, lacW=lactate.q*lactateEnergy, lacO2W=LacFraction.val * CalsUse, anaerobicGluW=glucoseAnaerobicEnergy *(glucose.q - (O2UseByGlu*oxygenEnergy)/glucoseEnergy), anaerobicGlyW=glycogenAnaerobicEnergy*glycogen.q;
    Modelica.SIunits.MolarFlowRate anaerobicGluGly=((glucose.q - (O2UseByGlu*oxygenEnergy)/glucoseEnergy) + glycogen.q), anaerobicProducedLac=(lactate.q - LacFraction.val * CalsUse/lactateEnergy);
equation
    AerobicFraction.u = pO2;
    LacFraction.u = lactate.conc; // * lacDensity * 100.0; //  [mg/dl]
    O2Use*oxygenEnergy = AerobicFraction.val * CalsUse; //O2Use = AerobicFraction.val * eTOo2_coef * CalsUse;
    O2UseByLac = LacFraction.val * O2Use;

    Tissue_MetabolicH2ORate = (O2Use/2)*Substances.Water.mw / WaterDensity;

    if canBurnFattyAcids then
    ketoAcids.q=0;
    KAfraction=0;
    O2UseByKA=0;

    O2UseByFA  = FAfraction    * O2Use;
    O2UseByGlu + O2UseByLac + O2UseByFA = O2Use;
    FAfraction = (1-LacFraction.val)*(Ratio/(Ratio+0.026*(Substances.Glucose.mw/Substances.FattyAcids.mw)));
    Ratio = (fattyAcids.conc) / (glucose.conc); // Ratio = fattyAcids.conc / glucose.conc;

    //Tissue_CO2FromMetabolism = 0.0446 * (O2UseByGlu*RQglu + O2UseByLac*RQlac + O2UseByFA*RQfat);
    Tissue_CO2FromMetabolism = (O2UseByGlu*RQglu + O2UseByLac*RQlac + O2UseByFA*RQfat);

    // Tissue_MetabolicH2ORate = 0.000176 * CalsUse;
    // Tissue_MetabolicH2ORate = (0.176e-9/4.1864) * CalsUse; // 0.000176 ml/cal = 0.176e-9/4.1864 m3/J

    fattyAcids.q*fattyAcidsEnergy = FAfraction * CalsUse;
    else
    fattyAcids.q=0;
    FAfraction=0;
    O2UseByFA=0;

    O2UseByKA  = KAfraction    * O2Use;
    O2UseByGlu + O2UseByLac + O2UseByKA = O2Use;
    KAfraction = (1-LacFraction.val)*(Ratio/(Ratio+0.222*(Substances.Glucose.mw/Substances.KetoAcids.mw)));
    Ratio = (ketoAcids.conc) / (glucose.conc);

    Tissue_CO2FromMetabolism = (O2UseByGlu*RQglu + O2UseByLac*RQlac + O2UseByKA*RQketo);
    //Tissue_MetabolicH2ORate = (0.176e-9/4186.4) * CalsUse; // 0.000176 ml/cal = 0.176e-9/4186.4 m3/J

    ketoAcids.q*ketoAcidsEnergy = KAfraction * CalsUse;
    end if;

    GlycogenAvailabilityCurve.u = glycogen.conc;

    if AerobicFraction.val<1-Modelica.Constants.eps then
      // with anaerobic metabolism
    AnaerobicCals = (1-AerobicFraction.val)*CalsUse; //anaerobic callories

    glycogen.q = GlycogenAvailabilityCurve.val * AnaerobicCals;

    // anaerobic_glu2energy *(glucose.q - (O2UseByGlu/eTOo2_coef) * eTOglu_coef) + gly2energy*glycogen.q = AnaerobicCals;
    // (glucose.q - (O2UseByGlu/eTOo2_coef) * eTOglu_coef) + gly2lac*glycogen.q = (lactate.q*lacDensity - LacFraction.val * CalsUse * eTOlac_coef);

    glucoseAnaerobicEnergy *(glucose.q - (O2UseByGlu*oxygenEnergy)/glucoseEnergy) + glycogenAnaerobicEnergy*glycogen.q = AnaerobicCals;

    ((glucose.q - (O2UseByGlu*oxygenEnergy)/glucoseEnergy) + glycogen.q) = -2*(lactate.q - LacFraction.val * CalsUse/lactateEnergy);

    else
      // only aerobic metabolism
    AnaerobicCals = 0.0;
    glycogen.q = 0.0;
    lactate.q*lactateEnergy = LacFraction.val * CalsUse;
    glucose.q*glucoseEnergy = O2UseByGlu*oxygenEnergy;
    end if;

    annotation (        Documentation(revisions="<html>

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
    <td><p>2012</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td><p>Tom Coleman: Physiomodel v1.5, University of Mississippi Medical Center</p></td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end CellularMetabolism;