within Physiomodel.Electrolytes.Phosphate;

model GlomerulusStrongAnionFiltration
    Physiolibrary.Chemical.Interfaces.ChemicalPort_b q_out annotation (extent=
    [-10,-110; 10,-90], Placement(transformation(extent={{90,-10},{110,
        10}})));

    Physiolibrary.Chemical.Interfaces.ChemicalPort_a q_in annotation (
    Placement(transformation(extent={{-120,-20},{-80,20}}),
    iconTransformation(extent={{-110,-10},{-90,10}})));

    Physiolibrary.Types.RealIO.VolumeDensityOfChargeInput Cations
                                        annotation (Placement(
      transformation(extent={{-80,30},{-40,70}}), iconTransformation(
      extent={{-20,-20},{20,20}},
      rotation=270,
      origin={-60,50})));
    Physiolibrary.Types.RealIO.VolumeDensityOfChargeInput ProteinAnions
    annotation (Placement(
      transformation(extent={{-40,30},{0,70}}), iconTransformation(
      extent={{-20,-20},{20,20}},
      rotation=270,
      origin={-20,50})));
    Physiolibrary.Types.Fraction KAdjustment;
    //Real Cations( final quantity="Concentration", final unit = "mEq/l");
    Physiolibrary.Types.VolumeDensityOfCharge Anions;
    //  Real ProteinAnions( final quantity="Concentration", final unit = "mEq/l");
    /*  Library.Interfaces.RealInput_ HCO3(final quantity="Concentration",
    final displayUnit="mEq/l")                                                                               annotation (Placement(
    transformation(extent={{0,30},{40,70}}),  iconTransformation(
    extent={{-20,-20},{20,20}},
    rotation=270,
    origin={20,50})));
    */
equation
    q_in.q + q_out.q = 0;
    //Cations = q_in.conc*1000+otherCations;
    Anions = Cations;
    //  ProteinAnions = Anions - otherStrongAnions - q_in.conc*1000 - HCO3;
    KAdjustment = (Cations-(Anions-ProteinAnions))/(Cations+(Anions-ProteinAnions));
    q_out.conc = (1+KAdjustment)*q_in.conc;

    annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{
      100,100}}), graphics={
    Rectangle(
    extent={{-100,-50},{100,50}},
    lineColor={0,0,127},
    fillColor={255,255,255},
    fillPattern=FillPattern.Solid),
    Text(
    extent={{-150,-100},{150,-60}},
    textString="%name",
    lineColor={0,0,255}),
    Line(
    points={{0,42},{0,26}},
    color={0,0,255},
    smooth=Smooth.None,
    thickness=0.5),
    Line(
    points={{0,20},{0,4}},
    color={0,0,255},
    smooth=Smooth.None,
    thickness=0.5),
    Line(
    points={{0,-4},{0,-20}},
    color={0,0,255},
    smooth=Smooth.None,
    thickness=0.5),
    Line(
    points={{0,-26},{0,-42}},
    color={0,0,255},
    smooth=Smooth.None,
    thickness=0.5)}));
end GlomerulusStrongAnionFiltration;