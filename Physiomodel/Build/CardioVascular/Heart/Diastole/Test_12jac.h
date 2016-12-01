/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define Test_INDEX_JAC_D 3
  int Test_functionJacD_column(void* data, threadData_t *threadData);
  int Test_initialAnalyticJacobianD(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* D */

#if defined(__cplusplus)
extern "C" {
#endif
  #define Test_INDEX_JAC_C 2
  int Test_functionJacC_column(void* data, threadData_t *threadData);
  int Test_initialAnalyticJacobianC(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* C */

#if defined(__cplusplus)
extern "C" {
#endif
  #define Test_INDEX_JAC_B 1
  int Test_functionJacB_column(void* data, threadData_t *threadData);
  int Test_initialAnalyticJacobianB(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* B */

#if defined(__cplusplus)
extern "C" {
#endif
  #define Test_INDEX_JAC_A 0
  int Test_functionJacA_column(void* data, threadData_t *threadData);
  int Test_initialAnalyticJacobianA(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* A */


