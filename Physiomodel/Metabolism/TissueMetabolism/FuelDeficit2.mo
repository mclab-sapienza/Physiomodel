within Physiomodel.Metabolism.TissueMetabolism;
        model FuelDeficit2

            Physiolibrary.Chemical.Interfaces.ChemicalPort_a delivered
            "delivery flow is limited" annotation (Placement(transformation(extent=
                {{-38,72},{2,112}}), iconTransformation(extent={{-10,90},{10,
                110}})));
            Physiolibrary.Chemical.Interfaces.ChemicalPort_a neededFlow
            "needed solute mass flow have to be achieved" annotation (Placement(
            transformation(extent={{88,-28},{108,-8}}), iconTransformation(
              extent={{90,-10},{110,10}})));
            Physiolibrary.Types.RealIO.MolarFlowRateInput maximalDeliveryFlow
            "maximal flow limit of delivered connector"                                                 annotation (Placement(
              transformation(extent={{-120,40},{-80,80}}), iconTransformation(extent={
                  {-120,40},{-80,80}})));

            Physiolibrary.Types.RealIO.FractionOutput FractUseDelay
            "less than 1 if neededFlow is grater than delivered flow"   annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,-100})));

            parameter Real Zero = 1e-10;
            Physiolibrary.Types.RealIO.ConcentrationInput concChange
            "aditional change of delivered concentration"                                               annotation (Placement(
              transformation(extent={{-120,0},{-80,40}}),  iconTransformation(extent={{-120,
                  -80},{-80,-40}})));
        equation
            delivered.conc  + concChange = neededFlow.conc;
            if ( -neededFlow.q > maximalDeliveryFlow) then
            delivered.q = maximalDeliveryFlow;
            FractUseDelay = delivered.q/(-neededFlow.q);
            else
            delivered.q + neededFlow.q = 0;
            FractUseDelay = 1;
            end if;
        end FuelDeficit2;