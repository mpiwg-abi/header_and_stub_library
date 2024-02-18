module mpi_fortran_callback_prototypes

ABSTRACT INTERFACE
  SUBROUTINE MPI_User_function(invec, inoutvec, len, datatype)
    USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(C_PTR), VALUE :: invec, inoutvec
    INTEGER :: len
    TYPE(MPI_Datatype) :: datatype
  END SUBROUTINE MPI_User_function
END INTERFACE

ABSTRACT INTERFACE
 SUBROUTINE MPI_User_function_c(invec, inoutvec, len, datatype) !(_c)
    USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(C_PTR), VALUE :: invec, inoutvec
    INTEGER(KIND=MPI_COUNT_KIND) :: len
    TYPE(MPI_Datatype) :: datatype
  END SUBROUTINE MPI_User_function_c
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Comm_copy_attr_function(oldcomm, comm_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Comm) :: oldcomm
    INTEGER :: comm_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
    LOGICAL :: flag
  END SUBROUTINE MPI_Comm_copy_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Comm_delete_attr_function(comm, comm_keyval, attribute_val, extra_state, ierror) 
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Comm) :: comm
    INTEGER :: comm_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val, extra_state
  END SUBROUTINE MPI_Comm_delete_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Win_copy_attr_function(oldwin, win_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Win) :: oldwin
    INTEGER :: win_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
    LOGICAL :: flag
  END SUBROUTINE MPI_Win_copy_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Win_delete_attr_function(win, win_keyval, attribute_val, extra_state, ierror) 
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Win) :: win
    INTEGER :: win_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val, extra_state
  END SUBROUTINE MPI_Win_delete_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Type_copy_attr_function(oldtype, type_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Datatype) :: oldtype
    INTEGER :: type_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
    LOGICAL :: flag
  END SUBROUTINE MPI_Type_copy_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Type_delete_attr_function(type, type_keyval, attribute_val, extra_state, ierror) 
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Datatype) :: type
    INTEGER :: type_keyval, ierror
    INTEGER(KIND=MPI_ADDRESS_KIND) :: attribute_val, extra_state
  END SUBROUTINE MPI_Type_delete_attr_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Comm_errhandler_function(comm, error_code)
    use mpi_fortran_handle_types
    TYPE(MPI_Comm) :: comm
    INTEGER :: error_code
  END SUBROUTINE MPI_Comm_errhandler_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Win_errhandler_function(win, error_code)
    use mpi_fortran_handle_types
    TYPE(MPI_Win) :: win
    INTEGER :: error_code
  END SUBROUTINE MPI_Win_errhandler_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_File_errhandler_function(file, error_code)
    use mpi_fortran_handle_types
    TYPE(MPI_File) :: file
    INTEGER :: error_code
  END SUBROUTINE MPI_File_errhandler_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Session_errhandler_function(session, error_code)
    use mpi_fortran_handle_types
    TYPE(MPI_Session) :: session
    INTEGER :: error_code
  END SUBROUTINE MPI_Session_errhandler_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Grequest_query_function(extra_state, status, ierror)
    use mpi_fortran_integer_types, only: MPI_ADDRESS_KIND
    use mpi_fortran_status, only: MPI_Status
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
    TYPE(MPI_Status) :: status
    INTEGER :: ierror
  END SUBROUTINE MPI_Grequest_query_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Grequest_free_function(extra_state, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
    INTEGER :: ierror
  END SUBROUTINE MPI_Grequest_free_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Grequest_cancel_function(extra_state, complete, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
    LOGICAL :: complete
    INTEGER :: ierror
  END SUBROUTINE MPI_Grequest_cancel_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Datarep_extent_function(datatype, extent, extra_state, ierror)
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(MPI_Datatype) :: datatype
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extent, extra_state
    INTEGER :: ierror
  END SUBROUTINE MPI_Datarep_extent_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Datarep_conversion_function(userbuf, datatype, count, filebuf, position, extra_state, ierror)
    USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(C_PTR), VALUE :: userbuf, filebuf
    TYPE(MPI_Datatype) :: datatype
    INTEGER :: count, ierror
    INTEGER(KIND=MPI_OFFSET_KIND) :: position
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
  END SUBROUTINE MPI_Datarep_conversion_function
END INTERFACE

ABSTRACT INTERFACE
  SUBROUTINE MPI_Datarep_conversion_function_c(userbuf, datatype, count, filebuf, position, extra_state, ierror) !(_c)
    USE, INTRINSIC :: ISO_C_BINDING, ONLY : C_PTR
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    TYPE(C_PTR), VALUE :: userbuf, filebuf
    TYPE(MPI_Datatype) :: datatype
    INTEGER(KIND=MPI_COUNT_KIND) :: count
    INTEGER(KIND=MPI_OFFSET_KIND) :: position
    INTEGER(KIND=MPI_ADDRESS_KIND) :: extra_state
    INTEGER :: ierror
  END SUBROUTINE MPI_Datarep_conversion_function_c
END INTERFACE

end module mpi_fortran_callback_prototypes
