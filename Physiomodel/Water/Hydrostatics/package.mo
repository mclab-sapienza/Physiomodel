within Physiomodel.Water;
package Hydrostatics "Hydrostatic pressure difference in upper, midle and lower torso"
block Constant "Generate constant signal of type Posture"
          parameter Posture k=Posture.Lying "Constant output value";

          PostureOutput y "Connector of Real output signal"
            annotation (Placement(transformation(extent={{100,-10},{120,10}})));
        equation
          y = k;

          annotation (
            Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2},
            initialScale=0.04), graphics={Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={0,0,255},
                    fillPattern=FillPattern.Solid,
                    fillColor={255,255,255}), Text(
                    extent={{-100,-40},{100,46}},
                    lineColor={0,0,0},
                    fillColor={255,255,255},
                    fillPattern=FillPattern.Solid,
                    textString="%k")}),
            Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={2,2},
            initialScale=0.04), graphics={Text(
                    extent={{-100,-100},{100,100}},
                    lineColor={0,0,0},
                    textString="%k")}),
            Documentation(info="<html>
            <p>
            The Real output y is a constant signal:
            </p>
            </html>"));
        end Constant;

        type Posture = enumeration(
            Lying,
            Sitting,
            Standing,
            Tilting,
            SteadyState);
        
        connector PostureInput = input Posture "'input Posture' as connector"
        annotation (defaultComponentName="u",
        Icon(graphics={Polygon(
              points={{-100,100},{100,0},{-100,-100},{-100,100}},
              lineColor={0,127,127},
              fillColor={0,127,127},
              fillPattern=FillPattern.Solid), Text(
              extent={{100,-50},{700,50}},
              lineColor={0,127,127},
              textString="%name")},
             coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.2)),
        Diagram(coordinateSystem(
              preserveAspectRatio=true, initialScale=0.2,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={Polygon(
              points={{0,50},{100,0},{0,-50},{0,50}},
              lineColor={0,127,127},
              fillColor={0,127,127},
              fillPattern=FillPattern.Solid), Text(
              extent={{-10,85},{-10,60}},
              lineColor={0,127,127},
              textString="%name")}),
              Documentation(info="<html>
                <p>
                Connector with one input signal of type Posture.
                </p>
            </html>"));

        connector PostureOutput =  output Posture "'input Posture' as connector"
        annotation (defaultComponentName="u",
        Icon(graphics={Polygon(
              points={{-100,100},{100,0},{-100,-100},{-100,100}},
              lineColor={0,127,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid), Text(
              extent={{100,-50},{700,50}},
              lineColor={0,127,127},
              textString="%name")},
           coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.2)),
        Diagram(coordinateSystem(
            preserveAspectRatio=true, initialScale=0.2,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics={Polygon(
              points={{0,50},{100,0},{0,-50},{0,50}},
              lineColor={0,127,127},
              fillColor={0,127,127},
              fillPattern=FillPattern.Solid), Text(
              extent={{-10,85},{-10,60}},
              lineColor={0,127,127},
              textString="%name")}),
        Documentation(info="<html>
        <p>
        Connector with one input signal of type Posture.
        </p>
        </html>"));

end Hydrostatics;