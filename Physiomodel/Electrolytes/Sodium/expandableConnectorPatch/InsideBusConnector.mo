within Physiomodel.Electrolytes.Sodium.expandableConnectorPatch;
record InsideBusConnector
    extends Physiomodel.Interfaces.SignalBusBlue;

    Modelica.Blocks.Interfaces.RealOutput BladderVoidFlow annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput A2Pool_Log10Conc annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput AldoPool_Aldo annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput BladderVolume_Mass annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput Artys_pH annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput CD_KA_Outflow annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput CO2Veins_cHCO3 annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput CellH2O_Vol annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput ECFV_Vol annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput GILumenPotassium_Mass annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput GILumenSodium_Mass annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput GILumenVolume_Mass annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput GlomerulusFiltrate_GFR annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput KAPool_Osmoles annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput KAPool_conc annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput KidneyAlpha_PT_NA annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput KidneyFunction_Effect annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput Kidney_NephronCount_Total_xNormal annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput LacPool_Mass_mEq annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput LacPool_Lac_mEq_per_litre annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput Medulla_Volume annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput NephronANP_Log10Conc annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput NephronAldo_conc_in_nG_per_dl annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput NephroneIFP_Pressure annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput VasaRecta_Outflow annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput liver_GlucoseToCellStorageFlow annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput
        skeletalMuscle_GlucoseToCellStorageFlow                                   annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));

    Modelica.Blocks.Interfaces.RealOutput KPool annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
    Modelica.Blocks.Interfaces.RealOutput ProteinAnions annotation (Placement(transformation(
              extent={{80,2},{100,22}}), iconTransformation(extent={{80,0},{120,40}})));
end InsideBusConnector;