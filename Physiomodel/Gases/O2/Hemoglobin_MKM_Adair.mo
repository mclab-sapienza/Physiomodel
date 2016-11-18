within Physiomodel.Gases.O2;


model Hemoglobin_MKM_Adair "Matejak,Kulhanek,Matousek (2014)"

    constant Real pKzD=7.73,pKcD=7.54,pKhD=7.52;
    constant Real pKzO=7.25,pKcO=8.35,pKhO=6.89;
    constant Physiolibrary.Types.MolarEnergy dHzD=-51400;
    constant Physiolibrary.Types.MolarEnergy dHzO=7700;
    constant Physiolibrary.Types.MolarEnergy dHcD=59100;
    constant Physiolibrary.Types.MolarEnergy dHcO=-41100;
    constant Physiolibrary.Types.MolarEnergy dHhD=49000;
    constant Physiolibrary.Types.MolarEnergy dHhO=-105000;
    constant Physiolibrary.Types.MolarEnergy dHo=50000;
    constant Physiolibrary.Types.MolarEnergy dH_HbuDANH2=0;
    // dHhD=0, dHhO=-104000, dHo=12700, dH_HbuDANH2=0;                           // dHhD=48600, dHhO=-104000, dHo=50000, dH_HbuDANH2=0;

    parameter Boolean storeResults=false;
    parameter Boolean loadStarts=true;

    Physiolibrary.Chemical.Components.ChemicalReaction K1(
      K=0.0121,
      nS=1,
      nP=2) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=270,
          origin={-44,68})));
    Physiolibrary.Chemical.Components.ChemicalReaction K2(
      K=0.0117,
      nS=1,
      nP=2) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=270,
          origin={-46,28})));
    Physiolibrary.Chemical.Components.ChemicalReaction K3(
      K=0.0871,
      nS=1,
      nP=2) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=270,
          origin={-48,-18})));
    Physiolibrary.Chemical.Components.ChemicalReaction K4(
      K=0.000386,
      nS=1,
      nP=2) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=270,
          origin={-50,-60})));
    Physiolibrary.Chemical.Examples.Hemoglobin.Hemoglobin_MKM_Specie Hb0(
      pKz=fill(pKzD, 4),
      pKc=fill(pKcD, 4),
      pKh=fill(pKhD, 4),
      isDependent=true,
      dH_HbuANH2(displayUnit="kJ/mol") = fill(dH_HbuDANH2, 4),
      dHz(displayUnit="kJ/mol") = fill(dHzD, 4),
      dHc(displayUnit="kJ/mol") = fill(dHcD, 4),
      dHh(displayUnit="kJ/mol") = fill(dHhD, 4),
      storeState=storeResults,
      loadStarts=loadStarts)
      annotation (Placement(transformation(extent={{-24,78},{-4,98}})));
    Physiolibrary.Chemical.Examples.Hemoglobin.Hemoglobin_MKM_Specie Hb1(
      pKz=cat(
          1,
          fill(pKzD, 3),
          fill(pKzO, 1)),
      pKc=cat(
          1,
          fill(pKcD, 3),
          fill(pKcO, 1)),
      pKh=cat(
          1,
          fill(pKhD, 3),
          fill(pKhO, 1)),
      dH_HbuANH2(displayUnit="kJ/mol") = cat(
        1,
        fill(dH_HbuDANH2, 3),
        fill(dH_HbuDANH2 - dHo, 1)),
      dHz(displayUnit="kJ/mol") = cat(
        1,
        fill(dHzD, 3),
        fill(dHzO, 1)),
      dHc(displayUnit="kJ/mol") = cat(
        1,
        fill(dHcD, 3),
        fill(dHcO, 1)),
      dHh(displayUnit="kJ/mol") = cat(
        1,
        fill(dHhD, 3),
        fill(dHhO, 1)),
      storeState=storeResults,
      loadStarts=loadStarts)
      annotation (Placement(transformation(extent={{-24,40},{-4,60}})));
    Physiolibrary.Chemical.Examples.Hemoglobin.Hemoglobin_MKM_Specie Hb2(
      pKz=cat(
          1,
          fill(pKzD, 2),
          fill(pKzO, 2)),
      pKc=cat(
          1,
          fill(pKcD, 2),
          fill(pKcO, 2)),
      pKh=cat(
          1,
          fill(pKhD, 2),
          fill(pKhO, 2)),
      dH_HbuANH2(displayUnit="kJ/mol") = cat(
        1,
        fill(dH_HbuDANH2, 2),
        fill(dH_HbuDANH2 - dHo, 2)),
      dHz(displayUnit="kJ/mol") = cat(
        1,
        fill(dHzD, 2),
        fill(dHzO, 2)),
      dHc(displayUnit="kJ/mol") = cat(
        1,
        fill(dHcD, 2),
        fill(dHcO, 2)),
      dHh(displayUnit="kJ/mol") = cat(
        1,
        fill(dHhD, 2),
        fill(dHhO, 2)),
      storeState=storeResults,
      loadStarts=loadStarts)
      annotation (Placement(transformation(extent={{-24,0},{-4,20}})));
    Physiolibrary.Chemical.Examples.Hemoglobin.Hemoglobin_MKM_Specie Hb3(
      pKz=cat(
          1,
          fill(pKzD, 1),
          fill(pKzO, 3)),
      pKc=cat(
          1,
          fill(pKcD, 1),
          fill(pKcO, 3)),
      pKh=cat(
          1,
          fill(pKhD, 1),
          fill(pKhO, 3)),
      dH_HbuANH2(displayUnit="kJ/mol") = cat(
        1,
        fill(dH_HbuDANH2, 1),
        fill(dH_HbuDANH2 - dHo, 3)),
      dHz(displayUnit="kJ/mol") = cat(
        1,
        fill(dHzD, 1),
        fill(dHzO, 3)),
      dHc(displayUnit="kJ/mol") = cat(
        1,
        fill(dHcD, 1),
        fill(dHcO, 3)),
      dHh(displayUnit="kJ/mol") = cat(
        1,
        fill(dHhD, 1),
        fill(dHhO, 3)),
      storeState=storeResults,
      loadStarts=loadStarts)
      annotation (Placement(transformation(extent={{-24,-44},{-4,-24}})));
    Physiolibrary.Chemical.Examples.Hemoglobin.Hemoglobin_MKM_Specie Hb4(
      pKz=fill(pKzO, 4),
      pKc=fill(pKcO, 4),
      pKh=fill(pKhO, 4),
      dH_HbuANH2(displayUnit="kJ/mol") = fill(dH_HbuDANH2 - dHo, 4),
      dHz(displayUnit="kJ/mol") = fill(dHzO, 4),
      dHc(displayUnit="kJ/mol") = fill(dHcO, 4),
      dHh(displayUnit="kJ/mol") = fill(dHhO, 4),
      storeState=storeResults,
      loadStarts=loadStarts)
      annotation (Placement(transformation(extent={{-24,-88},{-4,-68}})));
    Physiolibrary.SteadyStates.Components.MolarConservationLaw totalHemoglobin(
      n=5,
      Total(displayUnit="mol") = 1,
      Simulation=Physiolibrary.Types.SimulationType.SteadyState,
      useTotalInput=true)
      annotation (Placement(transformation(extent={{56,6},{76,26}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a O2
      annotation (Placement(transformation(extent={{-94,-14},{-74,6}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a H3O
      annotation (Placement(transformation(extent={{58,76},{78,96}})));
    Physiolibrary.Chemical.Interfaces.ChemicalPort_a CO2
      annotation (Placement(transformation(extent={{60,-92},{80,-72}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput tHb
      annotation (Placement(transformation(extent={{36,22},{54,40}})));
equation
    connect(Hb1.H, Hb0.H) annotation (Line(
        points={{-4,58.6},{10,58.6},{10,96.6},{-4,96.6}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb4.H, Hb0.H) annotation (Line(
        points={{-4,-69.4},{10,-69.4},{10,96.6},{-4,96.6}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb2.H, Hb0.H) annotation (Line(
        points={{-4,18.6},{10,18.6},{10,96.6},{-4,96.6}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb1.CO2, Hb0.CO2) annotation (Line(
        points={{-4,44},{4,44},{4,82},{-4,82}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb2.CO2, Hb0.CO2) annotation (Line(
        points={{-4,4},{4,4},{4,82},{-4,82}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb0.Hbtn, K1.products[2]) annotation (Line(
        points={{-23.8,88},{-43.5,88},{-43.5,78}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb1.Hbtn, K1.substrates[1]) annotation (Line(
        points={{-23.8,50},{-44,50},{-44,58}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb1.Hbtn, K2.products[2]) annotation (Line(
        points={{-23.8,50},{-44,50},{-44,38},{-45.5,38}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb2.Hbtn, K2.substrates[1]) annotation (Line(
        points={{-23.8,10},{-46,10},{-46,18}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb2.Hbtn, K3.products[2]) annotation (Line(
        points={{-23.8,10},{-46,10},{-46,-8},{-47.5,-8}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb3.Hbtn, K3.substrates[1]) annotation (Line(
        points={{-23.8,-34},{-48,-34},{-48,-28}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb3.Hbtn, K4.products[2]) annotation (Line(
        points={{-23.8,-34},{-48,-34},{-48,-50},{-49.5,-50}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb4.Hbtn, K4.substrates[1]) annotation (Line(
        points={{-23.8,-78},{-50,-78},{-50,-70}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb4.tHb_u, totalHemoglobin.fragment[1]) annotation (Line(
        points={{-24,-85.8},{-30,-85.8},{-30,-96},{24,-96},{24,10.4},{56,10.4}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Hb3.tHb_u, totalHemoglobin.fragment[2]) annotation (Line(
        points={{-24,-41.8},{-30,-41.8},{-30,-48},{22,-48},{22,11.2},{56,11.2}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Hb2.tHb_u, totalHemoglobin.fragment[3]) annotation (Line(
        points={{-24,2.2},{-30,2.2},{-30,-4},{20,-4},{20,12},{56,12}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Hb1.tHb_u, totalHemoglobin.fragment[4]) annotation (Line(
        points={{-24,42.2},{-28,42.2},{-28,34},{18,34},{18,12.8},{56,12.8}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Hb0.tHb_u, totalHemoglobin.fragment[5]) annotation (Line(
        points={{-24,80.2},{-28,80.2},{-28,72},{20,72},{20,13.6},{56,13.6}},
        color={0,0,127},
        smooth=Smooth.None));

    connect(O2, K4.products[1]) annotation (Line(
        points={{-84,-4},{-68,-4},{-68,-38},{-50.5,-38},{-50.5,-50}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(O2, K3.products[1]) annotation (Line(
        points={{-84,-4},{-68,-4},{-68,4},{-48.5,4},{-48.5,-8}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(O2, K2.products[1]) annotation (Line(
        points={{-84,-4},{-68,-4},{-68,46},{-46.5,46},{-46.5,38}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(O2, K1.products[1]) annotation (Line(
        points={{-84,-4},{-68,-4},{-68,88},{-44.5,88},{-44.5,78}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb0.H, Hb3.H) annotation (Line(
        points={{-4,96.6},{10,96.6},{10,-25.4},{-4,-25.4}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb0.H, H3O) annotation (Line(
        points={{-4,96.6},{10,96.6},{10,86},{68,86}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb1.CO2, CO2) annotation (Line(
        points={{-4,44},{4,44},{4,-82},{70,-82}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(tHb, totalHemoglobin.total) annotation (Line(
        points={{45,31},{66,31},{66,24}},
        color={0,0,127},
        smooth=Smooth.None));
    connect(Hb4.CO2, CO2) annotation (Line(
        points={{-4,-84},{4,-84},{4,-82},{70,-82}},
        color={107,45,134},
        thickness=1,
        smooth=Smooth.None));
    connect(Hb3.CO2, CO2) annotation (Line(
      points={{-4,-40},{4,-40},{4,-82},{70,-82}},
      color={107,45,134},
      thickness=1,
      smooth=Smooth.None));
    annotation (          experiment(
        StopTime=15000,
        Tolerance=1e-014,
        __Dymola_Algorithm="Euler"), Documentation(info=
               "<html>
    <p>Ref: Mateják Marek, Kulhánek Tomáa, Matouaek Stanislav. Adair-Based Hemoglobin Equilibrium with Oxygen, Carbon Dioxide and Hydrogen Ion Activity. Scandinavian Journal of Clinical &AMP; Laboratory Investigation 2014</p>

    <p>Before silumation in &QUOT;Dymola 2014 FD01&QUOT; please set environment variable &QUOT;<code><b>Advanced.Define.NonLinearIterations&nbsp;=&nbsp;3&QUOT;</b></code> and chose &QUOT;Euler&QUOT; method!</p>
    <p>Parameters are chosen to fit following measurements:</p>
    <p>[1] Bauer C, Schr&ouml;der E. Carbamino compounds of haemoglobin in human adult and foetal blood. The Journal of physiology 1972;227:457-71.</p>
    <p>[2] Siggaard-Andersen O. Oxygen-Linked Hydrogen Ion Binding of Human Hemoglobin. Effects of Carbon Dioxide and 2, 3-Diphosphoglycerate I. Studies on Erythrolysate. Scandinavian Journal of Clinical &AMP; Laboratory Investigation 1971;27:351-60.</p>
    <p>[3] Severinghaus JW. Simple, accurate equations for human blood O2 dissociation computations. Journal of Applied Physiology 1979;46:599-602.</p>
    </html>", revisions="<html>
    <p><i>2014</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end Hemoglobin_MKM_Adair;