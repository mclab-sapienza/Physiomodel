within Physiomodel.Water.Hydrostatics;


        model Real2Posture "Convert Real to type Posture"
            extends Physiolibrary.Icons.ConversionIcon;

            PostureOutput y "Connector of Real output signal"
            annotation (Placement(transformation(extent={{60,-20},{80,0}}), iconTransformation(extent={{100,-20},{140,20}})));

            Modelica.Blocks.Interfaces.RealInput u
                                          annotation (Placement(transformation(extent={{-130,
                    -20},{-90,20}}),      iconTransformation(extent={{-140,-20},{-100,20}})));
            Integer tmp;
        equation
            tmp = integer(u);
            y = if tmp <= 0 then Posture.Lying elseif tmp == 1 then Posture.Sitting
            elseif tmp == 2 then Posture.Standing
            elseif tmp == 3 then Posture.Tilting else Posture.SteadyState;
            annotation (
            Documentation(info="<html>
            <p>
            The Real output y is a constant signal:
            </p>
            </html>"));
        end Real2Posture;
        