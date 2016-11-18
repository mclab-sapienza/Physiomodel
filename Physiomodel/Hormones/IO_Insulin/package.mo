within Physiomodel.Hormones;
package IO_Insulin
       extends Physiolibrary.Types.IO_Bus(
                             PhysiolibTypesRealTypes=Insulin_Physiolibrary.Types.RealTypes);
    redeclare model extends Variables
        extends Physiolibrary.Types.IO_Bus.IVariables;
        extends Physiolibrary.Icons.NutrientsMetabolism;

        T.Concentration         Insulin(varName="InsulinPool.[Insulin]", storeUnit="uiu/ml")
        "Insulin extracellular concentration."
        annotation (Placement(transformation(extent={{-68,2},{-62,8}})));
        T.Concentration         PortalVein_Insulin(varName="PortalVein-Insulin.[Insulin]", storeUnit="uiu/ml")
        "Insulin portal vein concentration."
        annotation (Placement(transformation(extent={{-70,-14},{-64,-8}})));
    equation
        connect(PortalVein_Insulin.y, busConnector.PortalVein_Insulin) annotation (Line(
        points={{-63.7,-11},{90,-11},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(Insulin.y, busConnector.Insulin) annotation (Line(
        points={{-61.7,5},{90,5},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
                                Text(
            extent={{-120,-104},{122,-138}},
            lineColor={0,0,255},
        textString="%name")}));
    end Variables;
end IO_Insulin;
