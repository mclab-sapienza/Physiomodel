within Physiomodel.Status;
model Failed
    parameter Real effectAtFailing=0.2;
    parameter Real effectAtRevitaling=0.4;

    Modelica.Blocks.Interfaces.RealInput FunctionEffect
                                           annotation (Placement(
    transformation(extent={{-118,-20},{-78,20}}), iconTransformation(extent=
       {{-120,-20},{-80,20}})));
    Modelica.Blocks.Interfaces.BooleanOutput
                                     Failed(start=false) annotation (Placement(transformation(
      extent={{80,-20},{120,20}}), iconTransformation(extent={{80,-20},{120,
        20}})));
    Boolean a(start=false);
    Boolean b(start=true);
    Boolean c(start=false);
    //initial equation
    //  c=false;
equation
  a=FunctionEffect<effectAtFailing;
  b=FunctionEffect>effectAtRevitaling;
  c=pre(Failed);
  Failed=a or ( c and ( not b));
end Failed;