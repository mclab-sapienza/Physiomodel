within Physiomodel.CardioVascular.Circulation.Interfaces;
partial model IVascularElasticBloodCompartment
    extends Physiolibrary.Icons.ElasticBalloon;

    Physiolibrary.Hydraulic.Interfaces.HydraulicPort_a referencePoint
      annotation (extent=[-10,-110; 10,-90], Placement(transformation(
            extent={{-110,-10},{-90,10}}), iconTransformation(extent={{-10,
              -10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput V0(
                                           final quantity="Volume", final displayUnit="ml")
      "maximal nonstressed volume"                                                                                annotation (extent = [-70,90;-50,110], rotation = -90);
    Modelica.Blocks.Interfaces.RealInput ExternalPressure(
                                                        final quantity="Pressure", final displayUnit="mmHg")
      "external pressure around the compartment"                              annotation (extent = [-10,90;10,110], rotation = -90);
    Modelica.Blocks.Interfaces.RealInput Compliance(
                                                    final quantity="Compliance", final displayUnit="ml/mmHg")
      "elasticity of the stressed walls"                               annotation (extent = [50,90;70,110], rotation = -90);

    Modelica.Blocks.Interfaces.RealOutput Pressure(  final quantity="Pressure", final displayUnit="mmHg")
      "blod pressure in compartment"
        annotation (Placement(transformation(extent={{30,-110},{50,-90}}, rotation=-90)));
     // Real Vol "blood volume in compartment";

    parameter Real initialVol = 0;
    Modelica.Blocks.Interfaces.RealOutput Vol(start=initialVol, 
        final quantity = "Volume", 
        final displayUnit= "ml") "blood volume in compartment"
        annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                        rotation=270,
                        origin={-40,-100})));

                 // parameter Real initialVol = 0;
                 annotation (
                    preferredView = text,
                    Documentation(info="<HTML>

        </HTML>
        "));
end IVascularElasticBloodCompartment;