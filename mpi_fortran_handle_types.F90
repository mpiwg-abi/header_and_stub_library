module mpi_fortran_handle_types

    type, bind(C) :: MPI_Comm
      integer :: MPI_VAL
    end type MPI_Comm

    type, bind(C) :: MPI_Datatype
      integer :: MPI_VAL
    end type MPI_Datatype

    type, bind(C) :: MPI_Errhandler
      integer :: MPI_VAL
    end type MPI_Errhandler

    type, bind(C) :: MPI_File
      integer :: MPI_VAL
    end type MPI_File

    type, bind(C) :: MPI_Group
      integer :: MPI_VAL
    end type MPI_Group

    type, bind(C) :: MPI_Info
      integer :: MPI_VAL
    end type MPI_Info

    type, bind(C) :: MPI_Message
      integer :: MPI_VAL
    end type MPI_Message

    type, bind(C) :: MPI_Op
      integer :: MPI_VAL
    end type MPI_Op

    type, bind(C) :: MPI_Request
      integer :: MPI_VAL
    end type MPI_Request

    type, bind(C) :: MPI_Session
      integer :: MPI_VAL
    end type MPI_Session

    type, bind(C) :: MPI_Win
      integer :: MPI_VAL
    end type MPI_Win

end module mpi_fortran_handle_types
