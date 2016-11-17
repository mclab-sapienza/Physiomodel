within Physiomodel.CardioVascular.Circulation.develop;
model VascularElasticBloodCompartment
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState;
    extends
    Physiomodel.CardioVascular.Circulation.Interfaces.IVascularElasticBloodCompartment;

    Real StressedVolume(   final quantity="Volume", final displayUnit="ml");

    Modelica.Blocks.Interfaces.RealOutput NormalizedVolume(final quantity="NormalizedVolume",
      final displayUnit="1")
    "actual volume divided by standard compartement volume"
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-40,-100}), iconTransformation(
        extent={{-10,-10},{10,10}},
        origin={100,60})));
    //initial equation
    //  Vol = initialVol;
    // der(Vol) = 0;
equation
    StressedVolume = max(Vol-V0,0);
    Pressure = (StressedVolume/Compliance) + ExternalPressure;
    referencePoint.pressure = Pressure;

    NormalizedVolume = if initialVol==0 then 0 else Vol/initialVol;

    state = Vol;
    change = referencePoint.q/60;

     annotation (
        preferredView = text,
        Documentation(info="<HTML>
            <PRE>
              Elastic blood flow compartment.
            </PRE>
            </HTML>
            ",       revisions="<html>

            <table>
            <tr>
            <td>Author:</td>
            <td>Marek Matejak</td>
            </tr>

            <tr>
            <td>License:</td>
            <td><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </td>
            </tr>
            <tr>
            <td>By:</td>
            <td>Charles University, Prague</td>
            </tr>
            <tr>
            <td>Date of:</td>
            <td>january 2009</td>
            </tr>
            <tr>
            <td>References:</td>
            <td>Tom Coleman: QHP 2008 beta 3, University of Mississippi Medical Center</td>
            </tr>
            </table>
            <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

            </html>"),   Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
                                {100,100}}), graphics={Text(
                              extent={{-100,-16},{100,-32}},
                              lineColor={0,0,255},
                              textString="(initial %initialVol ml)")}));
end VascularElasticBloodCompartment;