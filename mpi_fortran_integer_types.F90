module mpi_fortran_integer_types

    use, intrinsic :: iso_c_binding, only: c_intptr_t, c_int64_t

    ! add preprocessor business here
    integer, parameter :: MPI_ADDRESS_KIND = c_intptr_t
    integer, parameter :: MPI_OFFSET_KIND  = c_int64_t
    integer, parameter :: MPI_COUNT_KIND   = MPI_OFFSET_KIND

end module mpi_fortran_integer_types
