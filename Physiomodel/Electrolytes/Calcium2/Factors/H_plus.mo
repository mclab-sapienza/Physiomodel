within Physiomodel.Electrolytes.Calcium2.Factors;
model H_plus
    extends Physiolibrary.Icons.BaseFactorIcon3;
    Modelica.Blocks.Interfaces.RealInput u
              annotation (Placement(transformation(extent={{-118,44},{-78,
            84}}),
        iconTransformation(extent={{-108,-10},{-88,10}})));
    parameter Real alpha "maximum responce";
    parameter Real delta "affinity";
    parameter Real gamma=1 "exponent";
    parameter Real ro "minimum responce";
    Real effect;
equation
    effect = ro+(alpha-ro)*u^gamma/(delta^gamma+u^gamma);
    y = effect * yBase;
    annotation ( Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end H_plus;