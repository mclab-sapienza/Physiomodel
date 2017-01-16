package Inputs
    extends Physiolibrary.Types.IO_Bus;
    redeclare model extends Variables
		//used Values of rightAtrium pressure and pericardium pressure
		T.Pressure rightAtrium_TMP(k=97.9625);
		T.Pressure leftAtrium_TMP(k=-445.993);		
		T.Volume ECFV_Vol(varName="ECFV.Vol", k=0.014361);
		
    equation        		
		connect(ECFV_Vol.y, busConnector.ECFV_Vol);
		connect(rightAtrium_TMP.y, busConnector.rightAtrium_TMP);
		connect(leftAtrium_TMP.y, busConnector.leftAtrium_TMP);
    end Variables;
end Inputs;


model Test
	extends Physiomodel.Hormones.ANP;
	Inputs.Input inputs;	
equation
	connect(inputs.busConnector, busConnector);
end Test;

  
