


typedef struct MPI_ABI_Op * MPI_Op;
#define MPI_OP_NULL                    (MPI_Op)0x00000020
#define MPI_OP_SUM                     (MPI_Op)0x00000021
#define MPI_OP_MIN                     (MPI_Op)0x00000022
#define MPI_OP_MAX                     (MPI_Op)0x00000023
#define MPI_OP_PROD                    (MPI_Op)0x00000024
#define MPI_OP_BAND                    (MPI_Op)0x00000028
#define MPI_OP_BOR                     (MPI_Op)0x00000029
#define MPI_OP_BXOR                    (MPI_Op)0x0000002a
#define MPI_OP_LAND                    (MPI_Op)0x00000030
#define MPI_OP_LOR                     (MPI_Op)0x00000031
#define MPI_OP_LXOR                    (MPI_Op)0x00000032
#define MPI_OP_MINLOC                  (MPI_Op)0x00000038
#define MPI_OP_MAXLOC                  (MPI_Op)0x00000039
#define MPI_OP_REPLACE                 (MPI_Op)0x0000003c
#define MPI_NO_OP                      (MPI_Op)0x0000003d

typedef struct MPI_ABI_Comm * MPI_Comm;
#define MPI_COMM_NULL                  (MPI_Comm)0x00000100
#define MPI_COMM_WORLD                 (MPI_Comm)0x00000101
#define MPI_COMM_SELF                  (MPI_Comm)0x00000102

typedef struct MPI_ABI_Group * MPI_Info;
#define MPI_GROUP_NULL                 (MPI_Group)0x00000108
#define MPI_GROUP_EMPTY                (MPI_Group)0x00000109

typedef struct MPI_ABI_Win * MPI_Win;
#define MPI_WIN_NULL                   (MPI_Win)0x00000110

typedef struct MPI_ABI_Info * MPI_Info;
#define MPI_FILE_NULL                  (MPI_File)0x00000118

typedef struct MPI_ABI_Session * MPI_Session;
#define MPI_SESSION_NULL               (MPI_Session)0x00000120
#define MPI_MESSAGE_NULL               (MPI_Message)0x00000128
#define MPI_MESSAGE_NO_PROC            (MPI_Message)0x00000129

typedef struct MPI_ABI_Info * MPI_Info;
#define MPI_INFO_NULL                  (MPI_Info)0x00000130
#define MPI_INFO_ENV                   (MPI_Info)0x00000131

typedef struct MPI_ABI_Errhandler * MPI_Errhandler;
#define MPI_ERRHANDLER_NULL            (MPI_Errhandler)0x00000140
#define MPI_ERRORS_ARE_FATAL           (MPI_Errhandler)0x00000141
#define MPI_ERRORS_RETURN              (MPI_Errhandler)0x00000142
#define MPI_ERRORS_ABORT               (MPI_Errhandler)0x00000143

typedef struct MPI_ABI_Request * MPI_Request;
#define MPI_REQUEST_NULL               (MPI_Request)0x00000180

