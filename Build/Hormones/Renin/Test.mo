package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
		T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
		T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min",k=0);
		T.Concentration MD_Na(varName="MD_Na.[Na+(mEq/L)]", k=47.834);
		T.Concentration ANPPool_ANP(varName="ANPPool.[ANP]", storeUnit="pmol/l",k=1.99078e-008);
		T.Frequency GangliaKidney_NA(varName="GangliaKidney.NA(Hz)", storeUnit="Hz",k=1.49162);
		T.Fraction BetaBlocade_Effect(varName="BetaBlockade.Effect",k=1);
		T.Fraction BetaPool_Effect(varName="BetaPool.Effect",k=-0.999726);
		T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)",k=1);
    equation				
        connect(ECFV_Vol.y, busConnector.ECFV_Vol);	
        connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect);	
		connect(FurosemidePool_Loss.y, busConnector.FurosemidePool_Loss);
		connect(MD_Na.y, busConnector.MD_Na);
		connect(ANPPool_ANP.y,busConnector.ANP);
		connect(GangliaKidney_NA.y,busConnector.GangliaKidney_NA);
		connect(BetaBlocade_Effect.y,busConnector.BetaBlocade_Effect);
		connect(BetaPool_Effect.y,busConnector.BetaPool_Effect);
		connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal);
    end Variables;
end Inputs;

model Test
	extends Physiomodel.Hormones.Renin;
	Inputs.Input inputs;
equation
	connect(inputs.busConnector, busConnector);  
end Test;

  
