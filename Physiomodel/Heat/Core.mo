within Physiomodel.Heat;
model Core
    extends Physiolibrary.Icons.HeatCore;
    Physiolibrary.Types.BusConnector busConnector annotation (Placement(
    transformation(extent={{-82,34},{-62,54}}), iconTransformation(extent=
     {{-10,72},{10,92}})));
    Physiolibrary.Thermal.Interfaces.HeatPort_a positiveHeatFlow annotation (
    Placement(transformation(extent={{2,-8},{10,0}}), iconTransformation(
    extent={{-8,-4},{12,16}})));
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow CoreMetabolism
    annotation (Placement(transformation(extent={{-32,-28},{-12,-8}})));
    Physiolibrary.Thermal.Components.HeatAccumulation core(
    stateName="HeatCore.Mass",
    useMassInput=true,
    relativeHeat_start=0)
    annotation (Placement(transformation(extent={{-6,-54},{14,-34}})));
                   //(45005587.92) - 310.15*weight*(3475.044))

    Physiolibrary.Types.RealIO.TemperatureOutput
                                    core_T
                                    annotation (Placement(
    transformation(extent={{32,-102},{52,-82}}),
                                               iconTransformation(
      extent={{40,-40},{80,0}})));
    Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor
    annotation (Placement(transformation(extent={{20,-54},{40,-34}})));
equation

    connect(CoreMetabolism.port, core.q_in) annotation (Line(
    points={{-12,-18},{-2,-18},{-2,-44},{4,-44}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(core.q_in, positiveHeatFlow) annotation (Line(
    points={{4,-44},{6,-44},{6,-4}},
    color={255,128,0},
    thickness=1,
    smooth=Smooth.None));
    connect(busConnector.MetabolismCaloriesUsed_CoreHeat, CoreMetabolism.Q_flow)
    annotation (Line(
    points={{-72,44},{-72,-18},{-32,-18}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.WeightCore, core.weight) annotation (Line(
    points={{-72,44},{-72,-36},{-6,-36}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(core.q_in, temperatureSensor.port) annotation (Line(
    points={{4,-44},{20,-44}},
    color={191,0,0},
    thickness=1,
    smooth=Smooth.None));
    connect(temperatureSensor.T, busConnector.core_T) annotation (Line(
    points={{40,-44},{52,-44},{52,70},{-72,70},{-72,44}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(temperatureSensor.T, busConnector.HeatCore_Temp) annotation (Line(
    points={{40,-44},{52,-44},{52,44},{-72,44}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(temperatureSensor.T, core_T) annotation (Line(
    points={{40,-44},{46,-44},{46,-76},{16,-76},{16,-92},{42,-92}},
    color={0,0,127},
    smooth=Smooth.None));
end Core;