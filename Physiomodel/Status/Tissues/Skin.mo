within Physiomodel.Status.Tissues;
      model Skin
        extends TissueFitness(TemperatureOnFunction(data={{10.0+273.15,0.0,0},{29.5+273.15,
                1.0,0.12},{40.0+273.15,1.5,0},{46.0+273.15,0.0,0}}));
        extends Physiolibrary.Icons.Skin;
      end Skin;