type, bind(c) :: MPI_Comm
   integer :: MPI_VAL
end type MPI_Comm

type, bind(c) :: MPI_Datatype
  integer :: MPI_VAL
end type MPI_Datatype

type, bind(c) :: MPI_Errhandler
  integer :: MPI_VAL
end type MPI_Errhandler

type, bind(c) :: MPI_File
  integer :: MPI_VAL
end type MPI_File

type, bind(c) :: MPI_Group
  integer :: MPI_VAL
end type MPI_Group

type, bind(c) :: MPI_Info
  integer :: MPI_VAL
end type MPI_Info

type, bind(c) :: MPI_Message
  integer :: MPI_VAL
end type MPI_Message

type, bind(c) :: MPI_Op
  integer :: MPI_VAL
end type MPI_Op

type, bind(c) :: MPI_Request
  integer :: MPI_VAL
end type MPI_Request

type, bind(c) :: MPI_Session
  integer :: MPI_VAL
end type MPI_Session

type, bind(c) :: MPI_Win
  integer :: MPI_VAL
end type MPI_Win
