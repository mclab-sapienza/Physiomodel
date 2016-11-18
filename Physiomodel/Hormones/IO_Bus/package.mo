within Physiomodel.Hormones;
package IO_Bus
   extends Physiolibrary.Types.IO_Bus;
   redeclare model extends Variables
            extends Physiolibrary.Icons.Hormones;

            T.Concentration A2Pool(varName="A2Pool.[A2(pMol/L)]", storeUnit="pmol/l")
            "Angiotensin 2 extracelular concentration."
            annotation (Placement(transformation(extent={{-40,-62},{-34,-56}})));
            T.Concentration AldoPool_Aldo(varName="AldoPool.[Aldo(pMol/L)]", storeUnit="pmol/l")
            "Body aldosterone concentration."
            annotation (Placement(transformation(extent={{-40,-2},{-34,4}})));
            T.Fraction AlphaBlocade_Effect(varName="AlphaBlockade.Effect")
            "Effect of alpha blocators."
            annotation (Placement(transformation(extent={{-40,8},{-34,14}})));
            T.Fraction AlphaPool_Effect(varName="AlphaPool.Effect")
            "Humoral and neural effect on alpha receptor stimulation."
            annotation (Placement(transformation(extent={{-40,18},{-34,24}})));
            T.Fraction BetaBlocade_Effect(varName="BetaBlockade.Effect")
            "Effect of beta blocators."
            annotation (Placement(transformation(extent={{-40,28},{-34,34}})));
            T.Fraction BetaPool_Effect(varName="BetaPool.Effect")
            "Humoral and neural effect on beta receptor stimulation."
            annotation (Placement(transformation(extent={{-40,38},{-34,44}})));
            //Variable NephronADH_conc(varName="NephronADH.[ADH]")
            //    "Nephron vasopresine concentration. [ng/l]"
            //annotation (Placement(transformation(extent={{-36,170},{-30,176}})));

            T.Concentration Epinephrine(varName="EpiPool.[Epi(nMol/L)]", storeUnit=
                "nmol/l") "Epinephrine extracelular concentration."
            annotation (Placement(transformation(extent={{-40,-28},{-34,-22}})));
            T.Concentration Norepinephrine(storeUnit="nmol/l", varName=
                "NEPool.[NE(nMol/L)]") "Norepinephrine extracelular concentration."
            annotation (Placement(transformation(extent={{-40,-36},{-34,-30}})));
      equation
            connect(AlphaBlocade_Effect.y, busConnector.AlphaBlocade_Effect) annotation (Line(
            points={{-33.7,11},{90,11},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(AlphaPool_Effect.y, busConnector.AlphaPool_Effect) annotation (Line(
            points={{-33.7,21},{90,21},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(BetaBlocade_Effect.y, busConnector.BetaBlocade_Effect) annotation (Line(
            points={{-33.7,31},{90,31},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(BetaPool_Effect.y, busConnector.BetaPool_Effect) annotation (Line(
            points={{-33.7,41},{90,41},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));

            connect(A2Pool.y, busConnector.Angiotensin2) annotation (Line(
            points={{-33.7,-59},{90,-59},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(AldoPool_Aldo.y, busConnector.Aldosterone) annotation (Line(
            points={{-33.7,1},{90,1},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Epinephrine.y, busConnector.Epinephrine) annotation (Line(
            points={{-33.7,-25},{90,-25},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            connect(Norepinephrine.y, busConnector.Norepinephrine) annotation (Line(
            points={{-33.7,-33},{90,-33},{90,-2}},
            color={0,0,127},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
            annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                  -100},{100,100}}), graphics={Text(
                extent={{18,138},{100,100}},
                lineColor={0,0,0},
                textString="vars"), Text(
                extent={{-118,-104},{124,-138}},
                lineColor={0,0,255},
                textString="%name")}));
      end Variables;
end IO_Bus;