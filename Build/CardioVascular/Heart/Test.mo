package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    T.Pressure Pericardium_Pressure(varName="Pericardium-Cavity.Pressure", k=-445.993);
    T.Fraction BetaPool_Effect(varName="BetaPool.Effect", k=0.999726);
    T.Fraction BetaBlocade_Effect(varName="BetaBlockade_Effect", k=1);
    T.Frequency VagusNerve(varName="VagusNerve_NA_Hz", k=1.98382);
    T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", k=1.50811);
    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
  equation
    connect(Pericardium_Pressure.y, busConnector.Pericardium_Pressure);
    connect(BetaPool_Effect.y, busConnector.BetaPool_Effect);
    connect(BetaBlocade_Effect.y, busConnector.BetaBlocade_Effect);
    connect(VagusNerve.y, busConnector.VagusNerve_NA_Hz);
    connect(GangliaGeneral_NA.y, busConnector.GangliaGeneral_NA);
    connect(ECFV_Vol.y, busConnector.ECFV_Vol);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.CardioVascular.Heart.Heart heart;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, heart.busConnector);
  connect(heart.fromLeftVentricle, heart.rightAtrium);
  connect(heart.leftAtrium, heart.fromRightVentricle);
end Test;
