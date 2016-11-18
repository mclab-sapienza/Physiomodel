within Physiomodel.Metabolism.TissueMetabolism;
    model Skin
            extends TissueMetabolism(HeatMetabolism_Skin(data={{10.0+273.15,0.0,0},{29.5+273.15,
                1.0,0.12},{40.0+273.15,1.5,0},{46.0+273.15,0.0,0}}));
                                 //(Lactate(stateName="Skin-Lactate.Mass"));
            extends Physiolibrary.Icons.Skin;
    end Skin;