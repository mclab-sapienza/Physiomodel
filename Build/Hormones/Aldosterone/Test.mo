package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
       T.Volume BodyH2O_Vol(varName="BodyH2O.Vol", k=0.0408422);
	   T.VolumeFlowRate Liver_BloodFlow(varName="Liver-O2.BloodFlow",k=2.05285e-005);
	   T.Fraction OtherTissueFunctionEffect(varName="OtherTissue-Function.Effect",k=1);	  
	   T.Concentration KPool_per_liter(varName="KPool.[K+(mEq/L)]",k=4.4);
	   T.Pressure rightAtrium_TMP(k=97.9625);
	   T.Pressure leftAtrium_TMP(k=-445.993);		
    equation				
        connect(BodyH2O_Vol.y, busConnector.BodyH2O_Vol);
		connect(Liver_BloodFlow.y, busConnector.Liver_BloodFlow);
		connect(OtherTissueFunctionEffect.y, busConnector.OtherTissueFunctionEffect);		
		connect(KPool_per_liter.y, busConnector.KPool);
		connect(rightAtrium_TMP.y, busConnector.rightAtrium_TMP);
		connect(leftAtrium_TMP.y, busConnector.leftAtrium_TMP);
    end Variables;
end Inputs;


model Test
	extends Physiomodel.Hormones.Aldosterone;
	Inputs.Input inputs;
equation
	connect(inputs.busConnector, busConnector);
end Test;

  
