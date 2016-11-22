within Physiomodel.Electrolytes.Sodium.expandableConnectorPatch;
record OutsideBusConnector
    extends Physiomodel.Interfaces.SignalBusBlue;

    Modelica.Blocks.Interfaces.RealInput BladderVoidFlow annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput A2Pool_Log10Conc annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput AldoPool_Aldo annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput BladderVolume_Mass annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput Artys_pH annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput CD_KA_Outflow annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput CO2Veins_cHCO3 annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput CellH2O_Vol annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput ECFV_Vol annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput GILumenPotassium_Mass annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput GILumenSodium_Mass annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput GILumenVolume_Mass annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput GlomerulusFiltrate_GFR annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput KAPool_Osmoles annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput KAPool_conc annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput KidneyAlpha_PT_NA annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput KidneyFunction_Effect annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput Kidney_NephronCount_Total_xNormal annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput LacPool_Mass_mEq annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput LacPool_Lac_mEq_per_litre annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput Medulla_Volume annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput NephronANP_Log10Conc annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput NephronAldo_conc_in_nG_per_dl annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput NephroneIFP_Pressure annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput VasaRecta_Outflow annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput liver_GlucoseToCellStorageFlow annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput
        skeletalMuscle_GlucoseToCellStorageFlow                                  annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));

    Modelica.Blocks.Interfaces.RealInput KPool annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
    Modelica.Blocks.Interfaces.RealInput ProteinAnions annotation (Placement(transformation(
              extent={{-120,0},{-80,40}}), iconTransformation(extent={{-120,0},{-80,
                40}})));
end OutsideBusConnector;