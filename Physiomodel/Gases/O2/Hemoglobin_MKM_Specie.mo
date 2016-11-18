within Physiomodel.Gases.O2;
model Hemoglobin_MKM_Specie "Part of model Hemoglobin_MKM_Adair"

    parameter Boolean loadStarts
    "Start values of state variables from data file (to help with initialization)";
    parameter Boolean storeState
    "Save state variables at the end of simulation";
    constant String dirName = Modelica.Utilities.Files.loadResource("modelica://Physiolibrary/Resources/Data/Hemoglobin_MKM")
    "Directory to load start gues values and store final simulation values";

    parameter Real[4] pKz
    "Dissociation coefficient of reaction z (Val1 amino terminal protonation)";
    parameter Real[4] pKc
    "Dissociation coefficient of reaction c (Val1 amino terminal carbamination)";
    parameter Real[4] pKh
    "Dissociation coefficient of reaction h (other Bohr protonation reactions of side chains)";

    parameter Physiolibrary.Types.MolarEnergy[4] dH_HbuANH2
    "Standard enthalpy of deprotonated and decarboxylated hemoglobin subunit";
    parameter Physiolibrary.Types.MolarEnergy[4] dHz
    "Enthalpy of reaction z (Val1 amino terminal protonation)";
    parameter Physiolibrary.Types.MolarEnergy[4] dHc
    "Enthalpy of reaction c (Val1 amino terminal carbamination)";
    parameter Physiolibrary.Types.MolarEnergy[4] dHh
    "Enthalpy of reaction h (other Bohr protonation reactions of side chains)";

    parameter Boolean isDependent=false
    "contains dependent equation (if solver is not smart enough)";

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a Hbtn
    annotation (Placement(transformation(extent={{-108,-10},{-88,10}})));
      Physiolibrary.Chemical.Components.Substance Hbu_A_NH3[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    dH=dH_HbuANH2 - dHz,
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    each solute_start=1e-06)
    annotation (Placement(transformation(extent={{-32,70},{-12,90}})));
    Physiolibrary.Chemical.Components.Substance Hbu_AH_NH3[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    each solute_start=1e-06,
    dH=dH_HbuANH2 - dHh - dHz)
    annotation (Placement(transformation(extent={{54,70},{74,90}})));
    Physiolibrary.Chemical.Components.Substance Hbu_A_NH2[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    isDependent={isDependent,true,true,true},
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    each solute_start=1e-06,
    dH=dH_HbuANH2)
    annotation (Placement(transformation(extent={{-32,-2},{-12,18}})));
    Physiolibrary.Chemical.Components.Substance Hbu_AH_NH2[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    each solute_start=1e-06,
    dH=dH_HbuANH2 - dHh)
    annotation (Placement(transformation(extent={{54,-2},{74,18}})));
    Physiolibrary.Chemical.Components.Substance Hbu_A_NHCOO[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    dH=dH_HbuANH2 + dHc,
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    each solute_start=1e-06)
    annotation (Placement(transformation(extent={{-32,-84},{-12,-64}})));
    Physiolibrary.Chemical.Components.Substance Hbu_AH_NHCOO[4](
    each Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    each dirName=dirName,
    each LOAD_STARTS=loadStarts,
    each SAVE_RESULTS=storeState,
    dH=dH_HbuANH2 + dHc,
    each solute_start=1e-06)
    annotation (Placement(transformation(extent={{54,-84},{74,-64}})));
    Physiolibrary.Chemical.Components.ChemicalReaction h2[4](
    each nS=1,
    each nP=2,
    K=fill(10, 4) .^ (-pKh .+ 3),
    each TK=310.15,
    dH=dHh) annotation (Placement(transformation(extent={{32,-2},{12,18}})));
    Physiolibrary.Chemical.Components.ChemicalReaction z1[4](
    each nP=2,
    K=fill(10, 4) .^ (-pKz .+ 3),
    dH=dHz,
    each TK=310.15) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-22,44})));
    Physiolibrary.Chemical.Components.ChemicalReaction z2[4](
    each nP=2,
    K=fill(10, 4) .^ (-pKz .+ 3),
    each TK=310.15,
    dH=dHz) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={64,44})));
    Physiolibrary.Chemical.Components.ChemicalReaction c1[4](
    each nS=2,
    each nP=2,
    K=fill(10, 4) .^ (-pKc .+ 3),
    each TK=310.15,
    dH=dHc) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-22,-34})));
    Physiolibrary.Chemical.Components.ChemicalReaction c2[4](
    each nS=2,
    each nP=2,
    K=fill(10, 4) .^ (-pKc .+ 3),
    each TK=310.15,
    dH=dHc) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={64,-34})));
    Modelica.Blocks.Math.Sum total[4](each nin=6) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={-64,62})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a H3O(conc(nominal=10^(-7.2
           + 3))) "hydrogen ions"
    annotation (Placement(transformation(extent={{90,76},{110,96}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a CO2
    annotation (Placement(transformation(extent={{90,-70},{110,-50}})));
    Physiolibrary.Chemical.Components.Speciation Hb_tn(
    Simulation=Physiolibrary.Types.SimulationType.SteadyState,
    NumberOfSubunits=4,
    useInternalHeatsInput=false)
    annotation (Placement(transformation(extent={{-54,-22},{-74,-2}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceOutput tHb_u annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-100,-78})));
equation
    connect(Hbu_AH_NH3.q_out, z2.substrates[1]) annotation (Line(
      points={{64,80},{64,54}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Hbu_A_NH3.q_out, z1.substrates[1]) annotation (Line(
      points={{-22,80},{-22,54}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(z1.products[1], Hbu_A_NH2.q_out) annotation (Line(
      points={{-22.5,34},{-22.5,22},{-22,22},{-22,8}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(z2.products[1], Hbu_AH_NH2.q_out) annotation (Line(
      points={{63.5,34},{63.5,22},{64,22},{64,8}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(h2.substrates[1], Hbu_AH_NH2.q_out) annotation (Line(
      points={{32,8},{64,8}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Hbu_A_NH2.q_out, c1.substrates[1]) annotation (Line(
      points={{-22,8},{-22,-24},{-22.5,-24}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Hbu_AH_NH2.q_out, c2.substrates[1]) annotation (Line(
      points={{64,8},{64,-24},{63.5,-24}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(c1.products[1], Hbu_A_NHCOO.q_out) annotation (Line(
      points={{-22.5,-44},{-22.5,-60},{-22,-60},{-22,-74}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(c2.products[1], Hbu_AH_NHCOO.q_out) annotation (Line(
      points={{63.5,-44},{63.5,-60},{64,-60},{64,-74}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    connect(Hbu_A_NH3.solute, total.u[1]) annotation (Line(
      points={{-16,70},{-44,70},{-44,63.6667},{-52,63.6667}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Hbu_AH_NH3.solute, total.u[2]) annotation (Line(
      points={{70,70},{-44,70},{-44,63},{-52,63}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Hbu_A_NH2.solute, total.u[3]) annotation (Line(
      points={{-16,-2},{-44,-2},{-44,62.3333},{-52,62.3333}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Hbu_AH_NH2.solute, total.u[4]) annotation (Line(
      points={{70,-2},{-44,-2},{-44,61.6667},{-52,61.6667}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Hbu_A_NHCOO.solute, total.u[5]) annotation (Line(
      points={{-16,-84},{-44,-84},{-44,61},{-52,61}},
      color={0,0,127},
      smooth=Smooth.None));
    connect(Hbu_AH_NHCOO.solute, total.u[6]) annotation (Line(
      points={{70,-84},{-44,-84},{-44,60.3333},{-52,60.3333}},
      color={0,0,127},
      smooth=Smooth.None));

    connect(Hbu_A_NH2.q_out, h2.products[1]) annotation (Line(
      points={{-22,8},{-10,8},{-10,7.5},{12,7.5}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));

    connect(Hb_tn.specificForm, Hbtn) annotation (Line(
        points={{-74,-20},{-86,-20},{-86,0},{-98,0}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(total.y, Hb_tn.amountOfSubunit) annotation (Line(
        points={{-75,62},{-78,62},{-78,-12},{-72,-12}},
        color={0,0,127},
        smooth=Smooth.None));

    for i in 1:4 loop
    connect(z1[i].products[2], H3O) annotation (Line(
        points={{-21.5,34},{-21.5,28},{-4,28},{-4,96},{88,96},{88,86},{100,
            86}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(z2[i].products[2], H3O) annotation (Line(
        points={{64.5,34},{64.5,28},{-4,28},{-4,96},{88,96},{88,86},{100,86}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));

    connect(c1[i].products[2], H3O) annotation (Line(
        points={{-21.5,-44},{-21.5,-50},{-4,-50},{-4,96},{88,96},{88,86},{
            100,86}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(c2[i].products[2], H3O) annotation (Line(
        points={{64.5,-44},{64.5,-50},{-4,-50},{-4,96},{88,96},{88,86},{100,
            86}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));

    connect(H3O, h2[i].products[2]) annotation (Line(
        points={{100,86},{88,86},{88,96},{-4,96},{-4,8.5},{12,8.5}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));

      connect(CO2, c2[i].substrates[2]) annotation (Line(
        points={{100,-60},{88,-60},{88,-20},{64.5,-20},{64.5,-24}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(CO2, c1[i].substrates[2]) annotation (Line(
        points={{100,-60},{88,-60},{88,-20},{-21.5,-20},{-21.5,-24}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    end for;
    connect(Hb_tn.specificSubunitForm, Hbu_A_NH2.q_out) annotation (Line(
        points={{-64,-2},{-64,8},{-22,8}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(tHb_u, Hb_tn.amount) annotation (Line(
        points={{-100,-78},{-64,-78},{-64,-20}},
        color={0,0,127},
        smooth=Smooth.None));

    annotation ( Documentation(revisions="<html>
    <p><i>2014</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>", info="<html>

    <p>Ref: Mateják Marek, Kulhánek Tomáa, Matouaek Stanislav. Adair-Based Hemoglobin Equilibrium with Oxygen, Carbon Dioxide and Hydrogen Ion Activity. Scandinavian Journal of Clinical &AMP; Laboratory Investigation 2014</p>

    <p>Parameters are chosen to fit following measurements:</p>
    <p>[1] Bauer C, Schr&ouml;der E. Carbamino compounds of haemoglobin in human adult and foetal blood. The Journal of physiology 1972;227:457-71.</p>
    <p>[2] Siggaard-Andersen O. Oxygen-Linked Hydrogen Ion Binding of Human Hemoglobin. Effects of Carbon Dioxide and 2, 3-Diphosphoglycerate I. Studies on Erythrolysate. Scandinavian Journal of Clinical &AMP; Laboratory Investigation 1971;27:351-60.</p>

    </html>"));
end Hemoglobin_MKM_Specie;