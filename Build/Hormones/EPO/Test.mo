package Inputs
	extends Physiolibrary.Types.IO_Bus;
	redeclare model extends Variables		    
	    T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
	    T.Fraction KidneyFunctionEffect(varName="Kidney-Function.Effect", k=1);
	    T.Pressure KidneyO2_TubulePO2(varName="Kidney-O2.TubulePO2", k=4666);
	    T.Fraction Kidney_NephronCount_Total_xNormal(varName="Kidney-NephronCount.Total(xNormal)", k=1);
	equation
		connect(ECFV_Vol.y, busConnector.ECFV_Vol);
		connect(KidneyFunctionEffect.y, busConnector.KidneyFunctionEffect);
		connect(KidneyO2_TubulePO2.y, busConnector.KidneyO2_TubulePO2);
		connect(Kidney_NephronCount_Total_xNormal.y, busConnector.Kidney_NephronCount_Total_xNormal);
	end Variables;
end Inputs;

model Test  
	Physiolibrary.Types.BusConnector busConnector;
	Physiomodel.Hormones.EPO epo;
	Inputs.Input inputs;
equation
	connect(inputs.busConnector, busConnector);
	connect(busConnector, epo.busConnector);
end Test;


  