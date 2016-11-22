within Physiomodel.Electrolytes.Calcium2;

model RANK_RANKL
    Modelica.Blocks.Interfaces.RealOutput RANK_RANKL
                                              annotation (Placement(
          transformation(extent={{60,-20},{100,20}}), iconTransformation(extent={{60,-20},
              {100,20}})));
    Modelica.Blocks.Interfaces.RealInput active_TGF_beta
                                     annotation (Placement(transformation(extent={{-100,
              -100},{-60,-60}}),    iconTransformation(extent={{-100,-100},
              {-60,-60}})));
    Modelica.Blocks.Interfaces.RealInput Osteoblasts
                                     annotation (Placement(transformation(extent={{-100,20},
              {-60,60}}),           iconTransformation(extent={{-100,20},{
              -60,60}})));
    Modelica.Blocks.Interfaces.RealInput PTH
                                     annotation (Placement(transformation(extent={{-100,
              -40},{-60,0}}),       iconTransformation(extent={{-100,-40},{
              -60,0}})));
    Modelica.Blocks.Interfaces.RealInput RespondingOsteoblasts
                                     annotation (Placement(transformation(extent={{-100,20},
              {-60,60}}),           iconTransformation(extent={{-100,60},{
              -60,100}})));
end RANK_RANKL;