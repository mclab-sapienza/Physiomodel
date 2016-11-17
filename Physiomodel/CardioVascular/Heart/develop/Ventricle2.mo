within Physiomodel.CardioVascular.Heart.develop;
model Ventricle2
    extends Physiomodel.CardioVascular.Heart.Interfaces.IVentricle;
    extends Physiolibrary.SteadyStates.Interfaces.SteadyState;

    type VentriclePhase = enumeration(
        ISOVOLUMIC_CONTRACTION,
        EJECTION,
        ISOVOLUMIC_RELAXATION,
        FILLING);
      VentriclePhase state(start=VentriclePhase.ISOVOLUMIC_CONTRACTION);
    //  Real Power;
    Real P(start=80,fixed=true);
    Real V(start=126,fixed=true);
    Boolean b(start=false); //b[VentriclePhase](start={false,false,false,false});
    Boolean c;
    /*  Library.PressureFlow.PositivePressureFlow q_in annotation (Placement(transformation(
      extent={{-106,-30},{-86,-10}}), iconTransformation(extent={{-27,58},{-7,
        78}})));
    Library.PressureFlow.NegativePressureFlow q_out annotation (Placement(transformation(
      extent={{86,-30},{106,-10}}), iconTransformation(extent={{10,72},{30,92}})));
    */
    Modelica.Blocks.Interfaces.RealInput PrevCirculationPower
                                 annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-10,80}), iconTransformation(extent={{-100,50},{-80,70}})));
  //Library.Interfaces.RealInput
    Modelica.Blocks.Interfaces.RealOutput HeartMusclePower
                   annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-10,80}), iconTransformation(extent={{-100,70},{-80,90}})));
    Modelica.Blocks.Interfaces.RealInput NextCirculationPower
                                 annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-10,80}), iconTransformation(extent={{-100,30},{-80,50}})));
    Modelica.Blocks.Interfaces.RealInput Power     annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={-10,80}), iconTransformation(extent={{-100,10},{-80,30}})));
equation
    /*
    b[VentriclePhase.ISOVOLUMIC_CONTRACTION]= P>=q_out.pressure; //reach true when ventricle outflow valve open
    b[VentriclePhase.EJECTION]= q_out.q>=0; //reach true when ventricle outflow valve close
    b[VentriclePhase.ISOVOLUMIC_RELAXATION]= P<=q_in.pressure; //reach true when atrium-ventricle valve open
    b[VentriclePhase.FILLING]= q_in.q<=0; //reach true when atrium-ventricle valve close

    when edge(b[pre(state)]) then
    */
    c = pre(b);
    when edge(c) then
        state=mod(pre(state)+1,4);
    end when;

    Power=der(P)*V + der(V)*P;  //=der(V*P)

    //  der(V)= q_out.q + q_in.q;
    state = V;
    changePerMin = q_out.q + q_in.q;

    if state==VentriclePhase.ISOVOLUMIC_CONTRACTION then
        Power=HeartMusclePower;
        q_in.q=0;
        q_out.q=0;
        b = P>=q_out.pressure; //reach true when ventricle outflow valve open
    elseif state==VentriclePhase.EJECTION then
        Power=HeartMusclePower;//-NextCirculationPower;
        q_in.q=0;
        P=q_out.pressure;
        b = q_out.q>=0; //reach true when ventricle outflow valve close
    elseif state==VentriclePhase.ISOVOLUMIC_RELAXATION then
        Power=HeartMusclePower;
        q_in.q=0;
        q_out.q=0;
        b = P<=q_in.pressure; //reach true when atrium-ventricle valve open
    else //filling
        Power=HeartMusclePower; //-PrevCirculationPower;
        P=q_in.pressure;
        q_out.q=0;
        b = q_in.q<=0; //reach true when atrium-ventricle valve close
    end if;

    CO=-q_out.q;
    Vol = V;
end Ventricle2;