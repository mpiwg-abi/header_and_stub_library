integer(kind=MPI_ADDRESS_KIND), target :: MPI_BOTTOM = 0
integer(kind=MPI_ADDRESS_KIND), target :: MPI_IN_PLACE = 1
integer(kind=MPI_ADDRESS_KIND), target :: MPI_BUFFER_AUTOMATIC = 2

character(len=1), dimension(1),   target :: MPI_ARGV_NULL = [CHAR(0)]
character(len=1), dimension(1,1), target :: MPI_ARGVS_NULL = reshape([CHAR(0)],[1,1])

integer, dimension(1), target :: MPI_ERRCODES_IGNORE = [0]
integer, dimension(1), target :: MPI_UNWEIGHTED = [4]
integer, dimension(1), target :: MPI_WEIGHTS_EMPTY = [5]

type(MPI_Status), target :: MPI_STATUS_IGNORE = MPI_Status(MPI_ANY_SOURCE,MPI_ANY_TAG,MPI_SUCCESS,[0,0,0,0,0])
type(MPI_Status), dimension(1), target :: MPI_STATUSES_IGNORE = [MPI_Status(MPI_ANY_SOURCE,MPI_ANY_TAG,MPI_SUCCESS,[0,0,0,0,0])]
