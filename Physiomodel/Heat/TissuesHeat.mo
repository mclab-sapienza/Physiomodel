within Physiomodel.Heat;

model TissuesHeat
    extends Physiolibrary.Icons.Tissues;

    Tissues.Bone Bone
    annotation (Placement(transformation(extent={{64,30},{44,50}})));

    Tissues.Fat Fat
    annotation (Placement(transformation(extent={{64,-62},{44,-42}})));

    Tissues.Brain Brain
    annotation (Placement(transformation(extent={{-58,-2},{-38,18}})));

    Tissues.RightHeart RightHeart
    annotation (Placement(transformation(extent={{-58,30},{-38,50}})));

    Tissues.RespiratoryMuscle RespiratoryMuscle
    annotation (Placement(transformation(extent={{-58,-30},{-38,-10}})));

    Tissues.OtherTissue OtherTissue
    annotation (Placement(transformation(extent={{64,-88},{44,-68}})));

    Tissues.Liver Liver
    annotation (Placement(transformation(extent={{64,58},{44,78}})));

    Tissues.LeftHeart LeftHeart
    annotation (Placement(transformation(extent={{-58,-62},{-38,-42}})));

    Tissues.Kidney Kidney
    annotation (Placement(transformation(extent={{64,-32},{44,-12}})));

    Tissues.GITract GITract
    annotation (Placement(transformation(extent={{64,-2},{44,18}})));

    Physiolibrary.Types.BusConnector busConnector
    annotation (Placement(transformation(extent={{-108,72},{-68,112}})));
equation
    connect(busConnector.core_T, Brain.BaseT)
    annotation (Line(
    points={{-88,92},{-62,92},{-62,8},{-58,8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,0},{-5,0}}));
    connect(busConnector.core_T, RespiratoryMuscle.BaseT)
    annotation (Line(
    points={{-88,92},{-62,92},{-62,-20},{-58,-20}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,0},{-5,0}}));
    connect(busConnector.core_T, LeftHeart.BaseT)
    annotation (Line(
    points={{-88,92},{-62,92},{-62,-52},{-58,-52}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,0},{-5,0}}));
    connect(busConnector.core_T, RightHeart.BaseT)
    annotation (Line(
    points={{-88,92},{-62,92},{-62,40},{-58,40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-5,0},{-5,0}}));
    connect(Bone.BaseT, busConnector.core_T)  annotation (
    Line(
    points={{64,40},{68,40},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));
    connect(Liver.BaseT, busConnector.core_T)  annotation (
    Line(
    points={{64,68},{68,68},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));
    connect(Kidney.BaseT, busConnector.core_T)
    annotation (Line(
    points={{64,-22},{68,-22},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));
    connect(GITract.BaseT, busConnector.core_T)
    annotation (Line(
    points={{64,8},{68,8},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));
    connect(Fat.BaseT, busConnector.core_T)  annotation (
    Line(
    points={{64,-52},{68,-52},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));
    connect(OtherTissue.BaseT, busConnector.core_T)
    annotation (Line(
    points={{64,-78},{68,-78},{68,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{5,0},{5,0}}));

    connect(RightHeart.T, busConnector.rightHeart_T) annotation (Line(
    points={{-38,40},{-34,40},{-34,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(Brain.T, busConnector.brain_T) annotation (Line(
    points={{-38,8},{-34,8},{-34,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(RespiratoryMuscle.T, busConnector.respiratoryMuscle_T) annotation (Line(
    points={{-38,-20},{-34,-20},{-34,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
    connect(LeftHeart.T, busConnector.leftHeart_T) annotation (Line(
    points={{-38,-52},{-34,-52},{-34,92},{-88,92}},
    color={0,0,127},
    smooth=Smooth.None), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));

    connect(busConnector.liver_T, Liver.T) annotation (Line(
    points={{-88,92},{40,92},{40,68},{44,68}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
    connect(busConnector.bone_T, Bone.T) annotation (Line(
    points={{-88,92},{40,92},{40,40},{44,40}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(busConnector.GITract_T, GITract.T) annotation (Line(
    points={{-88,92},{40,92},{40,8},{44,8}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(busConnector.kidney_T, Kidney.T) annotation (Line(
    points={{-88,92},{40,92},{40,-22},{44,-22}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(busConnector.fat_T, Fat.T) annotation (Line(
    points={{-88,92},{40,92},{40,-52},{44,-52}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    connect(busConnector.otherTissue_T, OtherTissue.T) annotation (Line(
    points={{-88,92},{40,92},{40,-78},{44,-78}},
    color={0,0,255},
    thickness=0.5,
    smooth=Smooth.None), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));

    annotation (        Documentation(info="<html>
    <p>Heat in tissues. Temperatures are in celsius degrees.</p>
    </html>",     revisions="<html>
    <p>Marek Matejak, 24.12.2009</p>
    </html>"));
end TissuesHeat;