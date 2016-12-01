
from pymodelica import compile_fmu
from pyfmi import load_fmu

submodels=["CardioVascular","Water","Proteins","Electrolytes","Gases","Heat","Metabolism","Hormones","Nerves","Status","Setup"]

for submodel in submodels:
    modelName = 'Physiomodel.'+submodel+'.IO_Bus.'+submodel+'_test_SI'
    print modelName
    fmu = compile_fmu(modelName)
    model = load_fmu(fmu)
    res = model.simulate()


