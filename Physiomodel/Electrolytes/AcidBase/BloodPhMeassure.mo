within Physiomodel.Electrolytes.AcidBase;
model BloodPhMeassure
    extends Physiomodel.Electrolytes.AcidBase.BloodPhBase;
    Physiolibrary.Types.RealIO.VolumeDensityOfChargeInput
                                   BEox
                                annotation (Placement(transformation(extent={{
          -102,90},{-62,130}}), iconTransformation(
      extent={{-20,-20},{20,20}},
      rotation=270,
      origin={-80,100})));
equation
    _BEox = BEox / Modelica.Constants.F;

    //  cTHox.conc*1000 = _cTHox;

    annotation (          Documentation(revisions="<html>

    <table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
    <td><p>Author:</p></td>
    <td><p>Marek Matejak</p></td>
    </tr>
    <tr>
    <td><p>License:</p></td>
    <td><p><a href=\"http://www.physiomodel.org/license.html\">Physiomodel License 1.0</a> </p></td>
    </tr>

    <tr>
    <td><p>Date of:</p></td>
    <td><p>2013</p></td>
    </tr>
    <tr>
    <td><p>References:</p></td>
    <td>Siggaard Andersen: OSA (2005), University of Copenhagen</td>
    </tr>
    </table>
    <br/><p>Copyright &copy; 2014 Marek Matejak, Charles University in Prague.</p><br/>

    </html>"));
end BloodPhMeassure;