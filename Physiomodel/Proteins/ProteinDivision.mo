within Physiomodel.Proteins;
model ProteinDivision "60% of total plasma protein mass are albumin"
    Physiolibrary.Types.RealIO.ConcentrationInput totalProteins
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
    Physiolibrary.Types.RealIO.ConcentrationOutput albumin
    annotation (Placement(transformation(extent={{90,50},{110,70}})));
    Physiolibrary.Types.RealIO.MassConcentrationOutput nonAlbumin
    annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
    Physiolibrary.Types.RealIO.ConcentrationOutput nonAlbuminMolarConc
    annotation (Placement(transformation(extent={{90,-90},{110,-70}})));
    //  Physiolibrary.Types.MassConcentration tProtMassConc;
    //  Physiolibrary.Types.MassConcentration albuminMassConc;
    //  parameter Physiolibrary.Types.MolarMass albuminMM=66.5 "albumin molar mass";

    protected
    Physiolibrary.Types.MolarMass nonAlbuminMM
    "average molar mass of non-albumin proteins";
equation
    /* totalProteins = ProteinsMassConcentration2Concentration(tProtMassConc);
    albuminMassConc = 0.6 * tProtMassConc;
    nonAlbumin = tProtMassConc - albuminMassConc;
    albumin = albuminMassConc / 66.5;
    nonAlbuminMolarConc = totalProteins - albumin; */

    albumin = totalProteins * (0.63/1.45);
    nonAlbuminMolarConc = totalProteins - albumin;
    nonAlbumin = nonAlbuminMM * nonAlbuminMolarConc;

    // inversion of totalProteins=(320*101325/760)/(310.15*8.314) *0.001*tProtMassConc + (1160*101325/760)/(310.15*8.314)* (0.001*tProtMassConc)^2;
    //  tProtMassConc = 0.0000170159 * (-8.106e6 + 63.6632 * ((1.6212e10 + 1.4208e10 * totalProteins)^0.5));
    // linear aproximation at point totalProteins = 1.45 mmol/l :
    nonAlbuminMM = 34.16-10*(totalProteins-1.45);
end ProteinDivision;
