package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
        T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
		T.Fraction AdrenalNerve_NA(varName="AdrenalNerve.NA", k=1.00591);
		T.Fraction OtherTissueFunctionEffect(varName="OtherTissue-Function.Effect",k=1);
		T.Frequency GangliaGeneral_NA(varName="GangliaGeneral.NA(Hz)", k=1.50811);
		
		
    equation				
        connect(ECFV_Vol.y, busConnector.ECFV_Vol);
		connect(AdrenalNerve_NA.y, busConnector.AdrenalNerve_NA);
		connect(OtherTissueFunctionEffect.y, busConnector.OtherTissueFunctionEffect);
		connect(GangliaGeneral_NA.y,busConnector.GangliaGeneral_NA);
		
    end Variables;
end Inputs;

model Test
	extends Physiomodel.Hormones.Catechols.Catechols;
	Inputs.Input inputs;
equation
	connect(inputs.busConnector, busConnector);
end Test;