typedef struct MPI_ABI_Datatype * MPI_Datatype;
#define MPI_DATATYPE_NULL              (MPI_Datatype)0x00000200
#define MPI_AINT                       (MPI_Datatype)0x00000201
#define MPI_COUNT                      (MPI_Datatype)0x00000202
#define MPI_OFFSET                     (MPI_Datatype)0x00000203
#define MPI_PACKED                     (MPI_Datatype)0x00000207
#define MPI_SHORT                      (MPI_Datatype)0x00000208
#define MPI_INT                        (MPI_Datatype)0x00000209
#define MPI_LONG                       (MPI_Datatype)0x0000020a
#define MPI_LONG_LONG                  (MPI_Datatype)0x0000020b
#define MPI_LONG_LONG_INT              MPI_LONG_LONG
#define MPI_UNSIGNED_SHORT             (MPI_Datatype)0x0000020c
#define MPI_UNSIGNED                   (MPI_Datatype)0x0000020d
#define MPI_UNSIGNED_LONG              (MPI_Datatype)0x0000020e
#define MPI_UNSIGNED_LONG_LONG         (MPI_Datatype)0x0000020f
#define MPI_FLOAT                      (MPI_Datatype)0x00000210
#define MPI_C_FLOAT_COMPLEX            (MPI_Datatype)0x00000212
#define MPI_C_COMPLEX                  MPI_C_FLOAT_COMPLEX
#define MPI_CXX_FLOAT_COMPLEX          (MPI_Datatype)0x00000213
#define MPI_DOUBLE                     (MPI_Datatype)0x00000214
#define MPI_C_DOUBLE_COMPLEX           (MPI_Datatype)0x00000216
#define MPI_CXX_DOUBLE_COMPLEX         (MPI_Datatype)0x00000217
#define MPI_INTEGER                    (MPI_Datatype)0x00000218
#define MPI_LOGICAL                    (MPI_Datatype)0x00000219
#define MPI_REAL                       (MPI_Datatype)0x0000021a
#define MPI_COMPLEX                    (MPI_Datatype)0x0000021b
#define MPI_DOUBLE_PRECISION           (MPI_Datatype)0x0000021c
#define MPI_DOUBLE_COMPLEX             (MPI_Datatype)0x0000021d
#define MPI_LONG_DOUBLE                (MPI_Datatype)0x00000220
#define MPI_C_LONG_DOUBLE_COMPLEX      (MPI_Datatype)0x00000224
#define MPI_CXX_LONG_DOUBLE_COMPLEX    (MPI_Datatype)0x00000225
#define MPI_FLOAT_INT                  (MPI_Datatype)0x00000228
#define MPI_DOUBLE_INT                 (MPI_Datatype)0x00000229
#define MPI_LONG_INT                   (MPI_Datatype)0x0000022a
#define MPI_2INT                       (MPI_Datatype)0x0000022b
#define MPI_SHORT_INT                  (MPI_Datatype)0x0000022c
#define MPI_LONG_DOUBLE_INT            (MPI_Datatype)0x0000022d
#define MPI_2REAL                      (MPI_Datatype)0x00000230
#define MPI_2DOUBLE_PRECISION          (MPI_Datatype)0x00000231
#define MPI_2INTEGER                   (MPI_Datatype)0x00000232
#define MPI_C_BOOL                     (MPI_Datatype)0x00000238
#define MPI_CXX_BOOL                   (MPI_Datatype)0x00000239
#define MPI_WCHAR                      (MPI_Datatype)0x0000023c
#define MPI_INT8_T                     (MPI_Datatype)0x00000240
#define MPI_UINT8_T                    (MPI_Datatype)0x00000241
#define MPI_CHAR                       (MPI_Datatype)0x00000243
#define MPI_SIGNED_CHAR                (MPI_Datatype)0x00000244
#define MPI_UNSIGNED_CHAR              (MPI_Datatype)0x00000245
#define MPI_BYTE                       (MPI_Datatype)0x00000247
#define MPI_INT16_T                    (MPI_Datatype)0x00000248
#define MPI_UINT16_T                   (MPI_Datatype)0x00000249
#define MPI_INT32_T                    (MPI_Datatype)0x00000250
#define MPI_UINT32_T                   (MPI_Datatype)0x00000251
#define MPI_INT64_T                    (MPI_Datatype)0x00000258
#define MPI_UINT64_T                   (MPI_Datatype)0x00000259
#define MPI_INTEGER1                   (MPI_Datatype)0x000002c0
#define MPIX_LOGICAL1                  (MPI_Datatype)0x000002c1
#define MPIX_REAL1                     (MPI_Datatype)0x000002c2
#define MPI_CHARACTER                  (MPI_Datatype)0x000002c3
#define MPI_INTEGER2                   (MPI_Datatype)0x000002c8
#define MPIX_LOGICAL2                  (MPI_Datatype)0x000002c9
#define MPI_REAL2                      (MPI_Datatype)0x000002ca
#define MPI_INTEGER4                   (MPI_Datatype)0x000002d0
#define MPIX_LOGICAL4                  (MPI_Datatype)0x000002d1
#define MPI_REAL4                      (MPI_Datatype)0x000002d2
#define MPI_COMPLEX4                   (MPI_Datatype)0x000002d3
#define MPI_INTEGER8                   (MPI_Datatype)0x000002d8
#define MPIX_LOGICAL8                  (MPI_Datatype)0x000002d9
#define MPI_REAL8                      (MPI_Datatype)0x000002da
#define MPI_COMPLEX8                   (MPI_Datatype)0x000002db
#define MPI_INTEGER16                  (MPI_Datatype)0x000002e0
#define MPI_REAL16                     (MPI_Datatype)0x000002e2
#define MPI_COMPLEX16                  (MPI_Datatype)0x000002e3
#define MPI_COMPLEX32                  (MPI_Datatype)0x000002eb

enum {
    // Status indexing - must match MPI_Status definition
    MPI_F_SOURCE        = 0,
    MPI_F_TAG           = 1,
    MPI_F_ERROR         = 2,
    // Fortran status array size and reserved index values (in C)
    MPI_F_STATUS_SIZE   = 8
};

