within Physiomodel.Hormones;
package IO_EPO
    extends Physiolibrary.Types.IO_Bus( redeclare package
    PhysiolibTypesRealTypes =
      EPO_Physiolibrary.Types.RealTypes);
    redeclare model extends Variables
        extends Physiolibrary.Icons.Hormones;

        //Variable NephronADH_conc(varName="NephronADH.[ADH]")
        //    "Nephron vasopresine concentration. [ng/l]"
        //annotation (Placement(transformation(extent={{-36,170},{-30,176}})));

        T.Concentration EPOPool(
        varName="EPOPool.[EPO]", storeUnit="iu/l")
        "Erythropoetin concentration."
        annotation (Placement(transformation(extent={{-40,48},{-34,54}})));
    equation

        connect(EPOPool.y, busConnector.Erythropoietin) annotation (Line(
        points={{-33.7,51},{90,51},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Text(
            extent={{18,138},{100,100}},
            lineColor={0,0,0},
            textString="vars"), Text(
            extent={{-118,-104},{124,-138}},
            lineColor={0,0,255},
        textString="%name")}));
    end Variables;
end IO_EPO;