/* Initialization */
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
#include "Test_11mix.h"
#include "Test_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif


/*
 equation index: 1
 type: SIMPLE_ASSIGN
 systole._additionalPressure_Systolic = additionalPressure_Systolic
 */
void Test_eqFunction_1(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,1};
  $Psystole$PadditionalPressure_Systolic = $PadditionalPressure_Systolic;
  TRACE_POP
}
/*
 equation index: 2
 type: SIMPLE_ASSIGN
 systole._NormalExternalPressure = NormalExternalPressure
 */
void Test_eqFunction_2(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,2};
  $Psystole$PNormalExternalPressure = $PNormalExternalPressure;
  TRACE_POP
}
/*
 equation index: 3
 type: SIMPLE_ASSIGN
 systole._NormalSystolicPressure = NormalSystolicPressure
 */
void Test_eqFunction_3(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  $Psystole$PNormalSystolicPressure = $PNormalSystolicPressure;
  TRACE_POP
}
/*
 equation index: 4
 type: SIMPLE_ASSIGN
 systole._n_Systole = n_Systole
 */
void Test_eqFunction_4(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,4};
  $Psystole$Pn_Systole = $Pn_Systole;
  TRACE_POP
}
/*
 equation index: 5
 type: SIMPLE_ASSIGN
 NormalEndSystolicVolume = (0.000431317816391127 * NormalSystolicPressure) ^ n_Systole
 */
void Test_eqFunction_5(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,5};
  modelica_real tmp0;
  modelica_real tmp1;
  modelica_real tmp2;
  modelica_real tmp3;
  modelica_real tmp4;
  modelica_real tmp5;
  modelica_real tmp6;
  tmp0 = (0.000431317816391127) * ($PNormalSystolicPressure);
  tmp1 = $Pn_Systole;
  if(tmp0 < 0.0 && tmp1 != 0.0)
  {
    tmp3 = modf(tmp1, &tmp4);
    
    if(tmp3 > 0.5)
    {
      tmp3 -= 1.0;
      tmp4 += 1.0;
    }
    else if(tmp3 < -0.5)
    {
      tmp3 += 1.0;
      tmp4 -= 1.0;
    }
    
    if(fabs(tmp3) < 1e-10)
      tmp2 = pow(tmp0, tmp4);
    else
    {
      tmp6 = modf(1.0/tmp1, &tmp5);
      if(tmp6 > 0.5)
      {
        tmp6 -= 1.0;
        tmp5 += 1.0;
      }
      else if(tmp6 < -0.5)
      {
        tmp6 += 1.0;
        tmp5 -= 1.0;
      }
      if(fabs(tmp6) < 1e-10 && ((unsigned long)tmp5 & 1))
      {
        tmp2 = -pow(-tmp0, tmp3)*pow(tmp0, tmp4);
      }
      else
      {
        throwStreamPrint(threadData, "Invalid root: (%g)^(%g)", tmp0, tmp1);
      }
    }
  }
  else
  {
    tmp2 = pow(tmp0, tmp1);
  }
  if(isnan(tmp2) || isinf(tmp2))
  {
    throwStreamPrint(threadData, "Invalid root: (%g)^(%g)", tmp0, tmp1);
  }
  $PNormalEndSystolicVolume = tmp2;
  TRACE_POP
}
/*
 equation index: 6
 type: SIMPLE_ASSIGN
 systole._NormalEndSystolicVolume = NormalEndSystolicVolume
 */
void Test_eqFunction_6(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,6};
  $Psystole$PNormalEndSystolicVolume = $PNormalEndSystolicVolume;
  TRACE_POP
}
/*
 equation index: 7
 type: SIMPLE_ASSIGN
 step._y = step.offset + (if time < step.startTime then 0.0 else step.height)
 */
void Test_eqFunction_7(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,7};
  modelica_boolean tmp7;
  tmp7 = Less(data->localData[0]->timeValue,$Pstep$PstartTime);
  $Pstep$Py = $Pstep$Poffset + (tmp7?0.0:$Pstep$Pheight);
  TRACE_POP
}
/*
 equation index: 8
 type: SIMPLE_ASSIGN
 systole._ESV = systole.NormalEndSystolicVolume * DIVISION(systole.additionalPressure_Systolic - step.y, contractility * (systole.NormalSystolicPressure + systole.additionalPressure_Systolic - systole.NormalExternalPressure)) ^ DIVISION(1.0, systole.n_Systole)
 */