// Error classes
enum {
    MPI_SUCCESS                         = 0,
    MPI_ERR_BUFFER                      = 1,
    MPI_ERR_COUNT                       = 2,
    MPI_ERR_TYPE                        = 3,
    MPI_ERR_TAG                         = 4,
    MPI_ERR_COMM                        = 5,
    MPI_ERR_RANK                        = 6,
    MPI_ERR_REQUEST                     = 7,
    MPI_ERR_ROOT                        = 8,
    MPI_ERR_GROUP                       = 9,
    MPI_ERR_OP                          = 10,
    MPI_ERR_TOPOLOGY                    = 11,
    MPI_ERR_DIMS                        = 12,
    MPI_ERR_ARG                         = 13,
    MPI_ERR_UNKNOWN                     = 14,
    MPI_ERR_TRUNCATE                    = 15,
    MPI_ERR_OTHER                       = 16,
    MPI_ERR_INTERN                      = 17,
    MPI_ERR_PENDING                     = 18,
    MPI_ERR_IN_STATUS                   = 19,
    MPI_ERR_ACCESS                      = 20,
    MPI_ERR_AMODE                       = 21,
    MPI_ERR_ASSERT                      = 22,
    MPI_ERR_BAD_FILE                    = 23,
    MPI_ERR_BASE                        = 24,
    MPI_ERR_CONVERSION                  = 25,
    MPI_ERR_DISP                        = 26,
    MPI_ERR_DUP_DATAREP                 = 27,
    MPI_ERR_FILE_EXISTS                 = 28,
    MPI_ERR_FILE_IN_USE                 = 29,
    MPI_ERR_FILE                        = 30,
    MPI_ERR_INFO_KEY                    = 31,
    MPI_ERR_INFO_NOKEY                  = 32,
    MPI_ERR_INFO_VALUE                  = 33,
    MPI_ERR_INFO                        = 34,
    MPI_ERR_IO                          = 35,
    MPI_ERR_KEYVAL                      = 36,
    MPI_ERR_LOCKTYPE                    = 37,
    MPI_ERR_NAME                        = 38,
    MPI_ERR_NO_MEM                      = 39,
    MPI_ERR_NOT_SAME                    = 40,
    MPI_ERR_NO_SPACE                    = 41,
    MPI_ERR_NO_SUCH_FILE                = 42,
    MPI_ERR_PORT                        = 43,
    MPI_ERR_PROC_ABORTED                = 44,
    MPI_ERR_QUOTA                       = 45,
    MPI_ERR_READ_ONLY                   = 46,
    MPI_ERR_RMA_ATTACH                  = 47,
    MPI_ERR_RMA_CONFLICT                = 48,
    MPI_ERR_RMA_RANGE                   = 49,
    MPI_ERR_RMA_SHARED                  = 50,
    MPI_ERR_RMA_SYNC                    = 51,
    MPI_ERR_RMA_FLAVOR                  = 52,
    MPI_ERR_SERVICE                     = 53,
    MPI_ERR_SESSION                     = 54,
    MPI_ERR_SIZE                        = 55,
    MPI_ERR_SPAWN                       = 56,
    MPI_ERR_UNSUPPORTED_DATAREP         = 57,
    MPI_ERR_UNSUPPORTED_OPERATION       = 58,
    MPI_ERR_VALUE_TOO_LARGE             = 59,
    MPI_ERR_WIN                         = 60,
    MPI_ERR_ERRHANDLER                  = 61,
    MPI_T_ERR_CANNOT_INIT               = 1000,
    MPI_T_ERR_NOT_ACCESSIBLE            = 1001,
    MPI_T_ERR_NOT_INITIALIZED           = 1002,
    MPI_T_ERR_NOT_SUPPORTED             = 1003,
    MPI_T_ERR_MEMORY                    = 1004,
    MPI_T_ERR_INVALID                   = 1005,
    MPI_T_ERR_INVALID_INDEX             = 1006,
    MPI_T_ERR_INVALID_ITEM              = 1007,
    MPI_T_ERR_INVALID_SESSION           = 1008,
    MPI_T_ERR_INVALID_HANDLE            = 1009,
    MPI_T_ERR_INVALID_NAME              = 1010,
    MPI_T_ERR_OUT_OF_HANDLES            = 1011,
    MPI_T_ERR_OUT_OF_SESSIONS           = 1012,
    MPI_T_ERR_CVAR_SET_NOT_NOW          = 1013,
    MPI_T_ERR_CVAR_SET_NEVER            = 1014,
    MPI_T_ERR_PVAR_NO_WRITE             = 1015,
    MPI_T_ERR_PVAR_NO_STARTSTOP         = 1016,
    MPI_T_ERR_PVAR_NO_ATOMIC            = 1017,
    MPI_ERR_LASTCODE                    = 0x3fff // half of the minimum required value of INT_MAX
};

