within Physiomodel.CardioVascular.Microcirculation;
model RightHeart
    extends Interfaces.Heart(
              Vasculature(stateName="RightHeart-Vasculature.Effect"));
    extends Physiolibrary.Icons.RightHeart;
equation
    connect(busConnector.RightHeart_PO2, Vasculature.u)
      annotation (Line(
        points={{-90,90},{6,90},{6,38},{60,38}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.RightHeart_PO2, PO2Effect.u) annotation (
        Line(
        points={{-90,90},{6,90},{6,30},{62,30}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.RightHeart_O2Need, MetabolismEffect.u)
      annotation (Line(
        points={{-90,90},{6,90},{6,20},{62,20}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(busConnector.RightHeart_Function_Failed, Vasculature.Failed)
      annotation (Line(
        points={{-90,90},{6,90},{6,44},{60,44}},
        color={0,0,255},
        thickness=0.5,
        smooth=Smooth.None), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
end RightHeart;