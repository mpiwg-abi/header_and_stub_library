module mpi_f08
#include "mpi_fortran_integer_types.F90"
#include "mpi_fortran_status_type.F90"
#include "mpi_fortran_handle_types.F90"
#include "mpi_fortran_constants.F90"
#include "mpi_fortran_constants_link.F90"
#include "mpi_fortran_callbacks_decl.F90"
#include "mpi_fortran_functions_decl.F90"
contains
#include "mpi_fortran_callbacks_impl.F90"
end module mpi_f08
#include "mpi_fortran_functions_impl.F90"
