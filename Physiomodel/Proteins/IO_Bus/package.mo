within Physiomodel.Proteins;
package IO_Bus
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables

        T.Concentration ctAlb(varName="ctAlb")
        "Blood molar albumin concentration."
        annotation (Placement(transformation(extent={{-36,50},{-30,56}})));
        T.MassConcentration ctGlb(varName="ctGlb", storeUnit="g/l")
        "Blood globolins mass concentration."
        annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
        /*T.VolumeDensityOfCharge NBB(varName="BloodIons.Protein")
        annotation (Placement(transformation(extent={{-42,64},{-24,82}})));*/
        T.AmountOfSubstance UT_InterstitialProtein_Mass(varName="UT_InterstitialProtein.Mass")
        "Upper tissue interstitial protein."
        annotation (Placement(transformation(extent={{-36,26},{-30,32}})));
        T.AmountOfSubstance PlasmaProtein_Mass(varName="PlasmaProtein.Mass")
        "Plasma proteins."
        annotation (Placement(transformation(extent={{-36,-12},{-30,-6}})));
        T.AmountOfSubstance MT_InterstitialProtein_Mass(varName="MT_InterstitialProtein.Mass")
        "Middle torso interstitional proteins."
        annotation (Placement(transformation(extent={{-36,-44},{-30,-38}})));
        T.AmountOfSubstance LT_InterstitialProtein_Mass(varName="LT_InterstitialProtein.Mass")
        "Lower torso interstitial protein mass."
        annotation (Placement(transformation(extent={{-38,-90},{-32,-84}})));
    equation

        connect(ctAlb.y, busConnector.ctAlb) annotation (Line(
        points={{-29.7,53},{90,53},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        /*    connect(NBB.y, busConnector.BloodIons_ProteinAnions) annotation (Line(
        points={{-23.1,73},{79,73},{79,5}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));*/
        connect(ctGlb.y, busConnector.ctGlb) annotation (Line(
        points={{-29.7,63},{90,63},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(UT_InterstitialProtein_Mass.y, busConnector.UT.InterstitialProtein_Mass)
        annotation (Line(
        points={{-29.7,29},{90,29},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(MT_InterstitialProtein_Mass.y, busConnector.MT.InterstitialProtein_Mass)
        annotation (Line(
        points={{-29.7,-41},{90,-41},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(LT_InterstitialProtein_Mass.y, busConnector.LT.InterstitialProtein_Mass)
        annotation (Line(
        points={{-31.7,-87},{90,-87},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        connect(PlasmaProtein_Mass.y, busConnector.PlasmaProtein_Mass) annotation (
        Line(
        points={{-29.7,-9},{90,-9},{90,-2}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
          Text(
            extent={{18,120},{100,82}},
            lineColor={0,0,0},
            textString="vars"),
          Text(
            extent={{-122,-98},{120,-132}},
            lineColor={0,0,255},
            textString="%name")}));
    end Variables;
end IO_Bus;