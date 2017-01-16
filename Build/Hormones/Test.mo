package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
		T.Volume BodyH2O_Vol(varName="BodyH2O.Vol", k=0.0408422);
	    T.VolumeFlowRate Liver_BloodFlow(varName="Liver-O2.BloodFlow",k=2.05285e-005);
	    T.Fraction OtherTissueFunctionEffect(varName="OtherTissue-Function.Effect",k=1);	  
	    T.Concentration KPool_per_liter(varName="KPool.[K+(mEq/L)]",k=4.4);
		T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
		T.MolarFlowRate FurosemidePool_Loss(varName="FurosemidePool.Loss", storeUnit="mg/min",k=0);
		T.Concentration MD_Na(varName="MD_Na.[Na+(mEq/L)]", k=47.834);
		T.Concentration ANPPool_ANP(varName="ANPPool.[ANP]", storeUnit="pmol/l",k=1.99078e-008);
		T.Frequency GangliaKidney_NA(varName="GangliaKidney.NA(Hz)", storeUnit="Hz",k=1.49162);
		T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", k=1.50811);
		T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)",k=1);
		T.Fraction AdrenalNerve_NA(varName="AdrenalNerve.NA", k=1.00591);		
		
    equation				
        connect(ECFV_Vol.y, busConnector.ECFV_Vol);
		connect(BodyH2O_Vol.y, busConnector.BodyH2O_Vol);
		connect(Liver_BloodFlow.y, busConnector.Liver_BloodFlow);
		connect(OtherTissueFunctionEffect.y, busConnector.OtherTissueFunctionEffect);		
		connect(KPool_per_liter.y, busConnector.KPool);
		connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect);	
		connect(FurosemidePool_Loss.y, busConnector.FurosemidePool_Loss);
		connect(MD_Na.y, busConnector.MD_Na);
		connect(ANPPool_ANP.y,busConnector.ANP);
		connect(GangliaKidney_NA.y,busConnector.GangliaKidney_NA);
		connect(GangliaGeneral_NA.y,busConnector.GangliaGeneral_NA);
		connect(AdrenalNerve_NA.y,busConnector.AdrenalNerve_NA);
		connect(Kidney_NephronCount_Total_xNormal.y,busConnector.Kidney_NephronCount_Total_xNormal);
    end Variables;
end Inputs;

model Test
	extends Physiomodel.Hormones.Hormones;
	Inputs.Input inputs;
equation
	connect(inputs.busConnector, busConnector);  
end Test;

  