void Test_eqFunction_8(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,8};
  modelica_real tmp8;
  modelica_real tmp9;
  modelica_real tmp10;
  modelica_real tmp11;
  modelica_real tmp12;
  modelica_real tmp13;
  modelica_real tmp14;
  tmp8 = DIVISION_SIM($Psystole$PadditionalPressure_Systolic - $Pstep$Py,($Pcontractility) * ($Psystole$PNormalSystolicPressure + $Psystole$PadditionalPressure_Systolic - $Psystole$PNormalExternalPressure),"contractility * (systole.NormalSystolicPressure + systole.additionalPressure_Systolic - systole.NormalExternalPressure)",equationIndexes);
  tmp9 = DIVISION_SIM(1.0,$Psystole$Pn_Systole,"systole.n_Systole",equationIndexes);
  if(tmp8 < 0.0 && tmp9 != 0.0)
  {
    tmp11 = modf(tmp9, &tmp12);
    
    if(tmp11 > 0.5)
    {
      tmp11 -= 1.0;
      tmp12 += 1.0;
    }
    else if(tmp11 < -0.5)
    {
      tmp11 += 1.0;
      tmp12 -= 1.0;
    }
    
    if(fabs(tmp11) < 1e-10)
      tmp10 = pow(tmp8, tmp12);
    else
    {
      tmp14 = modf(1.0/tmp9, &tmp13);
      if(tmp14 > 0.5)
      {
        tmp14 -= 1.0;
        tmp13 += 1.0;
      }
      else if(tmp14 < -0.5)
      {
        tmp14 += 1.0;
        tmp13 -= 1.0;
      }
      if(fabs(tmp14) < 1e-10 && ((unsigned long)tmp13 & 1))
      {
        tmp10 = -pow(-tmp8, tmp11)*pow(tmp8, tmp12);
      }
      else
      {
        throwStreamPrint(threadData, "Invalid root: (%g)^(%g)", tmp8, tmp9);
      }
    }
  }
  else
  {
    tmp10 = pow(tmp8, tmp9);
  }
  if(isnan(tmp10) || isinf(tmp10))
  {
    throwStreamPrint(threadData, "Invalid root: (%g)^(%g)", tmp8, tmp9);
  }
  $Psystole$PESV = ($Psystole$PNormalEndSystolicVolume) * (tmp10);
  TRACE_POP
}
/*
 equation index: 9
 type: SIMPLE_ASSIGN
 systole._outflow._pressure = 0.0
 */
void Test_eqFunction_9(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,9};
  $Psystole$Poutflow$Ppressure = 0.0;
  TRACE_POP
}
/*
 equation index: 10
 type: SIMPLE_ASSIGN
 outflow._q = 0.0
 */
void Test_eqFunction_10(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,10};
  $Poutflow$Pq = 0.0;
  TRACE_POP
}


int Test_functionInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  
  data->simulationInfo->discreteCall = 1;
  Test_eqFunction_1(data, threadData);

  Test_eqFunction_2(data, threadData);

  Test_eqFunction_3(data, threadData);

  Test_eqFunction_4(data, threadData);

  Test_eqFunction_5(data, threadData);

  Test_eqFunction_6(data, threadData);

  Test_eqFunction_7(data, threadData);

  Test_eqFunction_8(data, threadData);

  Test_eqFunction_9(data, threadData);

  Test_eqFunction_10(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int Test_functionInitialEquations_lambda0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  
  data->simulationInfo->discreteCall = 1;
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}
int Test_functionRemovedInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int *equationIndexes = NULL;
  double res = 0.0;

  
  TRACE_POP
  return 0;
}

/* funtion initialize mixed systems */
void Test_initialMixedSystem(int nMixedSystems, MIXED_SYSTEM_DATA* mixedSystemData)
{
  /* initial mixed systems */
  /* initial_lambda0 mixed systems */
  /* parameter mixed systems */
  /* model mixed systems */
  /* jacobians mixed systems */
}

#if defined(__cplusplus)
}
#endif

