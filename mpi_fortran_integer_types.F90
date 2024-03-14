#ifndef MPI_ABI_C_Aint
#define MPI_ABI_C_Aint c_intptr_t
#endif

#ifndef MPI_ABI_C_Offset
#define MPI_ABI_C_Offset c_int64_t
#endif

#ifndef MPI_ABI_C_Count
#define MPI_ABI_C_Count MPI_ABI_C_Offset
#endif

use, intrinsic :: iso_c_binding, only: MPI_ABI_ADDRESS_KIND => MPI_ABI_C_Aint
use, intrinsic :: iso_c_binding, only: MPI_ABI_OFFSET_KIND  => MPI_ABI_C_Offset
use, intrinsic :: iso_c_binding, only: MPI_ABI_COUNT_KIND   => MPI_ABI_C_Count

#undef  MPI_ABI_C_Aint
#undef  MPI_ABI_C_Offset
#undef  MPI_ABI_C_Count

private :: MPI_ABI_ADDRESS_KIND
private :: MPI_ABI_OFFSET_KIND
private :: MPI_ABI_COUNT_KIND

integer, parameter :: MPI_ADDRESS_KIND = MPI_ABI_ADDRESS_KIND
integer, parameter :: MPI_OFFSET_KIND  = MPI_ABI_OFFSET_KIND
integer, parameter :: MPI_COUNT_KIND   = MPI_ABI_COUNT_KIND
