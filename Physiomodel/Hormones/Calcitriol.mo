within Physiomodel.Hormones;

model Calcitriol
    extends Physiolibrary.Icons.Kidney;
    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-86,72},{-66,92}})));

    model One_alpha_OH

        function H
        input Real x;
        input Real alpha;
        input Real delta;
        input Real gamma=1;
        output Real value;
        algorithm
        value:=alpha*x^gamma/(delta^gamma+x^gamma);
        end H;

        function H_minus
        input Real x;
        input Real alpha;
        input Real delta;
        input Real gamma=1;
        input Real ro;
        output Real value;
        algorithm
        value:=alpha-(alpha-ro)*x^gamma/(delta^gamma+x^gamma);
        end H_minus;

        Modelica.Blocks.Interfaces.RealInput PO4
          annotation (Placement(transformation(extent={{-110,-64},{-70,-24}}),
              iconTransformation(extent={{-100,-60},{-60,-20}})));
        Modelica.Blocks.Interfaces.RealInput PTH
          annotation (Placement(transformation(extent={{-110,40},{-70,80}}),
              iconTransformation(extent={{-100,40},{-60,80}})));
        Modelica.Blocks.Interfaces.RealOutput One_alpha_OH
          annotation (Placement(transformation(extent={{56,-18},{96,22}}),
              iconTransformation(extent={{60,-20},{100,20}})));

        initial equation
            //One_alpha_OH = 126;
            der( One_alpha_OH)  = 0;
    equation 
        der( One_alpha_OH)  = 6.3*H(PTH, 1.90371, 1.549,0.1112)*( if PO4<=16.8/14 then 1 else H_minus(PO4,1.525,1.302,8.252,-1.78249))  -0.05 *One_alpha_OH;
        //H7,9:alpha was calculated,
    end One_alpha_OH;
    One_alpha_OH one_alpha_OH
    annotation (Placement(transformation(extent={{-26,16},{-6,36}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePump secretion1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{-6,-10},{14,10}})));
    Physiolibrary.Chemical.Components.Substance Calcitriol_pool(
    stateName="Calcitriol.Mass",
    useNormalizedVolume=false,
    solute_start=(1260)/1000)
    annotation (Placement(transformation(extent={{10,-32},{30,-12}})));
    Physiolibrary.Chemical.Sources.UnlimitedSolutePumpOut clearance1(
    useSoluteFlowInput=true)
    annotation (Placement(transformation(extent={{60,-12},{80,-32}})));
    Modelica.Blocks.Math.Gain gain1(k=0.1)
      annotation (Placement(transformation(extent={{54,-40},{60,-34}})));
    Modelica.Blocks.Math.Gain mlTOlitre(k=0.001)
                                 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        origin={-2,-16})));
    Physiolibrary.Chemical.Sensors.ConcentrationMeasure concentrationMeasure
     annotation (Placement(transformation(
      extent={{-10,-10},{10,10}},
      origin={30,0})));
equation

    connect(gain1.y, clearance1.soluteFlow) annotation (Line(
    points={{60.3,-37},{74,-37},{74,-26}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(Calcitriol_pool.solute, gain1.u) annotation (Line(
    points={{26,-32},{26,-37},{53.4,-37}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ECFV_Vol,mlTOlitre. u) annotation (Line(
      points={{-76,82},{-76,-16},{-6.8,-16}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(mlTOlitre.y, Calcitriol_pool.solutionVolume) annotation (Line(
    points={{2.4,-16},{10,-16},{10,-18},{16,-18}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(secretion1.q_out, Calcitriol_pool.q_out) annotation (Line(
      points={{14,0},{20,0},{20,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(Calcitriol_pool.q_out, clearance1.q_in) annotation (Line(
      points={{20,-22},{60,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(one_alpha_OH.One_alpha_OH, secretion1.soluteFlow) annotation (Line(
    points={{-8,26},{8,26},{8,4}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.PTH, one_alpha_OH.PTH) annotation (Line(
      points={{-76,82},{-76,32},{-24,32}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(busConnector.ctPO4, one_alpha_OH.PO4) annotation (Line(
      points={{-76,82},{-76,22},{-24,22}},
      color={0,0,255},
      thickness=0.5,
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
    connect(concentrationMeasure.q_in, Calcitriol_pool.q_out) annotation (
      Line(
      points={{30,-2},{20,-2},{20,-22}},
      color={200,0,0},
      thickness=1,
      smooth=Smooth.None));
    connect(concentrationMeasure.concentration, busConnector.Calcitriol)
    annotation (Line(
    points={{30,4},{30,78},{-76,78},{-76,82}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    annotation ( Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics={Text(
          extent={{-96,94},{104,114}},
          lineColor={0,0,255},
          textString="%name")}));
end Calcitriol;