module mpi_fortran_constants

    use, intrinsic :: iso_c_binding, only: c_intptr_t, c_int64_t
    use mpi_fortran_status
    use mpi_fortran_integer_types
    use mpi_fortran_handle_types
    use mpi_fortran_callback_prototypes

    integer, parameter :: MPI_VERSION    = 4
    integer, parameter :: MPI_SUBVERSION = 2

    type(MPI_Op), parameter :: MPI_OP_NULL    = MPI_Op(00000032)
    type(MPI_Op), parameter :: MPI_SUM        = MPI_Op(00000033)
    type(MPI_Op), parameter :: MPI_MIN        = MPI_Op(00000034)
    type(MPI_Op), parameter :: MPI_MAX        = MPI_Op(00000035)
    type(MPI_Op), parameter :: MPI_PROD       = MPI_Op(00000036)
    type(MPI_Op), parameter :: MPI_BAND       = MPI_Op(00000040)
    type(MPI_Op), parameter :: MPI_BOR        = MPI_Op(00000041)
    type(MPI_Op), parameter :: MPI_BXOR       = MPI_Op(00000042)
    type(MPI_Op), parameter :: MPI_LAND       = MPI_Op(00000048)
    type(MPI_Op), parameter :: MPI_LOR        = MPI_Op(00000049)
    type(MPI_Op), parameter :: MPI_LXOR       = MPI_Op(00000050)
    type(MPI_Op), parameter :: MPI_MINLOC     = MPI_Op(00000056)
    type(MPI_Op), parameter :: MPI_MAXLOC     = MPI_Op(00000057)
    type(MPI_Op), parameter :: MPI_REPLACE    = MPI_Op(00000060)
    type(MPI_Op), parameter :: MPI_NO_OP      = MPI_Op(00000061)

    type(MPI_Comm), parameter :: MPI_COMM_NULL    = MPI_Comm(00000256)
    type(MPI_Comm), parameter :: MPI_COMM_WORLD   = MPI_Comm(00000257)
    type(MPI_Comm), parameter :: MPI_COMM_SELF    = MPI_Comm(00000258)

    type(MPI_Group), parameter :: MPI_GROUP_NULL   = MPI_Group(00000264)
    type(MPI_Group), parameter :: MPI_GROUP_EMPTY  = MPI_Group(00000265)

    type(MPI_Win), parameter :: MPI_WIN_NULL   = MPI_Win(00000272)

    type(MPI_File), parameter :: MPI_FILE_NULL    = MPI_File(00000280)

    type(MPI_Session), parameter :: MPI_SESSION_NULL      = MPI_Session(00000288)

    type(MPI_Message), parameter :: MPI_MESSAGE_NULL      = MPI_Message(00000296)
    type(MPI_Message), parameter :: MPI_MESSAGE_NO_PROC   = MPI_Message(00000297)

    type(MPI_Info), parameter :: MPI_INFO_ENV   = MPI_Info(00000305)

    type(MPI_Errhandler), parameter :: MPI_ERRHANDLER_NULL   = MPI_Errhandler(00000320)
    type(MPI_Errhandler), parameter :: MPI_ERRORS_ARE_FATAL  = MPI_Errhandler(00000321)
    type(MPI_Errhandler), parameter :: MPI_ERRORS_RETURN     = MPI_Errhandler(00000322)
    type(MPI_Errhandler), parameter :: MPI_ERRORS_ABORT      = MPI_Errhandler(00000323)

    type(MPI_Request), parameter :: MPI_REQUEST_NULL    = MPI_Request(00000384)

    type(MPI_Datatype), parameter :: MPI_DATATYPE_NULL              = MPI_Datatype(00000512)
    type(MPI_Datatype), parameter :: MPI_AINT                       = MPI_Datatype(00000513)
    type(MPI_Datatype), parameter :: MPI_COUNT                      = MPI_Datatype(00000514)
    type(MPI_Datatype), parameter :: MPI_OFFSET                     = MPI_Datatype(00000515)
    type(MPI_Datatype), parameter :: MPI_PACKED                     = MPI_Datatype(00000519)
    type(MPI_Datatype), parameter :: MPI_SHORT                      = MPI_Datatype(00000520)
    type(MPI_Datatype), parameter :: MPI_INT                        = MPI_Datatype(00000521)
    type(MPI_Datatype), parameter :: MPI_LONG                       = MPI_Datatype(00000522)
    type(MPI_Datatype), parameter :: MPI_LONG_LONG                  = MPI_Datatype(00000523)
    type(MPI_Datatype), parameter :: MPI_UNSIGNED_SHORT             = MPI_Datatype(00000524)
    type(MPI_Datatype), parameter :: MPI_UNSIGNED                   = MPI_Datatype(00000525)
    type(MPI_Datatype), parameter :: MPI_UNSIGNED_LONG              = MPI_Datatype(00000526)
    type(MPI_Datatype), parameter :: MPI_UNSIGNED_LONG_LONG         = MPI_Datatype(00000527)
    type(MPI_Datatype), parameter :: MPI_FLOAT                      = MPI_Datatype(00000528)
    type(MPI_Datatype), parameter :: MPI_C_FLOAT_COMPLEX            = MPI_Datatype(00000530)
    type(MPI_Datatype), parameter :: MPI_CXX_FLOAT_COMPLEX          = MPI_Datatype(00000531)
    type(MPI_Datatype), parameter :: MPI_DOUBLE                     = MPI_Datatype(00000532)
    type(MPI_Datatype), parameter :: MPI_C_DOUBLE_COMPLEX           = MPI_Datatype(00000534)
    type(MPI_Datatype), parameter :: MPI_CXX_DOUBLE_COMPLEX         = MPI_Datatype(00000535)
    type(MPI_Datatype), parameter :: MPI_LOGICAL                    = MPI_Datatype(00000536)
    type(MPI_Datatype), parameter :: MPI_INTEGER                    = MPI_Datatype(00000537)
    type(MPI_Datatype), parameter :: MPI_REAL                       = MPI_Datatype(00000538)
    type(MPI_Datatype), parameter :: MPI_COMPLEX                    = MPI_Datatype(00000539)
    type(MPI_Datatype), parameter :: MPI_DOUBLE_PRECISION           = MPI_Datatype(00000540)
    type(MPI_Datatype), parameter :: MPI_DOUBLE_COMPLEX             = MPI_Datatype(00000541)
    type(MPI_Datatype), parameter :: MPI_LONG_DOUBLE                = MPI_Datatype(00000544)
    type(MPI_Datatype), parameter :: MPI_C_LONG_DOUBLE_COMPLEX      = MPI_Datatype(00000548)
    type(MPI_Datatype), parameter :: MPI_CXX_LONG_DOUBLE_COMPLEX    = MPI_Datatype(00000549)
    type(MPI_Datatype), parameter :: MPI_FLOAT_INT                  = MPI_Datatype(00000552)
    type(MPI_Datatype), parameter :: MPI_DOUBLE_INT                 = MPI_Datatype(00000553)
    type(MPI_Datatype), parameter :: MPI_LONG_INT                   = MPI_Datatype(00000554)
    type(MPI_Datatype), parameter :: MPI_2INT                       = MPI_Datatype(00000555)
    type(MPI_Datatype), parameter :: MPI_SHORT_INT                  = MPI_Datatype(00000556)
    type(MPI_Datatype), parameter :: MPI_LONG_DOUBLE_INT            = MPI_Datatype(00000557)
    type(MPI_Datatype), parameter :: MPI_2REAL                      = MPI_Datatype(00000560)
    type(MPI_Datatype), parameter :: MPI_2DOUBLE_PRECISION          = MPI_Datatype(00000561)
    type(MPI_Datatype), parameter :: MPI_2INTEGER                   = MPI_Datatype(00000562)
    type(MPI_Datatype), parameter :: MPI_C_BOOL                     = MPI_Datatype(00000568)
    type(MPI_Datatype), parameter :: MPI_CXX_BOOL                   = MPI_Datatype(00000569)
    type(MPI_Datatype), parameter :: MPI_WCHAR                      = MPI_Datatype(00000572)
    type(MPI_Datatype), parameter :: MPI_INT8_T                     = MPI_Datatype(00000576)
    type(MPI_Datatype), parameter :: MPI_UINT8_T                    = MPI_Datatype(00000577)
    type(MPI_Datatype), parameter :: MPI_CHAR                       = MPI_Datatype(00000579)
    type(MPI_Datatype), parameter :: MPI_SIGNED_CHAR                = MPI_Datatype(00000580)
    type(MPI_Datatype), parameter :: MPI_UNSIGNED_CHAR              = MPI_Datatype(00000581)
    type(MPI_Datatype), parameter :: MPI_BYTE                       = MPI_Datatype(00000583)
    type(MPI_Datatype), parameter :: MPI_INT16_T                    = MPI_Datatype(00000584)
    type(MPI_Datatype), parameter :: MPI_UINT16_T                   = MPI_Datatype(00000585)
    type(MPI_Datatype), parameter :: MPI_INT32_T                    = MPI_Datatype(00000592)
    type(MPI_Datatype), parameter :: MPI_UINT32_T                   = MPI_Datatype(00000593)
    type(MPI_Datatype), parameter :: MPI_INT64_T                    = MPI_Datatype(00000600)
    type(MPI_Datatype), parameter :: MPI_UINT64_T                   = MPI_Datatype(00000601)
    type(MPI_Datatype), parameter :: MPIX_LOGICAL1                  = MPI_Datatype(00000704)
    type(MPI_Datatype), parameter :: MPI_INTEGER1                   = MPI_Datatype(00000705)
    type(MPI_Datatype), parameter :: MPIX_REAL1                     = MPI_Datatype(00000706)
    type(MPI_Datatype), parameter :: MPI_CHARACTER                  = MPI_Datatype(00000707)
    type(MPI_Datatype), parameter :: MPIX_LOGICAL2                  = MPI_Datatype(00000712)
    type(MPI_Datatype), parameter :: MPI_INTEGER2                   = MPI_Datatype(00000713)
    type(MPI_Datatype), parameter :: MPIX_REAL2                     = MPI_Datatype(00000714)
    type(MPI_Datatype), parameter :: MPIX_LOGICAL4                  = MPI_Datatype(00000720)
    type(MPI_Datatype), parameter :: MPI_INTEGER4                   = MPI_Datatype(00000721)
    type(MPI_Datatype), parameter :: MPI_REAL4                      = MPI_Datatype(00000722)
    type(MPI_Datatype), parameter :: MPIX_COMPLEX4                  = MPI_Datatype(00000723)
    type(MPI_Datatype), parameter :: MPIX_LOGICAL8                  = MPI_Datatype(00000728)
    type(MPI_Datatype), parameter :: MPI_INTEGER8                   = MPI_Datatype(00000729)
    type(MPI_Datatype), parameter :: MPI_REAL8                      = MPI_Datatype(00000730)
    type(MPI_Datatype), parameter :: MPI_COMPLEX8                   = MPI_Datatype(00000731)
    type(MPI_Datatype), parameter :: MPIX_LOGICAL16                 = MPI_Datatype(00000736)
    type(MPI_Datatype), parameter :: MPI_INTEGER16                  = MPI_Datatype(00000737)
    type(MPI_Datatype), parameter :: MPI_REAL16                     = MPI_Datatype(00000738)
    type(MPI_Datatype), parameter :: MPI_COMPLEX16                  = MPI_Datatype(00000739)
    type(MPI_Datatype), parameter :: MPI_COMPLEX32                  = MPI_Datatype(00000747)

    ! Error classes
    integer, parameter :: MPI_SUCCESS                         = 0
    integer, parameter :: MPI_ERR_BUFFER                      = 1
    integer, parameter :: MPI_ERR_COUNT                       = 2
    integer, parameter :: MPI_ERR_TYPE                        = 3
    integer, parameter :: MPI_ERR_TAG                         = 4
    integer, parameter :: MPI_ERR_COMM                        = 5
    integer, parameter :: MPI_ERR_RANK                        = 6
    integer, parameter :: MPI_ERR_REQUEST                     = 7
    integer, parameter :: MPI_ERR_ROOT                        = 8
    integer, parameter :: MPI_ERR_GROUP                       = 9
    integer, parameter :: MPI_ERR_OP                          = 10
    integer, parameter :: MPI_ERR_TOPOLOGY                    = 11
    integer, parameter :: MPI_ERR_DIMS                        = 12
    integer, parameter :: MPI_ERR_ARG                         = 13
    integer, parameter :: MPI_ERR_UNKNOWN                     = 14
    integer, parameter :: MPI_ERR_TRUNCATE                    = 15
    integer, parameter :: MPI_ERR_OTHER                       = 16
    integer, parameter :: MPI_ERR_INTERN                      = 17
    integer, parameter :: MPI_ERR_PENDING                     = 18
    integer, parameter :: MPI_ERR_IN_STATUS                   = 19
    integer, parameter :: MPI_ERR_ACCESS                      = 20
    integer, parameter :: MPI_ERR_AMODE                       = 21
    integer, parameter :: MPI_ERR_ASSERT                      = 22
    integer, parameter :: MPI_ERR_BAD_FILE                    = 23
    integer, parameter :: MPI_ERR_BASE                        = 24
    integer, parameter :: MPI_ERR_CONVERSION                  = 25
    integer, parameter :: MPI_ERR_DISP                        = 26
    integer, parameter :: MPI_ERR_DUP_DATAREP                 = 27
    integer, parameter :: MPI_ERR_FILE_EXISTS                 = 28
    integer, parameter :: MPI_ERR_FILE_IN_USE                 = 29
    integer, parameter :: MPI_ERR_FILE                        = 30
    integer, parameter :: MPI_ERR_INFO_KEY                    = 31
    integer, parameter :: MPI_ERR_INFO_NOKEY                  = 32
    integer, parameter :: MPI_ERR_INFO_VALUE                  = 33
    integer, parameter :: MPI_ERR_INFO                        = 34
    integer, parameter :: MPI_ERR_IO                          = 35
    integer, parameter :: MPI_ERR_KEYVAL                      = 36
    integer, parameter :: MPI_ERR_LOCKTYPE                    = 37
    integer, parameter :: MPI_ERR_NAME                        = 38
    integer, parameter :: MPI_ERR_NO_MEM                      = 39
    integer, parameter :: MPI_ERR_NOT_SAME                    = 40
    integer, parameter :: MPI_ERR_NO_SPACE                    = 41
    integer, parameter :: MPI_ERR_NO_SUCH_FILE                = 42
    integer, parameter :: MPI_ERR_PORT                        = 43
    integer, parameter :: MPI_ERR_PROC_ABORTED                = 44
    integer, parameter :: MPI_ERR_QUOTA                       = 45
    integer, parameter :: MPI_ERR_READ_ONLY                   = 46
    integer, parameter :: MPI_ERR_RMA_ATTACH                  = 47
    integer, parameter :: MPI_ERR_RMA_CONFLICT                = 48
    integer, parameter :: MPI_ERR_RMA_RANGE                   = 49
    integer, parameter :: MPI_ERR_RMA_SHARED                  = 50
    integer, parameter :: MPI_ERR_RMA_SYNC                    = 51
    integer, parameter :: MPI_ERR_RMA_FLAVOR                  = 52
    integer, parameter :: MPI_ERR_SERVICE                     = 53
    integer, parameter :: MPI_ERR_SESSION                     = 54
    integer, parameter :: MPI_ERR_SIZE                        = 55
    integer, parameter :: MPI_ERR_SPAWN                       = 56
    integer, parameter :: MPI_ERR_UNSUPPORTED_DATAREP         = 57
    integer, parameter :: MPI_ERR_UNSUPPORTED_OPERATION       = 58
    integer, parameter :: MPI_ERR_VALUE_TOO_LARGE             = 59
    integer, parameter :: MPI_ERR_WIN                         = 60
    integer, parameter :: MPI_ERR_ERRHANDLER                  = 61
    integer, parameter :: MPI_T_ERR_CANNOT_INIT               = 1000
    integer, parameter :: MPI_T_ERR_NOT_ACCESSIBLE            = 1001
    integer, parameter :: MPI_T_ERR_NOT_INITIALIZED           = 1002
    integer, parameter :: MPI_T_ERR_NOT_SUPPORTED             = 1003
    integer, parameter :: MPI_T_ERR_MEMORY                    = 1004
    integer, parameter :: MPI_T_ERR_INVALID                   = 1005
    integer, parameter :: MPI_T_ERR_INVALID_INDEX             = 1006
    integer, parameter :: MPI_T_ERR_INVALID_ITEM              = 1007
    integer, parameter :: MPI_T_ERR_INVALID_SESSION           = 1008
    integer, parameter :: MPI_T_ERR_INVALID_HANDLE            = 1009
    integer, parameter :: MPI_T_ERR_INVALID_NAME              = 1010
    integer, parameter :: MPI_T_ERR_OUT_OF_HANDLES            = 1011
    integer, parameter :: MPI_T_ERR_OUT_OF_SESSIONS           = 1012
    integer, parameter :: MPI_T_ERR_CVAR_SET_NOT_NOW          = 1013
    integer, parameter :: MPI_T_ERR_CVAR_SET_NEVER            = 1014
    integer, parameter :: MPI_T_ERR_PVAR_NO_WRITE             = 1015
    integer, parameter :: MPI_T_ERR_PVAR_NO_STARTSTOP         = 1016
    integer, parameter :: MPI_T_ERR_PVAR_NO_ATOMIC            = 1017
    integer, parameter :: MPI_ERR_LASTCODE                    = 16383

    ! Other constants
    integer, parameter :: MPI_BSEND_OVERHEAD                =   512

    ! String size constants
    integer, parameter :: MPI_MAX_DATAREP_STRING            =   128
    integer, parameter :: MPI_MAX_ERROR_STRING              =   512
    integer, parameter :: MPI_MAX_INFO_KEY                  =   256
    integer, parameter :: MPI_MAX_INFO_VAL                  =  1024
    integer, parameter :: MPI_MAX_LIBRARY_VERSION_STRING    =  8192
    integer, parameter :: MPI_MAX_OBJECT_NAME               =   128
    integer, parameter :: MPI_MAX_PORT_NAME                 =  1024
    integer, parameter :: MPI_MAX_PROCESSOR_NAME            =   256
    integer, parameter :: MPI_MAX_STRINGTAG_LEN             =  1024
    integer, parameter :: MPI_MAX_PSET_NAME_LEN             =   512

    ! Mode Constants
    ! Files
    integer, parameter :: MPI_MODE_APPEND             = 1
    integer, parameter :: MPI_MODE_CREATE             = 2
    integer, parameter :: MPI_MODE_DELETE_ON_CLOSE    = 4
    integer, parameter :: MPI_MODE_EXCL               = 8
    integer, parameter :: MPI_MODE_RDONLY             = 16
    integer, parameter :: MPI_MODE_RDWR               = 32
    integer, parameter :: MPI_MODE_SEQUENTIAL         = 64
    integer, parameter :: MPI_MODE_UNIQUE_OPEN        = 128
    integer, parameter :: MPI_MODE_WRONLY             = 256
    ! Windows
    integer, parameter :: MPI_MODE_NOCHECK            = 1024
    integer, parameter :: MPI_MODE_NOPRECEDE          = 2048
    integer, parameter :: MPI_MODE_NOPUT              = 4096
    integer, parameter :: MPI_MODE_NOSTORE            = 8192
    integer, parameter :: MPI_MODE_NOSUCCEED          = 16384

    ! rank sentinels - must be negative
    integer, parameter :: MPI_ANY_SOURCE      = -1
    integer, parameter :: MPI_PROC_NULL       = -2
    integer, parameter :: MPI_ROOT            = -3

    ! tag sentinels - should be negative
    integer, parameter :: MPI_ANY_TAG         = -31

    ! attribute constant - should be negative
    integer, parameter :: MPI_KEYVAL_INVALID  = -127

    ! special displacement for sequential access file - should be negative
    integer, parameter :: MPI_DISPLACEMENT_CURRENT = -255

    ! multi-purpose sentinel - must be negative
    integer, parameter :: MPI_UNDEFINED       = -32766

    ! Environmental inquiry keys and Predefined Attribute Keys

    ! Threads Constants
    integer, parameter :: MPI_THREAD_SINGLE     = 0
    integer, parameter :: MPI_THREAD_FUNNELED   = 1
    integer, parameter :: MPI_THREAD_SERIALIZED = 2
    integer, parameter :: MPI_THREAD_MULTIPLE   = 7

    ! Array Datatype Order
    integer, parameter :: MPI_ORDER_C       = 12
    integer, parameter :: MPI_ORDER_FORTRAN = 15

    ! Array Datatype Distribution
    integer, parameter :: MPI_DISTRIBUTE_NONE       = 16
    integer, parameter :: MPI_DISTRIBUTE_BLOCK      = 17
    integer, parameter :: MPI_DISTRIBUTE_CYCLIC     = 18
    integer, parameter :: MPI_DISTRIBUTE_DFLT_DARG  = 19

    ! RMA Lock Constants - arbitrary values
    integer, parameter :: MPI_LOCK_SHARED    = 21
    integer, parameter :: MPI_LOCK_EXCLUSIVE = 22

    ! MPI Window Models
    integer, parameter :: MPI_WIN_UNIFIED  = 31
    integer, parameter :: MPI_WIN_SEPARATE = 32

    ! MPI Window Create Flavors
    integer, parameter :: MPI_WIN_FLAVOR_ALLOCATE = 41
    integer, parameter :: MPI_WIN_FLAVOR_CREATE   = 42
    integer, parameter :: MPI_WIN_FLAVOR_DYNAMIC  = 43
    integer, parameter :: MPI_WIN_FLAVOR_SHARED   = 44

    ! Results of communicator and group comparisons
    integer, parameter :: MPI_IDENT       = 101
    integer, parameter :: MPI_CONGRUENT   = 102
    integer, parameter :: MPI_SIMILAR     = 103
    integer, parameter :: MPI_UNEQUAL     = 104

    ! MPI_Topo_test
    integer, parameter :: MPI_GRAPH      = 201
    integer, parameter :: MPI_DIST_GRAPH = 202
    integer, parameter :: MPI_CART       = 203

    ! Datatype Decoding Constants
    integer, parameter :: MPI_COMBINER_NAMED              = 301
    integer, parameter :: MPI_COMBINER_DUP                = 302
    integer, parameter :: MPI_COMBINER_CONTIGUOUS         = 303
    integer, parameter :: MPI_COMBINER_VECTOR             = 304
    integer, parameter :: MPI_COMBINER_HVECTOR            = 305
    integer, parameter :: MPI_COMBINER_INDEXED            = 306
    integer, parameter :: MPI_COMBINER_HINDEXED           = 307
    integer, parameter :: MPI_COMBINER_INDEXED_BLOCK      = 308
    integer, parameter :: MPI_COMBINER_HINDEXED_BLOCK     = 309
    integer, parameter :: MPI_COMBINER_STRUCT             = 310
    integer, parameter :: MPI_COMBINER_SUBARRAY           = 311
    integer, parameter :: MPI_COMBINER_DARRAY             = 312
    integer, parameter :: MPI_COMBINER_F90_REAL           = 313
    integer, parameter :: MPI_COMBINER_F90_COMPLEX        = 314
    integer, parameter :: MPI_COMBINER_F90_INTEGER        = 315
    integer, parameter :: MPI_COMBINER_RESIZED            = 316
    integer, parameter :: MPI_COMBINER_VALUE_INDEX        = 317

    ! File Position Constants
    integer, parameter :: MPI_SEEK_CUR                = 601
    integer, parameter :: MPI_SEEK_END                = 602
    integer, parameter :: MPI_SEEK_SET                = 603

    ! Fortran Datatype Matching Constants
    integer, parameter :: MPIX_TYPECLASS_LOGICAL      = 801
    integer, parameter :: MPI_TYPECLASS_INTEGER       = 802
    integer, parameter :: MPI_TYPECLASS_REAL          = 803
    integer, parameter :: MPI_TYPECLASS_COMPLEX       = 804

    ! Communicator split type constants - arbitrary values
    integer, parameter :: MPI_COMM_TYPE_SHARED          = 1001
    integer, parameter :: MPI_COMM_TYPE_HW_UNGUIDED     = 1002
    integer, parameter :: MPI_COMM_TYPE_HW_GUIDED       = 1003
    integer, parameter :: MPI_COMM_TYPE_RESOURCE_GUIDED = 1004

    ! These apply to MPI_COMM_WORLD
    integer, parameter :: MPI_TAG_UB          = 10001
    integer, parameter :: MPI_IO              = 10002
    integer, parameter :: MPI_HOST            = 10003
    integer, parameter :: MPI_WTIME_IS_GLOBAL = 10004
    integer, parameter :: MPI_APPNUM          = 10005
    integer, parameter :: MPI_LASTUSEDCODE    = 10006
    integer, parameter :: MPI_UNIVERSE_SIZE   = 10007

    ! Predefined Attribute Keys
    ! These apply to Windows
    integer, parameter :: MPI_WIN_BASE            = 20001
    integer, parameter :: MPI_WIN_DISP_UNIT       = 20002
    integer, parameter :: MPI_WIN_SIZE            = 20003
    integer, parameter :: MPI_WIN_CREATE_FLAVOR   = 20004
    integer, parameter :: MPI_WIN_MODEL           = 20005

end module mpi_fortran_constants
