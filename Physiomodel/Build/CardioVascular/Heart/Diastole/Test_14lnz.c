/* Linearization */
/* Simulation code for Test generated by the OpenModelica Compiler v1.9.6. */

#include "openmodelica.h"
#include "openmodelica_func.h"
#include "simulation_data.h"
#include "simulation/simulation_info_json.h"
#include "simulation/simulation_runtime.h"
#include "util/omc_error.h"
#include "simulation/solver/model_help.h"
#include "simulation/solver/delay.h"
#include "simulation/solver/linearSystem.h"
#include "simulation/solver/nonlinearSystem.h"
#include "simulation/solver/mixedSystem.h"

#include <string.h>

#include "Test_functions.h"
#include "Test_model.h"
#include "Test_literals.h"




#if defined(HPCOM) && !defined(_OPENMP)
  #error "HPCOM requires OpenMP or the results are wrong"
#endif
#if defined(_OPENMP)
  #include <omp.h>
#else
  /* dummy omp defines */
  #define omp_get_max_threads() 1
#endif
#if defined(__cplusplus)
extern "C" {
#endif

const char *Test_linear_model_frame()
{
  return "model linear_Test\n  parameter Integer n = 0; // states \n  parameter Integer k = 0; // top-level inputs \n  parameter Integer l = 0; // top-level outputs \n"
  "  parameter Real x0[0] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real A[0,0] = zeros(0,0);%s\n"
  "  parameter Real B[0,0] = zeros(0,0);%s\n"
  "  parameter Real C[0,0] = zeros(0,0);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  Real x[0];\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "\n      \n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\nend linear_Test;\n";
}
#if defined(__cplusplus)
}
#endif

