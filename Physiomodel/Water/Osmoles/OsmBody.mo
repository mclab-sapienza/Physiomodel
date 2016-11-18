within Physiomodel.Water.Osmoles;
model OsmBody
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                   OsmECFV_Electrolytes                                annotation (Placement(transformation(
        extent={{-120,50},{-80,90}}), iconTransformation(extent={{-100,88},{-76,
          112}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                   OsmCell_Electrolytes                                annotation (Placement(transformation(
        extent={{-120,-10},{-80,30}}),
                                     iconTransformation(extent={{-100,48},{-76,
          72}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                   UreaECF      annotation (Placement(
      transformation(extent={{-120,20},{-80,60}}), iconTransformation(extent={{-100,8},
          {-76,32}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                   UreaICF      annotation (Placement(
      transformation(extent={{-120,-40},{-80,0}}),iconTransformation(extent={{-100,
          -32},{-76,-8}})));
    Physiolibrary.Types.RealIO.VolumeInput
                                   BodyH2O_Vol "all water in body"
                                                       annotation (Placement(transformation(extent={{-120,
          -110},{-80,-70}}),   iconTransformation(extent={{-100,-112},{-76,-88}})));
    Physiolibrary.Types.RealIO.VolumeOutput
                                    ECFV "extracellular water"
                                                   annotation (Placement(transformation(extent={{60,-80},
          {100,-40}}),iconTransformation(extent={{92,28},{116,52}})));
    Physiolibrary.Types.RealIO.VolumeOutput
                                    ICFV "intracellular water"
                                                   annotation (Placement(transformation(extent={{60,60},
          {100,100}}),iconTransformation(extent={{92,68},{116,92}})));

    parameter Physiolibrary.Types.Fraction Dissociation = 0.890;

    Physiolibrary.Types.AmountOfSubstance OsmECFV_NonElectrolytes;
    Physiolibrary.Types.AmountOfSubstance OsmCell_NonElectrolytes;
    Physiolibrary.Types.AmountOfSubstance Electrolytes;
    Physiolibrary.Types.AmountOfSubstance NonElectrolytes;
    Physiolibrary.Types.AmountOfSubstance Total;
    Physiolibrary.Types.AmountOfSubstance ECFVActiveElectrolytes;
    Physiolibrary.Types.AmountOfSubstance ICFVActiveElectrolytes;
    Physiolibrary.Types.AmountOfSubstance ActiveElectrolytes;
    Physiolibrary.Types.AmountOfSubstance ECFVActiveOsmoles;
    Physiolibrary.Types.AmountOfSubstance ICFVActiveOsmoles;
    Physiolibrary.Types.AmountOfSubstance ActiveOsmoles(start=11.6831341496947);
    //  Real Osm_conc_CellWall;
    //Real Osm_conc_Osmoreceptors;
    Physiolibrary.Types.RealIO.OsmolarityOutput
                                    OsmBody_Osm_conc_CellWalls      annotation (
    Placement(transformation(extent={{60,-20},{100,20}}), iconTransformation(
        extent={{92,-12},{116,12}})));
    Physiolibrary.Types.RealIO.OsmolarityOutput
                                    Osmoreceptors( start=0.25331)
                                                          annotation (
    Placement(transformation(extent={{60,-54},{100,-14}}),iconTransformation(
        extent={{92,-52},{116,-28}})));
    Physiolibrary.Types.RealIO.AmountOfSubstanceInput
                                   GlucoseECF   annotation (Placement(
      transformation(extent={{-120,-40},{-80,0}}),iconTransformation(extent={{-100,
          -72},{-76,-48}})));
    Physiolibrary.Types.RealIO.OsmolarityOutput ECFVOsmolarity annotation (
    Placement(transformation(extent={{60,-120},{100,-80}}),
    iconTransformation(extent={{92,-92},{116,-68}})));
equation
    OsmECFV_NonElectrolytes = UreaECF + GlucoseECF + 0.340;
    OsmCell_NonElectrolytes = UreaICF + 0.354;

     Electrolytes  =  OsmECFV_Electrolytes + OsmCell_Electrolytes;
     NonElectrolytes  =  OsmECFV_NonElectrolytes + OsmCell_NonElectrolytes;
     Total  =  Electrolytes + NonElectrolytes;
     ECFVActiveElectrolytes  =  Dissociation * OsmECFV_Electrolytes;
     ICFVActiveElectrolytes  =  Dissociation * OsmCell_Electrolytes;
     ActiveElectrolytes  =  ECFVActiveElectrolytes + ICFVActiveElectrolytes;
     ECFVActiveOsmoles  =  ECFVActiveElectrolytes + OsmECFV_NonElectrolytes;
     ICFVActiveOsmoles  =  ICFVActiveElectrolytes + OsmCell_NonElectrolytes;
     ActiveOsmoles  =  ECFVActiveOsmoles + ICFVActiveOsmoles;
     OsmBody_Osm_conc_CellWalls  =  ActiveOsmoles / BodyH2O_Vol;
     Osmoreceptors  = ActiveElectrolytes / BodyH2O_Vol; //, simplified=0.25331);
     ICFV  =  ( ICFVActiveOsmoles / ActiveOsmoles)  * BodyH2O_Vol;
     ECFV  =  BodyH2O_Vol - ICFV; // == ( ECFVActiveOsmoles / ActiveOsmoles)  * BodyH2O_Vol

     ECFVOsmolarity = ECFVActiveOsmoles/ECFV; // == OsmBody_Osm_conc_CellWalls
    annotation (
    Documentation(info="<html>
    <pre>QHP 2008 / OsmBody

    </pre>
    <p><br/><br/>Intracellular water calculation from cells osmotic pressure.</p>
    </html>",
    revisions="<html>
    <ul>
    <li><i>  </i>
    </li>
    <li><i> january 2009 </i><br>
    by Marek Matejak in Modelica initially implemented (consulted with Jiri Kofranek), Charles University, Prague<br>
    orginaly described by Tom Coleman in QHP 2008 beta 3, University of Mississippi Medical Center
    </li>
    </ul>
    </html>"));
end OsmBody;