// Buffer Address Constants
#define MPI_BOTTOM          ((void*)0)
#define MPI_IN_PLACE        ((void*)1)

// Constants Specifying Empty or Ignored Input
#define MPI_ARGV_NULL       ((char**)0)
#define MPI_ARGVS_NULL      ((char***)0)
#define MPI_ERRCODES_IGNORE ((int*)0)
#define MPI_STATUS_IGNORE   ((MPI_Status*)0)
#define MPI_STATUSES_IGNORE ((MPI_Status**)0)
#define MPI_UNWEIGHTED      ((int*)2)
#define MPI_WEIGHTS_EMPTY   ((int*)3)

// Other constants
#define MPI_BSEND_OVERHEAD                   512 // MPICH=96, OMPI=128

// String size constants
#define MPI_MAX_DATAREP_STRING               128 // MPICH=OMPI=128 (MPICH has it in `mpio.h`)
#define MPI_MAX_ERROR_STRING                 512 // MPICH was bigger
#define MPI_MAX_INFO_KEY                     256 // MPICH was bigger
#define MPI_MAX_INFO_VAL                    1024 // MPICH was bigger
#define MPI_MAX_LIBRARY_VERSION_STRING      8192 // MPICH was bigger
#define MPI_MAX_OBJECT_NAME                  128 // MPICH was bigger
#define MPI_MAX_PORT_NAME                   1024 // OMPI was bigger
#define MPI_MAX_PROCESSOR_NAME               256 // OMPI was bigger
#define MPI_MAX_STRINGTAG_LEN               1024 // OMPI was bigger (v5.0+)
#define MPI_MAX_PSET_NAME_LEN                512 // OMPI was bigger (v5.0+)

// Mode Constants
// must be powers-of-2 to support OR-ing
enum {
    // Files
    MPI_MODE_APPEND             = 1,
    MPI_MODE_CREATE             = 2,
    MPI_MODE_DELETE_ON_CLOSE    = 4,
    MPI_MODE_EXCL               = 8,
    MPI_MODE_RDONLY             = 16,
    MPI_MODE_RDWR               = 32,
    MPI_MODE_SEQUENTIAL         = 64,
    MPI_MODE_UNIQUE_OPEN        = 128,
    MPI_MODE_WRONLY             = 256,
    // Windows
    MPI_MODE_NOCHECK            = 1024,
    MPI_MODE_NOPRECEDE          = 2048,
    MPI_MODE_NOPUT              = 4096,
    MPI_MODE_NOSTORE            = 8192,
    MPI_MODE_NOSUCCEED          = 16384
};

enum {
    // rank sentinels - must be negative
    MPI_ANY_SOURCE      = -1,
    MPI_PROC_NULL       = -2,
    MPI_ROOT            = -3,

    // tag sentinels - should be negative
    MPI_ANY_TAG         = -31,

    // attribute constant - should be negative
    MPI_KEYVAL_INVALID  = -127,

    // special displacement for sequential access file - should be negative
    MPI_DISPLACEMENT_CURRENT = -255,

    // multi-purpose sentinel - must be negative
    MPI_UNDEFINED       = -32766 // make it match OMPI and MPICH
}

enum {
    // Environmental inquiry keys and Predefined Attribute Keys
    // Threads Constants
    // These values are monotonic; i.e., SINGLE < FUNNELED < SERIALIZED < MULTIPLE.
    MPI_THREAD_SINGLE     = 0, 
    MPI_THREAD_FUNNELED   = 1,
    MPI_THREAD_SERIALIZED = 2,
    MPI_THREAD_MULTIPLE   = 7, // in case we need other threading levels below MULTIPLE

    // array order
    MPI_ORDER_C       = 0xC, // 12
    MPI_ORDER_FORTRAN = 0xF, // 15

    // RMA lock constants - arbitrary values
    MPI_LOCK_SHARED    = 21,
    MPI_LOCK_EXCLUSIVE = 22,

    // MPI Window Models
    MPI_WIN_UNIFIED  = 31,
    MPI_WIN_SEPARATE = 32,

    // MPI Window Create Flavors
    MPI_WIN_FLAVOR_ALLOCATE = 41,
    MPI_WIN_FLAVOR_CREATE   = 42,
    MPI_WIN_FLAVOR_DYNAMIC  = 43,
    MPI_WIN_FLAVOR_SHARED   = 44,

