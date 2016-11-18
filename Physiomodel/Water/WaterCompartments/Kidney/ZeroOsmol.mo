within Physiomodel.Water.WaterCompartments.Kidney;

model ZeroOsmol "Prescripted zero osmolarity"
    extends Physiolibrary.Osmotic.Interfaces.OnePort;
equation
    q_in.o = 0;

    annotation (
    Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,
            -100},{100,100}}),
                        graphics={
        Text(
          extent={{-100,-80},{100,-54}},
          textString="%name",
          lineColor={0,0,255}),
        Rectangle(
          extent={{-100,-50},{100,50}},
          lineColor={127,127,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-100,50},{14,12}},
          lineColor={0,0,255},
          textString="0 Osm")}),
    Documentation(revisions="<html>
    <p><i>2009-2010</i></p>
    <p>Marek Matejak, Charles University, Prague, Czech Republic </p>
    </html>"));
end ZeroOsmol;

