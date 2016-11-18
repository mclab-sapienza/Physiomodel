within Physiomodel.Water;


    model WaterProperties
        extends Physiolibrary.Icons.Water;
        Osmoles.OsmBody osmBody(ECFV(start=14600)) "intra/extracellular water"
        annotation (Placement(transformation(extent={{-84,-22},{-64,-2}})));
        Hydrostatics.Hydrostatics hydrostatics
        annotation (Placement(transformation(extent={{-62,62},{-38,86}})));
        Modelica.Blocks.Math.Feedback sub
        annotation (Placement(transformation(extent={{-4,4},{4,-4}},
            rotation=90,
            origin={-34,4})));
        Physiolibrary.Blocks.Math.Parts CellH2O(nout=3, w={0.2,0.5,0.3})
        annotation (Placement(transformation(extent={{-28,22},{-16,34}})));
        Modelica.Blocks.Math.Sum BodyH2O1(nin=9)
        annotation (Placement(transformation(extent={{74,-50},{66,-42}})));
        Physiolibrary.Types.BusConnector busConnector annotation (Placement(
          transformation(extent={{-12,34},{0,46}}), iconTransformation(extent={
              {-118,62},{-80,100}})));
        TissuesVolume.Tissues tissues
        annotation (Placement(transformation(extent={{-70,15},{-50,35}})));
        Modelica.Blocks.Math.Sum InterstitialWater(nin=3)
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},
            rotation=180,
            origin={48,54})));
        Modelica.Blocks.Math.Sum ExternalH2O(nin=3)
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},
            rotation=180,
            origin={54,26})));
        Modelica.Blocks.Math.Sum IntravascularVol(nin=2)
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},
            rotation=180,
            origin={74,-8})));
        Modelica.Blocks.Math.Sum ExtravascularVol(nin=3)
        annotation (Placement(transformation(extent={{4,-4},{-4,4}},
            rotation=180,
            origin={74,8})));
        Modelica.Blocks.Math.Sum BodyH2O(nin=2)
        annotation (Placement(transformation(extent={{62,-38},{54,-30}})));
        Modelica.Blocks.Math.Sum BodyH2O_Gain(nin=4)
        annotation (Placement(transformation(extent={{28,-66},{44,-50}})));
        Modelica.Blocks.Math.Feedback BodyH2O_Change
        annotation (Placement(transformation(extent={{62,-74},{82,-54}})));
        Modelica.Blocks.Math.Sum BodyH2O_Loss(nin=8)
        annotation (Placement(transformation(extent={{38,-96},{54,-80}})));
        Modelica.Blocks.Math.Sum sweatDuct(nin=3)
        annotation (Placement(transformation(extent={{14,75},{30,91}})));
        Modelica.Blocks.Math.Sum insensibleSkin(nin=3)
        annotation (Placement(transformation(extent={{72,68},{88,84}})));
        Modelica.Blocks.Math.Add3 ICFVOsmoles(k1=0.89)
        annotation (Placement(transformation(extent={{-54,-43},{-40,-29}})));
        Physiolibrary.Types.Constants.AmountOfSubstanceConst OsmCell_UnknownOsmoles(k=0.354)
        annotation (Placement(transformation(extent={{-80,-46},{-72,-38}})));
        Modelica.Blocks.Math.Product vaporFlow
        annotation (Placement(transformation(extent={{-24,-86},{-16,-78}})));
        Modelica.Blocks.Math.Feedback pressureDrop
        annotation (Placement(transformation(extent={{-56,-71},{-44,-59}})));
        Modelica.Blocks.Math.Division H2OFraction
        annotation (Placement(transformation(extent={{-38,-77},{-30,-69}})));
        Physiolibrary.Types.Constants.PressureConst pressureConstant(k=
          6266.152208505)
        annotation (Placement(transformation(extent={{-76,-62},{-68,-54}})));
        Physiolibrary.Types.Constants.FractionConst             Constant(k(
          displayUnit="1") = 0.0008)
        annotation (Placement(transformation(extent={{-90,-96},{-82,-88}})));
        Modelica.Blocks.Math.Product HeatInsensibleLung_H2O
        annotation (Placement(transformation(extent={{-66,-99},{-58,-91}})));
        Osmoles.ActiveOsmolesFake2 activeOsmolesFake
        annotation (Placement(transformation(extent={{16,-39},{36,-19}})));
    equation
        connect(osmBody.ICFV, sub.u1)      annotation (Line(
          points={{-63.6,-4},{-34,-4},{-34,0.8}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(sub.y, CellH2O.u)      annotation (Line(
          points={{-34,7.6},{-34,28},{-29.2,28}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(CellH2O.y[1], busConnector.UT_Cell_H2O)  annotation (Line(
          points={{-15.4,27.6},{-12,24},{-6,24},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(CellH2O.y[2], busConnector.MT_Cell_H2O)  annotation (Line(
          points={{-15.4,28},{-6,28},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(CellH2O.y[3], busConnector.LT_Cell_H2O)  annotation (Line(
          points={{-15.4,28.4},{-12,32},{-6,32},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(osmBody.OsmBody_Osm_conc_CellWalls, busConnector.OsmBody_Osm_conc_CellWalls)
        annotation (Line(
          points={{-63.6,-12},{-6,-12},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.Status_Posture, hydrostatics.Status_Posture)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,83.6},{-60.8,83.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.SystemicArtys_Pressure, hydrostatics.SystemicArtys_Pressure)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,71.6},{-60.8,71.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.RightAtrium_Pressure, hydrostatics.RightAtrium_Pressure)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,76.4},{-60.8,76.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.LegMusclePump_Effect, hydrostatics.LegMusclePump_Effect)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,64.4},{-60.8,64.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.OsmECFV_Electrolytes, osmBody.OsmECFV_Electrolytes)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,-2},{-82.8,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.OsmCell_Electrolytes, osmBody.OsmCell_Electrolytes)
        annotation (Line(
          points={{-6,40},{-86,40},{-86,-6},{-82.8,-6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.RBCH2O_Vol, sub.u2)              annotation (Line(
          points={{-6,40},{-86,40},{-86,4},{-37.2,4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

        connect(busConnector, tissues.busConnector)         annotation (Line(
          points={{-6,40},{-6,39},{-68.8,39},{-68.8,34.2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(sub.y, busConnector.CellH2O_Vol)              annotation (Line(
          points={{-34,7.6},{-34,40},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(InterstitialWater.y, busConnector.InterstitialWater_Vol)
        annotation (Line(
          points={{52.4,54},{100,54},{100,40},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(osmBody.ECFV, busConnector.ECFV_Vol)         annotation (Line(
          points={{-63.6,-8},{-6,-8},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

        connect(osmBody.ICFV, busConnector.ICFV_Vol) annotation (Line(
          points={{-63.6,-4},{-6,-4},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(osmBody.Osmoreceptors, busConnector.Osmreceptors) annotation (
          Line(
          points={{-63.6,-16},{-6,-16},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(busConnector.UreaECF_Osmoles, osmBody.UreaECF) annotation (Line(
          points={{-6,40},{-86,40},{-86,-10},{-82.8,-10}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.UreaICF_Osmoles, osmBody.UreaICF) annotation (Line(
          points={{-6,40},{-86,40},{-86,-14},{-82.8,-14}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.GlucoseECF_Osmoles, osmBody.GlucoseECF) annotation (Line(
          points={{-6,40},{-86,40},{-86,-18},{-82.8,-18}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

        /*  connect(busConnector.ExcessLungWater_Volume, BodyH2O.u[6]) annotation (Line(
        points={{-6,40},{88,40},{88,-25.5429},{32.8,-25.5429}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        connect(busConnector.PeritoneumSpace_Vol, BodyH2O.u[7]) annotation (Line(
        points={{-6,40},{88,40},{88,-25.3143},{32.8,-25.3143}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None));
        */

        connect(busConnector.ExcessLungWater_Volume, ExternalH2O.u[1]) annotation (
          Line(
          points={{-6,40},{14,40},{14,30},{44,30},{44,26.5333},{49.2,26.5333}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,6},{-6,6}}));
        connect(busConnector.GILumenVolume_Mass, ExternalH2O.u[2]) annotation (Line(
          points={{-6,40},{14,40},{14,26},{49.2,26}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,2},{-6,2}}));
        connect(busConnector.PeritoneumSpace_Vol, ExternalH2O.u[3]) annotation (Line(
          points={{-6,40},{14,40},{14,20},{44,20},{44,25.4667},{49.2,25.4667}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-3},{-6,-3}}));
        connect(busConnector.PlasmaVol, IntravascularVol.u[1]) annotation (Line(
          points={{-6,40},{14,40},{14,-6},{66,-6},{66,-7.6},{69.2,-7.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.RBCH2O_Vol, IntravascularVol.u[2]) annotation (Line(
          points={{-6,40},{14,40},{14,-12},{66,-12},{66,-8.4},{69.2,-8.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-2},{-6,-2}}));
        connect(ExternalH2O.y, ExtravascularVol.u[1]) annotation (Line(
          points={{58.4,26},{66,26},{66,8.53333},{69.2,8.53333}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.CellH2O_Vol, ExtravascularVol.u[2]) annotation (Line(
          points={{-6,40},{14,40},{14,10},{66,10},{66,8},{69.2,8}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.InterstitialWater_Vol, ExtravascularVol.u[3])
        annotation (Line(
          points={{-6,40},{14,40},{14,4},{66,4},{66,7.46667},{69.2,7.46667}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-2},{-6,-2}}));

        connect(ExtravascularVol.y, BodyH2O.u[1]) annotation (Line(
          points={{78.4,8},{84,8},{84,-34.4},{62.8,-34.4}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(IntravascularVol.y, BodyH2O.u[2]) annotation (Line(
          points={{78.4,-8},{82,-8},{82,-33.6},{62.8,-33.6}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(BodyH2O_Gain.y, BodyH2O_Change.u1) annotation (Line(
          points={{44.8,-58},{54,-58},{54,-64},{64,-64}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(BodyH2O_Loss.y, BodyH2O_Change.u2) annotation (Line(
          points={{54.8,-88},{72,-88},{72,-72}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.GILumenVolume_Intake, BodyH2O_Gain.u[1]) annotation (
          Line(
          points={{-6,40},{-6,-56},{26,-56},{26,-59.2},{26.4,-59.2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,5},{-6,5}}));
        connect(busConnector.MetabolicH2O_Rate, BodyH2O_Gain.u[2]) annotation (Line(
          points={{-6,40},{-6,-58},{28,-58},{28,-58.4},{26.4,-58.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,2},{-6,2}}));
        connect(busConnector.IVDrip_H2ORate, BodyH2O_Gain.u[3]) annotation (Line(
          points={{-6,40},{-6,-60},{26,-60},{26,-57.6},{26.4,-57.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-1},{-6,-1}}));
        connect(busConnector.Transfusion_H2ORate, BodyH2O_Gain.u[4]) annotation (
          Line(
          points={{-6,40},{-6,-62},{26,-62},{26,-56.8},{26.4,-56.8}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-4},{-6,-4}}));
        connect(busConnector.CD_H2O_Outflow, BodyH2O_Loss.u[1]) annotation (Line(
          points={{-6,40},{-6,-79},{36.4,-79},{36.4,-89.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,12},{-6,12}}));
        connect(busConnector.SweatDuct_H2OOutflow, BodyH2O_Loss.u[2]) annotation (
          Line(
          points={{-6,40},{-6,-82},{36,-82},{36.4,-89}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,9},{-6,9}}));
        connect(busConnector.Hemorrhage_H2ORate, BodyH2O_Loss.u[3]) annotation (Line(
          points={{-6,40},{-6,-84},{36.4,-84},{36.4,-88.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,6},{-6,6}}));
        connect(busConnector.DialyzerActivity_UltrafiltrationRate, BodyH2O_Loss.u[4])
        annotation (Line(
          points={{-6,40},{-6,-87},{36.4,-87},{36.4,-88.2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.HeatInsensibleSkin_H2O, BodyH2O_Loss.u[5]) annotation (
          Line(
          points={{-6,40},{-6,-89},{36.4,-89},{36.4,-87.8}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,0},{-6,0}}));
        connect(busConnector.HeatInsensibleLung_H2O, BodyH2O_Loss.u[6]) annotation (
          Line(
          points={{-6,40},{-6,-92},{36.4,-92},{36.4,-87.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-3},{-6,-3}}));
        connect(busConnector.GILumenVomitus_H2OLoss, BodyH2O_Loss.u[7]) annotation (
          Line(
          points={{-6,40},{-6,-94},{36.4,-94},{36.4,-87}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-6},{-6,-6}}));
        connect(busConnector.GILumenDiarrhea_H2OLoss, BodyH2O_Loss.u[8]) annotation (
          Line(
          points={{-6,40},{-6,-97},{36.4,-97},{36.4,-86.6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,-9},{-6,-9}}));
        connect(insensibleSkin.y, busConnector.HeatInsensibleSkin_H2O)
        annotation (Line(
          points={{88.8,76},{92,76},{92,63},{0,63},{0,40},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(sweatDuct.y, busConnector.SweatGland_H2ORate) annotation (Line(
          points={{30.8,83},{100,83},{100,40},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(ICFVOsmoles.y, busConnector.OsmBody_ICFVActiveOsmoles) annotation (
          Line(
          points={{-39.3,-36},{-6,-36},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(busConnector.OsmCell_Electrolytes, ICFVOsmoles.u1) annotation (Line(
          points={{-6,40},{-86,40},{-86,-30.4},{-55.4,-30.4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.UreaICF_Osmoles, ICFVOsmoles.u2) annotation (Line(
          points={{-6,40},{-86,40},{-86,-36},{-55.4,-36}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(OsmCell_UnknownOsmoles.y, ICFVOsmoles.u3) annotation (Line(
          points={{-71,-42},{-66,-42},{-66,-41.6},{-55.4,-41.6}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.UT.Sweat_H2OOutflow, sweatDuct.u[1]) annotation (
          Line(
          points={{-6,40},{-6,82},{12.4,82},{12.4,81.9333}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.MT.Sweat_H2OOutflow, sweatDuct.u[2]) annotation (
          Line(
          points={{-6,40},{-6,83},{12.4,83}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.LT.Sweat_H2OOutflow, sweatDuct.u[3]) annotation (
          Line(
          points={{-6,40},{-6,84.0667},{12.4,84.0667}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.UT.InsensibleSkin_H2O, insensibleSkin.u[1])
        annotation (Line(
          points={{-6,40},{-6,70},{70,70},{70,74.9333},{70.4,74.9333}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.MT.InsensibleSkin_H2O, insensibleSkin.u[2])
        annotation (Line(
          points={{-6,40},{-6,71},{70,71},{70,76},{70.4,76}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.LT.InsensibleSkin_H2O, insensibleSkin.u[3])
        annotation (Line(
          points={{-6,40},{-6,72},{70,72},{70,77.0667},{70.4,77.0667}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.UT.InterstitialWater_Vol, InterstitialWater.u[1])
        annotation (Line(
          points={{-6,40},{24,40},{24,54.5333},{43.2,54.5333}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
        connect(busConnector.MT.InterstitialWater_Vol, InterstitialWater.u[2])
        annotation (Line(
          points={{-6,40},{24,40},{24,54},{43.2,54}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector.LT.InterstitialWater_Vol, InterstitialWater.u[3])
        annotation (Line(
          points={{-6,40},{24,40},{24,53.4667},{43.2,53.4667}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(hydrostatics.RegionalPressure_UpperCapy, busConnector.UT.CapillaryRegionalPressure)
        annotation (Line(
          points={{-38,77.6},{-6,77.6},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.PlasmaVol,BodyH2O1. u[1])   annotation (Line(
          points={{-6,40},{100,40},{100,-29},{74.8,-29},{74.8,-46.7111}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.RBCH2O_Vol, BodyH2O1.u[5]) annotation (Line(
          points={{-6,40},{88,40},{88,-46},{74.8,-46}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None));
        connect(busConnector.LT.InterstitialWater_Vol,BodyH2O1. u[2])  annotation (Line(
          points={{-6,40},{100,40},{100,-46.5333},{74.8,-46.5333}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.MT.InterstitialWater_Vol,BodyH2O1. u[3])  annotation (Line(
          points={{-6,40},{100,40},{100,-34},{88,-34},{88,-46.3556},{74.8,
            -46.3556}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.UT.InterstitialWater_Vol,BodyH2O1. u[4])  annotation (Line(
          points={{-6,40},{100,40},{100,-39},{88,-39},{88,-46.1778},{74.8,
            -46.1778}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.LT.Cell_H2O,BodyH2O1. u[7])  annotation (Line(
          points={{-6,40},{100,40},{100,-37},{88,-37},{88,-45.6444},{74.8,
            -45.6444}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.MT.Cell_H2O,BodyH2O1. u[8])  annotation (Line(
          points={{-6,40},{100,40},{100,-49},{88,-49},{88,-45.4667},{74.8,
            -45.4667}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.UT.Cell_H2O,BodyH2O1. u[9])  annotation (Line(
          points={{-6,40},{100,40},{100,-51},{88,-51},{88,-45.2889},{74.8,
            -45.2889}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(ExternalH2O.y, BodyH2O1.u[6]) annotation (Line(
          points={{58.4,26},{100,26},{100,-53},{88,-53},{88,-45.8222},{74.8,
            -45.8222}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(busConnector.BarometerPressure, H2OFraction.u2) annotation (Line(
        points={{-6,40},{-86,40},{-86,-75.4},{-38.8,-75.4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(pressureConstant.y, pressureDrop.u1) annotation (Line(
        points={{-67,-58},{-60,-58},{-60,-65},{-54.8,-65}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.BreathingTotalVentilation, vaporFlow.u2) annotation (
        Line(
        points={{-6,40},{-86,40},{-86,-84.4},{-24.8,-84.4}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(pressureDrop.y, H2OFraction.u1) annotation (Line(
        points={{-44.6,-65},{-42,-65},{-42,-70},{-40,-70},{-40,-70.6},{-38.8,
            -70.6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(H2OFraction.y, vaporFlow.u1) annotation (Line(
        points={{-29.6,-73},{-28,-73},{-28,-79.6},{-24.8,-79.6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(Constant.y, HeatInsensibleLung_H2O.u2) annotation (Line(
        points={{-81,-92},{-74,-92},{-74,-97.4},{-66.8,-97.4}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(vaporFlow.y, HeatInsensibleLung_H2O.u1) annotation (Line(
        points={{-15.6,-82},{-14,-82},{-14,-88},{-72,-88},{-72,-92.6},{-66.8,-92.6}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(busConnector.EnviromentRelativeHumidity_VaporPressure, pressureDrop.u2)
        annotation (Line(
        points={{-6,40},{-86,40},{-86,-69.8},{-50,-69.8}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
        connect(hydrostatics.RegionalPressure_MiddleCapy, busConnector.MT.CapillaryRegionalPressure)
        annotation (Line(
          points={{-38,72.8},{-6,72.8},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(hydrostatics.RegionalPressure_LowerCapy, busConnector.LT.CapillaryRegionalPressure)
        annotation (Line(
          points={{-38,68},{-6,68},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None));
        connect(HeatInsensibleLung_H2O.y, busConnector.HeatInsensibleLung_H2O)
        annotation (Line(
          points={{-57.6,-95},{-6,-95},{-6,40}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
        connect(busConnector, activeOsmolesFake.busConnector) annotation (Line(
        points={{-6,40},{6,40},{6,-20.9},{16.1,-20.9}},
        color={255,204,51},
        thickness=0.5,
        smooth=Smooth.None));
        connect(osmBody.ECFVOsmolarity, busConnector.ECFVOsmolarity) annotation (
        Line(
        points={{-63.6,-20},{-6,-20},{-6,40}},
        color={0,0,127},
        smooth=Smooth.None));
        connect(BodyH2O1.y, osmBody.BodyH2O_Vol) annotation (Line(
        points={{65.6,-46},{-16,-46},{-16,-47},{-98,-47},{-98,-22},{-82.8,-22}},
        color={0,0,127},
        smooth=Smooth.None));

        connect(BodyH2O1.y, busConnector.BodyH2O_Vol) annotation (Line(
        points={{65.6,-46},{-6,-46},{-6,40}},
        color={0,0,127},
        smooth=Smooth.None), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
        annotation ( Icon(coordinateSystem(
              preserveAspectRatio=true, extent={{-100,-100},{100,100}},
            grid={2,1}), graphics={Text(
              extent={{-110,-103},{132,-137}},
              lineColor={0,0,255},
              textString="%name")}),
        Documentation(revisions="<html>

        <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
        <td><p>Author:</p></td>
        <td><p>Marek Matejak</p></td>
        </tr>
        <tr>
        <td><p>Design:</p></td>
        <td><p>Zuzana Rubaninska</p></td>
        </tr>
        <tr>
        <td><p>License:</p></td>
        <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
        </tr>

        <tr>
        <td><p>Date of:</p></td>
        <td><p>2009</p></td>
        </tr>
        <tr>
        <td><p>References:</p></td>
        <td><p>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</p></td>
        </tr>
        </table>
        <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

        </html>",     info="<html>
        <p>Distribution of H2O in whole body:</p>
        <p><ul>
        <li>blood plasma</li>
        <li>erythrocytes</li>
        <li>upper torso interstitium</li>
        <li>midle torso interstitium</li>
        <li>lower torso interstitium</li>
        <li>intracellular water (constant fraction coeficient in different tissues(torsos))</li>
        </ul></p>
        <p><br/>Water redistribution flows:</p>
        <p><ul>
        <li>semipermeable capilary walls (plasma - GIT/interstitium/glomerulus filtrate)</li>
        <li>lymph from upper/lower/midle torso</li>
        <li>kidney nephron filtration/reabsorbtion</li>
        </ul></p>
        <p><br/>driving by hydraulic, hydrostatic and coloid osmotic pressures.</p>
        </html>"));
    end WaterProperties;