    //Results of communicator and group comparisons
    MPI_IDENT       = 101,
    MPI_CONGRUENT   = 102,
    MPI_SIMILAR     = 103,
    MPI_UNEQUAL     = 104,

    // MPI_Topo_test
    MPI_GRAPH      = 201,
    MPI_DIST_GRAPH = 202,
    MPI_CART       = 203,

    // Datatype Decoding Constants
    MPI_COMBINER_NAMED              = 301,
    MPI_COMBINER_DUP                = 302,
    MPI_COMBINER_CONTIGUOUS         = 303,
    MPI_COMBINER_VECTOR             = 304,
    MPI_COMBINER_HVECTOR            = 305,
    MPI_COMBINER_INDEXED            = 306,
    MPI_COMBINER_HINDEXED           = 307,
    MPI_COMBINER_INDEXED_BLOCK      = 308,
    MPI_COMBINER_HINDEXED_BLOCK     = 309,
    MPI_COMBINER_STRUCT             = 310,
    MPI_COMBINER_SUBARRAY           = 311,
    MPI_COMBINER_DARRAY             = 312,
    MPI_COMBINER_F90_REAL           = 313,
    MPI_COMBINER_F90_COMPLEX        = 314,
    MPI_COMBINER_F90_INTEGER        = 315,
    MPI_COMBINER_RESIZED            = 316,

    // File Operation Constants (?)
    MPI_DISTRIBUTE_NONE         = 404,
    MPI_DISTRIBUTE_BLOCK        = 401,
    MPI_DISTRIBUTE_CYCLIC       = 402,
    MPI_DISTRIBUTE_DFLT_DARG    = 403,

    MPI_SEEK_CUR                = 601,
    MPI_SEEK_END                = 602,
    MPI_SEEK_SET                = 603,

    // F90 Datatype Matching Constants
    MPI_TYPECLASS_REAL          = 801,
    MPI_TYPECLASS_COMPLEX       = 802,
    MPI_TYPECLASS_INTEGER       = 803,

    // Communicator split type constants - arbitrary values
    MPI_COMM_TYPE_SHARED        = 1001,
    MPI_COMM_TYPE_HW_UNGUIDED   = 1002,
    MPI_COMM_TYPE_HW_GUIDED     = 1003,

    // These apply to MPI_COMM_WORLD
    MPI_TAG_UB          = 10001,
    MPI_IO              = 10002,
    MPI_HOST            = 10003,
    MPI_WTIME_IS_GLOBAL = 10004,
    MPI_APPNUM          = 10005,
    MPI_LASTUSEDCODE    = 10006,
    MPI_UNIVERSE_SIZE   = 10007,

    // Predefined Attribute Keys
    // These apply to Windows
    MPI_WIN_BASE            = 20001,
    MPI_WIN_DISP_UNIT       = 20002,
    MPI_WIN_SIZE            = 20003,
    MPI_WIN_CREATE_FLAVOR   = 20004,
    MPI_WIN_MODEL           = 20005
}

#define MPI_NULL_COPY_FN         ((MPI_Copy_function*)0x0)
#define MPI_DUP_FN               ((MPI_Copy_function*)0x1)
#define MPI_NULL_DELETE_FN       ((MPI_Delete_function*)0x0)
#define MPI_COMM_NULL_COPY_FN    ((MPI_Comm_copy_attr_function*)0x0)
#define MPI_COMM_DUP_FN          ((MPI_Comm_copy_attr_function*)0x1)
#define MPI_COMM_NULL_DELETE_FN  ((MPI_Comm_delete_attr_function*)0x0)
#define MPI_TYPE_NULL_COPY_FN    ((MPI_Type_copy_attr_function*)0x0)
#define MPI_TYPE_DUP_FN          ((MPI_Type_copy_attr_function*)0x1)
#define MPI_TYPE_NULL_DELETE_FN  ((MPI_Type_delete_attr_function*)0x0)
#define MPI_WIN_NULL_COPY_FN     ((MPI_Win_copy_attr_function*)0x0)
#define MPI_WIN_DUP_FN           ((MPI_Win_copy_attr_function*)0x1)
#define MPI_WIN_NULL_DELETE_FN   ((MPI_Win_delete_attr_function*)0x0)
#define MPI_CONVERSION_FN_NULL   ((MPI_Datarep_conversion_function)0x0)
#define MPI_CONVERSION_FN_NULL_C ((MPI_Datarep_conversion_function_c)0x0)
