within Physiomodel.Water.WaterCompartments.Kidney;

model CD_H2OChannels
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState(
            stateName="CD_H2OChannels.Inactive", state_start = 2-initialActive);

    parameter Physiolibrary.Types.Fraction initialActive(final displayUnit="1") = 1;
    parameter Physiolibrary.Types.Volume InactivateKinv(final displayUnit="ml")
      "1/0.000125 ml";
    parameter Physiolibrary.Types.Frequency ReactivateK(final displayUnit="1/min")
      "0.0004 1/min";

    Physiolibrary.Osmotic.Interfaces.OsmoticPort_a     CD_H2O_Reab
      annotation (Placement(transformation(extent={{-20,80},{20,120}}),
          iconTransformation(extent={{-20,80},{20,120}})));

      Physiolibrary.Types.Fraction Inactive( start = 2-initialActive, final displayUnit="1");
      Physiolibrary.Types.RealIO.FractionOutput Active(final displayUnit="1")
                                 annotation (Placement(transformation(extent={{96,46},
                {136,86}}), iconTransformation(extent={{96,46},{136,86}})));
    Physiolibrary.Osmotic.Interfaces.OsmoticPort_b     q_out annotation (
        Placement(transformation(extent={{-20,-120},{20,-80}}),
      iconTransformation(extent={{-20,-120},{20,-80}})));
equation
    q_out.q + CD_H2O_Reab.q = 0;
    q_out.o = CD_H2O_Reab.o;

    //  der(Inactive) = ((1/InactivateKinv) * CD_H2O_Reab.q - ReactivateK * Inactive) / Library.SecPerMin;
    Active = 2 - Inactive;

    state = Inactive;
    change = ((1/InactivateKinv) * CD_H2O_Reab.q - ReactivateK * Inactive);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},
            {100,100}}),       graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={170,255,255},
          fillPattern=FillPattern.Solid),Text(
          extent={{-100,-22},{100,-38}},
          lineColor={0,0,255},
          textString="(initial %initialActive)")}));
end CD_H2OChannels;
