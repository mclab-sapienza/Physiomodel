within Physiomodel.Electrolytes;
 package IO_Bus
            extends Physiolibrary.Types.IO_Bus;

            redeclare model extends Variables

                AcidBase.AcidBase_variables acidBase_variables(T(redeclare block Variable
                =                                                                     T.Variable))
                annotation (Placement(transformation(extent={{4,-88},{24,-68}})));

                T.VolumeDensityOfCharge BloodCations(varName="BloodIons.Cations")
                "Sum of all cations concentrations in blood."
                annotation (Placement(transformation(extent={{-36,10},{-30,16}})));
                T.MolarFlowRate CD_K_Outflow(varName="CD_K.Outflow")
                "Collecting duct potassium outflow to urine."
                annotation (Placement(transformation(extent={{-36,40},{-30,46}})));
                T.MolarFlowRate CD_Na_Outflow(varName="CD_Na.Outflow")
                "Collecting duct sodium outflow to urine."
                annotation (Placement(transformation(extent={{-36,60},{-30,66}})));
                T.MolarFlowRate CD_PO4_Outflow(varName="CD_PO4.Outflow")
                "Collecting duct phosphates outflow to urine."
                annotation (Placement(transformation(extent={{-36,70},{-30,76}})));
                T.Fraction DT_AldosteroneEffect(varName="DT_AldosteroneEffect")
                "Aldosterone effect to distal tubule reabsorbtion."
                annotation (Placement(transformation(extent={{-36,80},{-30,86}})));
                T.MolarFlowRate DT_Na_Outflow(varName="DT_Na.Outflow")
                "Distal tubule sodium outflow."
                annotation (Placement(transformation(extent={{-36,90},{-30,96}})));
                T.MolarFlowRate DT_Na_Reab(varName="DT_Na.Reab")
                "Distal tubule sodium reabsorbtion."
                annotation (Placement(transformation(extent={{-36,100},{-30,106}})));
                T.AmountOfSubstance GILumenPotassium_Mass(varName="GILumenPotassium.Mass")
                "Potasium mass in intestines."
                annotation (Placement(transformation(extent={{-36,110},{-30,116}})));
                T.AmountOfSubstance GILumenSodium_Mass(varName="GILumenSodium.Mass")
                "Sodium mass in intestines."
                annotation (Placement(transformation(extent={{-36,120},{-30,126}})));
                T.MolarFlowRate PotassiumToCells(varName="KCell.Change")
                "PotasiumToCells"
                annotation (Placement(transformation(extent={{-36,140},{-30,146}})));
                T.Concentration KCell_conc(varName="KCell.[K+(mEq/L)]")
                "Intracellular potassium concentration."
                annotation (Placement(transformation(extent={{-36,150},{-30,156}})));
                T.Concentration KPool_per_liter(varName="KPool.[K+(mEq/L)]")
                "Potassium extracellular concentration."
                annotation (Placement(transformation(extent={{-36,160},{-30,166}})));
                T.Fraction LH_Na_FractReab(varName="LH_Na.FractReab")
                "Sodium reabsorbtion fraction (=reabsorbed/inflowed) in loop of Henle."
                annotation (Placement(transformation(extent={{-36,170},{-30,176}})));

                T.MolarFlowRate LH_Na_Reab(varName="LH_Na.Reab")
                "Sodium reabsorbtion in loop of Henle."
                annotation (Placement(transformation(extent={{-36,180},{-30,186}})));
                T.Concentration MD_Na(varName="MD_Na.[Na+(mEq/L)]")
                "Kidney nephron - Maculla densa sodium concentration."
                annotation (Placement(transformation(extent={{-36,190},{-30,196}})));
                T.Osmolarity MedullaNa_Osmolarity(varName="MedullaNa.Osmolarity")
                "Kidney medulla interstitial sodium osmolarity."
                annotation (Placement(transformation(extent={{-36,200},{-30,206}})));
                T.Concentration MedullaNa_conc(varName="MedullaNa.[Na+]", storeUnit="mol/l")
                "Kidney medulla interstitial sodium concentration."
                annotation (Placement(transformation(extent={{-36,210},{-30,216}})));
                T.AmountOfSubstance OsmCell_Electrolytes(varName="OsmCell.Electrolytes")
                "Intracellular electrolites osmoles."
                annotation (Placement(transformation(extent={{-36,220},{-30,226}})));
                T.AmountOfSubstance OsmECFV_Electrolytes(varName="OsmECFV.Electrolytes")
                "Extracellular electrolites osmoles."
                annotation (Placement(transformation(extent={{-36,230},{-30,236}})));
                T.Concentration ctPO4(varName="PO4Pool.[PO4--(mEq/L)]")
                "Extracellular phosphates concentration."
                annotation (Placement(transformation(extent={{-36,240},{-30,246}})));
                T.Fraction PT_Na_FractReab(varName="PT_Na.FractReab")
                "Proximal tubule sodium reabsorbtion fraction (=reabsorbed/inflowed)."
                annotation (Placement(transformation(extent={{-36,250},{-30,256}})));

                T.MolarFlowRate PT_Na_Reab(varName="PT_Na.Reab")
                "Proximal tubule sodium reabsorbtion."
                annotation (Placement(transformation(extent={{-36,260},{-30,266}})));
                T.MolarFlowRate CD_NH4_Outflow(varName="CD_NH4.Outflow")
                "Collecting duct amonium outflow to urine."
                annotation (Placement(transformation(extent={{-68,50},{-62,56}})));
                T.VolumeDensityOfCharge BloodIons_Cations1(varName="BloodIons.[SID(mEq/L)]")
                "Sum of all cations concentrations in blood."
                annotation (Placement(transformation(extent={{-68,28},{-62,34}})));
                T.MolarFlowRate CD_Cl_Outflow1(varName="CD_Cl.Outflow")
                "Collecting duct chloride outflow to urine."
                annotation (Placement(transformation(extent={{-66,-6},{-60,0}})));
                T.MolarFlowRate CD_Mg_Outflow(varName="CD_Mg_Outflow")
                "Collecting duct chloride outflow to urine."
                annotation (Placement(transformation(extent={{-66,-22},{-60,-16}})));
                T.MolarFlowRate CD_Ca_Outflow3(varName="CD_Ca_Outflow")
                "Collecting duct calcium outflow to urine."
                annotation (Placement(transformation(extent={{-66,-38},{-60,-32}})));
                T.MolarFlowRate CD_SO4_Outflow(varName="CD_SO4_Outflow")
                "Collecting duct sulfate outflow to urine."
                annotation (Placement(transformation(extent={{-66,-54},{-60,-48}})));
            equation
                connect(BloodCations.y, busConnector.BloodCations) annotation (Line(
                points={{-29.7,13},{90,13},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_K_Outflow.y, busConnector.CD_K_Outflow) annotation (Line(
                points={{-29.7,43},{90,43},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_Na_Outflow.y, busConnector.CD_Na_Outflow) annotation (Line(
                points={{-29.7,63},{90,63},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_PO4_Outflow.y, busConnector.CD_PO4_Outflow) annotation (Line(
                points={{-29.7,73},{90,73},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(DT_AldosteroneEffect.y, busConnector.DT_AldosteroneEffect) annotation (Line(
                points={{-29.7,83},{90,83},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(DT_Na_Outflow.y, busConnector.DT_Na_Outflow) annotation (Line(
                points={{-29.7,93},{90,93},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(DT_Na_Reab.y, busConnector.DT_Na_Reab) annotation (Line(
                points={{-29.7,103},{90,103},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(GILumenPotassium_Mass.y, busConnector.GILumenPotassium_Mass) annotation (Line(
                points={{-29.7,113},{90,113},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(GILumenSodium_Mass.y, busConnector.GILumenSodium_Mass) annotation (Line(
                points={{-29.7,123},{90,123},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(PotassiumToCells.y, busConnector.PotassiumToCells) annotation (Line(
                points={{-29.7,143},{90,143},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(LH_Na_FractReab.y, busConnector.LH_Na_FractReab) annotation (Line(
                points={{-29.7,173},{90,173},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(LH_Na_Reab.y, busConnector.LH_Na_Reab) annotation (Line(
                points={{-29.7,183},{90,183},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(MD_Na.y, busConnector.MD_Na) annotation (Line(
                points={{-29.7,193},{90,193},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(MedullaNa_Osmolarity.y, busConnector.MedullaNa_Osmolarity) annotation (Line(
                points={{-29.7,203},{90,203},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(MedullaNa_conc.y, busConnector.MedullaNa_conc) annotation (Line(
                points={{-29.7,213},{90,213},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(OsmCell_Electrolytes.y, busConnector.OsmCell_Electrolytes) annotation (Line(
                points={{-29.7,223},{90,223},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(OsmECFV_Electrolytes.y, busConnector.OsmECFV_Electrolytes) annotation (Line(
                points={{-29.7,233},{90,233},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(ctPO4.y, busConnector.ctPO4) annotation (Line(
                points={{-29.7,243},{90,243},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(PT_Na_FractReab.y, busConnector.PT_Na_FractReab) annotation (Line(
                points={{-29.7,253},{90,253},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(PT_Na_Reab.y, busConnector.PT_Na_Reab) annotation (Line(
                points={{-29.7,263},{90,263},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));

                connect(KPool_per_liter.y, busConnector.KPool) annotation (
                Line(
                points={{-29.7,163},{90,163},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(KCell_conc.y, busConnector.KCell_conc) annotation (Line(
                points={{-29.7,153},{90,153},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_NH4_Outflow.y, busConnector.CD_NH4_Outflow) annotation (Line(
                points={{-61.7,53},{90,53},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_Cl_Outflow1.y, busConnector.CD_Cl_Outflow) annotation (Line(
                points={{-59.7,-3},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_Mg_Outflow.y, busConnector.CD_Mg_Outflow) annotation (Line(
                points={{-59.7,-19},{90,-19},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_Ca_Outflow3.y, busConnector.CD_Ca_Outflow) annotation (Line(
                points={{-59.7,-35},{11.15,-35},{11.15,-2},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(CD_SO4_Outflow.y, busConnector.CD_SO4_Outflow) annotation (Line(
                points={{-59.7,-51},{90,-51},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                connect(acidBase_variables.busConnector, busConnector) annotation (Line(
                points={{12,-78},{90,-78},{90,-2}},
                color={255,204,51},
                thickness=0.5,
                smooth=Smooth.None));
                connect(BloodIons_Cations1.y, busConnector.Plasma_SID) annotation (Line(
                points={{-61.7,31},{90,31},{90,34},{90,34},{90,32},{90,32},{90,-2}},
                color={0,0,127},
                smooth=Smooth.None), Text(
                string="%second",
                index=1,
                extent={{6,3},{6,3}}));
                annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                      -100},{100,100}}), graphics={Text(
                    extent={{18,98},{100,60}},
                    lineColor={0,0,0},
                    textString="vars"), Text(
                    extent={{-120,-58},{122,-92}},
                    lineColor={0,0,255},
                    textString="%name")}));
            end Variables;
end IO_Bus;