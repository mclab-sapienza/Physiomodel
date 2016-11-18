within Physiomodel.Water;
model InsensibleLungs
        extends Physiolibrary.Icons.Lungs;
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-84,67},{-64,87}}), iconTransformation(extent=
             {{60,60},{80,80}})));
        Modelica.Blocks.Math.Product product
        annotation (Placement(transformation(extent={{-44,34},{-24,54}})));
        Modelica.Blocks.Math.Feedback feedback
        annotation (Placement(transformation(extent={{-44,2},{-24,22}})));
        Modelica.Blocks.Math.Division division
        annotation (Placement(transformation(extent={{28,-10},{48,10}})));
        Modelica.Blocks.Math.Product product1
        annotation (Placement(transformation(extent={{-10,8},{10,28}})));
        Physiolibrary.Types.Constants.PressureConst pressureConstant(k=
          6266.152208505)
        annotation (Placement(transformation(extent={{-66,16},{-58,24}})));
        Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=0.80E-3)
        annotation (Placement(transformation(extent={{-64,56},{-56,64}})));
        Physiolibrary.Osmotic.Sources.SolventOutflux vapor(useSolutionFlowInput=
          true)
        annotation (Placement(transformation(extent={{64,-36},{84,-16}})));
        Physiolibrary.Osmotic.Interfaces.OsmoticPort_b q_out
        annotation (Placement(transformation(extent={{-36,-36},{-16,-16}})));
    equation
            connect(busConnector.BarometerPressure, division.u2) annotation (Line(
              points={{-74,77},{-74,-6},{26,-6}},
              color={0,0,255},
              thickness=0.5,
              smooth=Smooth.None), Text(
              string="%first",
              index=-1,
              extent={{-6,3},{-6,3}}));
            connect(product1.y, division.u1) annotation (Line(
              points={{11,18},{18,18},{18,6},{26,6}},
              color={0,0,127},
              smooth=Smooth.None));
            connect(feedback.y, product1.u2) annotation (Line(
              points={{-25,12},{-12,12}},
              color={0,0,127},
              smooth=Smooth.None));
            connect(pressureConstant.y, feedback.u1) annotation (Line(
              points={{-57,20},{-50,20},{-50,12},{-42,12}},
              color={0,0,127},
              smooth=Smooth.None));
            connect(busConnector.EnvironmentRelativeHumidity, feedback.u2)
            annotation (Line(
              points={{-74,77},{-74,4},{-34,4}},
              color={0,0,255},
              thickness=0.5,
              smooth=Smooth.None), Text(
              string="%first",
              index=-1,
              extent={{-6,3},{-6,3}}));
            connect(product.y, product1.u1) annotation (Line(
              points={{-23,44},{-18,44},{-18,24},{-12,24}},
              color={0,0,127},
              smooth=Smooth.None));
            connect(busConnector.BreathingTotalVentilation, product.u2) annotation (
              Line(
              points={{-74,77},{-74,38},{-46,38}},
              color={0,0,255},
              thickness=0.5,
              smooth=Smooth.None), Text(
              string="%first",
              index=-1,
              extent={{-6,3},{-6,3}}));
            connect(Constant.y, product.u1) annotation (Line(
              points={{-55,60},{-52,60},{-52,50},{-46,50}},
              color={0,0,127},
              smooth=Smooth.None));
            connect(vapor.q_in, q_out) annotation (Line(
              points={{68,-26},{-26,-26}},
              color={127,127,0},
              thickness=1,
              smooth=Smooth.None));
            connect(division.y, vapor.solutionFlow) annotation (Line(
            points={{49,0},{74,0},{74,-19}},
            color={0,0,127},
            smooth=Smooth.None));
            annotation ( Icon(coordinateSystem(
                  preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                graphics={Text(
                  extent={{-153,-59},{128,-84}},
                  lineColor={0,0,255},
                  textString="%name")}));
    end InsensibleLungs;