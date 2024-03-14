abstract interface

subroutine MPI_User_function(invec, inoutvec, len, datatype)
  use, intrinsic :: iso_c_binding, only : c_ptr
  import :: MPI_Datatype
  type(c_ptr), value :: invec, inoutvec
  integer :: len
  type(MPI_Datatype) :: datatype
end subroutine MPI_User_function

subroutine MPI_User_function_c(invec, inoutvec, len, datatype)
  use, intrinsic :: iso_c_binding, only : c_ptr
  import :: MPI_Datatype, MPI_COUNT_KIND
  type(c_ptr), value :: invec, inoutvec
  integer(kind=MPI_COUNT_KIND) :: len
  type(MPI_Datatype) :: datatype
end subroutine MPI_User_function_c

subroutine MPI_Comm_copy_attr_function(oldcomm, comm_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
  import :: MPI_Comm, MPI_ADDRESS_KIND
  type(MPI_Comm) :: oldcomm
  integer :: comm_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
  logical :: flag
end subroutine MPI_Comm_copy_attr_function

subroutine MPI_Comm_delete_attr_function(comm, comm_keyval, attribute_val, extra_state, ierror)
  import :: MPI_Comm, MPI_ADDRESS_KIND
  type(MPI_Comm) :: comm
  integer :: comm_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: attribute_val, extra_state
end subroutine MPI_Comm_delete_attr_function

subroutine MPI_Win_copy_attr_function(oldwin, win_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
  import :: MPI_Win, MPI_ADDRESS_KIND
  type(MPI_Win) :: oldwin
  integer :: win_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
  logical :: flag
end subroutine MPI_Win_copy_attr_function

subroutine MPI_Win_delete_attr_function(win, win_keyval, attribute_val, extra_state, ierror)
  import :: MPI_Win, MPI_ADDRESS_KIND
  type(MPI_Win) :: win
  integer :: win_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: attribute_val, extra_state
end subroutine MPI_Win_delete_attr_function

subroutine MPI_Type_copy_attr_function(oldtype, type_keyval, extra_state, attribute_val_in, attribute_val_out, flag, ierror)
  import :: MPI_Datatype, MPI_ADDRESS_KIND
  type(MPI_Datatype) :: oldtype
  integer :: type_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: extra_state, attribute_val_in, attribute_val_out
  logical :: flag
end subroutine MPI_Type_copy_attr_function

subroutine MPI_Type_delete_attr_function(type, type_keyval, attribute_val, extra_state, ierror)
  import :: MPI_Datatype, MPI_ADDRESS_KIND
  type(MPI_Datatype) :: type
  integer :: type_keyval, ierror
  integer(kind=MPI_ADDRESS_KIND) :: attribute_val, extra_state
end subroutine MPI_Type_delete_attr_function

subroutine MPI_Comm_errhandler_function(comm, error_code)
  import :: MPI_Comm
  type(MPI_Comm) :: comm
  integer :: error_code
end subroutine MPI_Comm_errhandler_function

subroutine MPI_Win_errhandler_function(win, error_code)
  import :: MPI_Win
  type(MPI_Win) :: win
  integer :: error_code
end subroutine MPI_Win_errhandler_function

subroutine MPI_File_errhandler_function(file, error_code)
  import :: MPI_File
  type(MPI_File) :: file
  integer :: error_code
end subroutine MPI_File_errhandler_function

subroutine MPI_Session_errhandler_function(session, error_code)
  import :: MPI_Session
  type(MPI_Session) :: session
  integer :: error_code
end subroutine MPI_Session_errhandler_function

subroutine MPI_Grequest_query_function(extra_state, status, ierror)
  import :: MPI_ADDRESS_KIND, MPI_Status
  integer(kind=MPI_ADDRESS_KIND) :: extra_state
  type(MPI_Status) :: status
  integer :: ierror
end subroutine MPI_Grequest_query_function

subroutine MPI_Grequest_free_function(extra_state, ierror)
  import :: MPI_ADDRESS_KIND
  integer(kind=MPI_ADDRESS_KIND) :: extra_state
  integer :: ierror
end subroutine MPI_Grequest_free_function

subroutine MPI_Grequest_cancel_function(extra_state, complete, ierror)
  import :: MPI_ADDRESS_KIND
  integer(kind=MPI_ADDRESS_KIND) :: extra_state
  logical :: complete
  integer :: ierror
end subroutine MPI_Grequest_cancel_function

subroutine MPI_Datarep_extent_function(datatype, extent, extra_state, ierror)
  import :: MPI_Datatype, MPI_ADDRESS_KIND
  type(MPI_Datatype) :: datatype
  integer(kind=MPI_ADDRESS_KIND) :: extent, extra_state
  integer :: ierror
end subroutine MPI_Datarep_extent_function

subroutine MPI_Datarep_conversion_function(userbuf, datatype, count, filebuf, position, extra_state, ierror)
  use, intrinsic :: iso_c_binding, only : c_ptr
  import :: MPI_Datatype, MPI_ADDRESS_KIND, MPI_OFFSET_KIND
  type(c_ptr), value :: userbuf, filebuf
  type(MPI_Datatype) :: datatype
  integer :: count, ierror
  integer(kind=MPI_OFFSET_KIND) :: position
  integer(kind=MPI_ADDRESS_KIND) :: extra_state
end subroutine MPI_Datarep_conversion_function

subroutine MPI_Datarep_conversion_function_c(userbuf, datatype, count, filebuf, position, extra_state, ierror) !(_c)
  use, intrinsic :: iso_c_binding, only : c_ptr
  import :: MPI_Datatype, MPI_COUNT_KIND, MPI_ADDRESS_KIND, MPI_OFFSET_KIND
  type(c_ptr), value :: userbuf, filebuf
  type(MPI_Datatype) :: datatype
  integer(kind=MPI_COUNT_KIND) :: count
  integer(kind=MPI_OFFSET_KIND) :: position
  integer(kind=MPI_ADDRESS_KIND) :: extra_state
  integer :: ierror
end subroutine MPI_Datarep_conversion_function_c

end interface
