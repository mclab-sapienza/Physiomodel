within Physiomodel.Water.TissuesVolume;
model Tissue
    "compute tissue size from global interstitial and cell H20 volume"

    parameter Physiolibrary.Types.Fraction FractIFV;
    parameter Physiolibrary.Types.Fraction FractOrganH2O;

    Physiolibrary.Types.RealIO.VolumeInput InterstitialWater_Vol
      annotation (Placement(transformation(extent={{-120,60},{-80,100}})));
    Physiolibrary.Types.RealIO.VolumeInput CellH2O_Vol
      annotation (Placement(transformation(extent={{-120,20},{-80,60}})));
    Physiolibrary.Types.RealIO.VolumeOutput LiquidVol
    "all tissue water volume"
      annotation (Placement(transformation(extent={{80,60},{120,100}}),
          iconTransformation(extent={{80,60},{120,100}})));
    Physiolibrary.Types.RealIO.VolumeOutput OrganH2O
    "tissue cells water volume"
      annotation (Placement(transformation(extent={{80,20},{120,60}}),
          iconTransformation(extent={{80,20},{120,60}})));

    Physiolibrary.Types.RealIO.VolumeOutput InterstitialWater
    "tissue interstitial water volume"
      annotation (Placement(transformation(extent={{80,20},{120,60}}),
          iconTransformation(extent={{80,-20},{120,20}})));
equation
    OrganH2O = FractOrganH2O * CellH2O_Vol;
    LiquidVol = FractIFV*InterstitialWater_Vol + OrganH2O;
    InterstitialWater = LiquidVol - OrganH2O;
    annotation ( Icon(coordinateSystem(preserveAspectRatio=false,
                extent={{-100,-100},{100,100}}), graphics={
      Text(
        extent={{-72,64},{64,96}},
        lineColor={0,0,0},
        fillPattern=FillPattern.VerticalCylinder,
        fillColor={215,215,215},
        textString="IST .. %FractIFV"),
      Text(
        extent={{-72,26},{64,58}},
        lineColor={0,0,0},
        fillPattern=FillPattern.VerticalCylinder,
        fillColor={215,215,215},
        textString="ICF .. %FractOrganH2O"),
      Text(
        extent={{-98,-104},{102,-120}},
        lineColor={0,0,255},
        textString="%name"),
      Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end Tissue;
