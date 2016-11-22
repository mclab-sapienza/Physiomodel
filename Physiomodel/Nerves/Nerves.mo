within Physiomodel.Nerves;
model Nerves
    extends Physiolibrary.Icons.Nerves;
    BaroReceptorAdaptation Baroreflex(
    PressureChangeOnNA={{-50.0,0.0,0},{0.0,1.0,0.02},{50.0,2.0,0}},
    AdaptivePressure(displayUnit="mmHg") = 12914.659691877,
    Tau(displayUnit="h") = 36000) annotation (Placement(transformation(
      extent={{9,9},{-9,-9}},
      rotation=180,
      origin={-41,45})));
    ExerciseSympathetic exercise                   annotation (Placement(
        transformation(extent={{-62,-68},{-42,-48}})));
    SympatheticCNS sympatheticCNS
    annotation (Placement(transformation(extent={{-2,-86},{18,-66}})));
    VagusNerve vagusNerve
    annotation (Placement(transformation(extent={{46,-98},{66,-78}})));
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
      transformation(extent={{-78,76},{-58,96}}), iconTransformation(extent=
         {{-98,56},{-58,96}})));
    GangliaKidney gangliaKidney
    annotation (Placement(transformation(extent={{38,-16},{58,4}})));
    Modelica.Blocks.Math.Gain AdrenalNerve(k=0.667)
    "from Hz to normal activity"
    annotation (Placement(transformation(extent={{52,-36},{60,-28}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant Constant(k=1)
    annotation (Placement(transformation(extent={{62,-16},{70,-8}})));
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant KidneyAlpha_PT_NA(k=
     1) annotation (Placement(transformation(extent={{62,2},{70,10}})));
    Pituitary pituitary
    annotation (Placement(transformation(extent={{44,34},{64,54}})));
equation
    connect(sympatheticCNS.ExerciseSymps_TotalEffect, exercise.ExerciseSymps_TotalEffect)
    annotation (Line(
    points={{-2,-80},{-30,-80},{-30,-58},{-42.2,-58}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(vagusNerve.SympsCNS_NA_Hz,sympatheticCNS. NA) annotation (Line(
    points={{46,-88},{30,-88},{30,-82},{18,-82}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sympatheticCNS.NA, busConnector.GangliaGeneral_NA) annotation (
    Line(
    points={{18,-82},{30,-82},{30,98},{-68,98},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Baroreflex.NA, sympatheticCNS.CarotidSinusReceptors) annotation (
    Line(
    points={{-32,45},{-8,45},{-8,-68},{0,-68}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.CarotidSinusArteryPressure, Baroreflex.pressure)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,45},{-50,45}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(exercise.ExerciseSymps_TotalEffect, gangliaKidney.ExerciseSymps_TotalEffect)
    annotation (Line(
    points={{-42.2,-58},{-30,-58},{-30,-38},{22,-38},{22,-6},{38,-6}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.brain_Fuel_FractUseDelay, gangliaKidney.brain_Fuel_FractUseDelay)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,2},{40,2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(gangliaKidney.NA, busConnector.GangliaKidney_NA) annotation (Line(
    points={{56,0.2},{100,0.2},{100,98},{-68,98},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(sympatheticCNS.SympsCNS_BaroEffect, gangliaKidney.SympsCNS_BaroEffect)
    annotation (Line(
    points={{16,-68},{24,-68},{24,-10},{38,-10}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(sympatheticCNS.SympsCNS_A2Effect, gangliaKidney.SympsCNS_A2Effect)
    annotation (Line(
    points={{18,-72},{26,-72},{26,-14},{40,-14}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(busConnector.ExerciseMetabolism_TotalWatts, exercise.ExerciseMetabolism_TotalWats)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-62},{-61.8,-62}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(sympatheticCNS.NA, AdrenalNerve.u) annotation (Line(
    points={{18,-82},{36,-82},{36,-32},{51.2,-32}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(AdrenalNerve.y, busConnector.AdrenalNerve_NA) annotation (Line(
    points={{60.4,-32},{100,-32},{100,98},{-88,98},{-88,86},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Constant.y, busConnector.Kidney_Alpha_NA) annotation (Line(
    points={{71,-12},{100,-12},{100,98},{-88,98},{-88,86},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(KidneyAlpha_PT_NA.y, busConnector.KidneyAlpha_PT_NA) annotation (Line(
    points={{71,6},{100,6},{100,98},{-88,98},{-88,86},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Baroreflex.NA, pituitary.Baroreflex_NA) annotation (Line(
    points={{-32,45},{-8,45},{-8,44},{44,44}},
    color={0,0,127},
    smooth=Smooth.None));
    connect(pituitary.BaroEffect, busConnector.SympsCNS_PituitaryNA)
    annotation (Line(
    points={{63.8,44},{100,44},{100,98},{-88,98},{-88,86},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.skeletalMuscle_pH_intracellular, exercise.SkeletalMuscle_Ph)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-54},{-62,-54}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(vagusNerve.VagusNerve_NA_Hz, busConnector.VagusNerve_NA_Hz)
    annotation (Line(
    points={{65.8,-88},{100,-88},{100,86},{-68,86}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(busConnector.Angiotensin2, sympatheticCNS.Angiotensin2)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-92},{-40,-92},{-40,-84},{0,-84}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.brain_Fuel_FractUseDelay, sympatheticCNS.brain_Fuel_FractUseDelay)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-76},{-2,-76}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.AtrialLowPressureReceptors_NA, gangliaKidney.LowPressureReceptors_NA)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-2},{38,-2}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.AtrialLowPressureReceptors_NA, sympatheticCNS.LowPressureReceptors)
    annotation (Line(
    points={{-68,86},{-88,86},{-88,-72},{-2,-72}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    annotation ( Icon(coordinateSystem(
      preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
    graphics={                      Text(
      extent={{-120,-70},{122,-104}},
      lineColor={0,0,255},
      textString="%name")}));
end Nerves;