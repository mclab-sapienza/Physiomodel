package Inputs
  extends Physiolibrary.Types.IO_Bus;
  redeclare model extends Variables
    //Water
    //Metabolism
    //Electrolytes
    T.pH Artys_pH1(varName="BloodPh.ArtysPh");
    Physiolibrary.Types.Constants.DeprecatedUntypedConstant ClPool(k=0);
  equation
    connect(Artys_pH1.y, busConnector.Artys_pH);
    connect(ClPool.y, busConnector.ClPool);
  end Variables;
end Inputs;

model Test  
  Physiolibrary.Types.BusConnector busConnector;
  Physiomodel.Electrolytes.NH4.Ammonium ammonium;
  Inputs.Input inputs;
equation
  connect(inputs.busConnector, busConnector);
  connect(busConnector, ammonium.busConnector);
end Test;
