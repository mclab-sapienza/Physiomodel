within Physiomodel.CardioVascular.Circulation.Interfaces;
model ISequesteredBlood
    extends Physiolibrary.Icons.BloodSequesteredCompartment;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a referencePoint
        annotation (extent=[-10,-110; 10,-90], Placement(transformation(
        extent={{-110,-10},{-90,10}}), iconTransformation(extent={{-10,
        -10},{10,10}})));
    Physiolibrary.Types.RealIO.PressureInput ExternalPressure "external pressure around the compartment"                              annotation (extent = [-100,90;-80,110], rotation = -90);

    Physiolibrary.Types.RealIO.PressureOutput Pressure "blod pressure in compartment"
        annotation (Placement(transformation(extent={{30,-110},{50,-90}}, rotation=-90)));
    Physiolibrary.Types.RealIO.VolumeOutput Vol "blood volume in compartment"
        annotation (Placement(transformation(extent={{-50,-110},{-30,-90}}, rotation=-90)));

    annotation (
        Documentation(info="<HTML>
        </HTML>
    "));
end ISequesteredBlood;