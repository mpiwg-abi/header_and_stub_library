#include <stdlib.h>
#include <mpi.h>

int MPI_Abort(MPI_Comm comm, int errorcode){ abort(); return 0; }
int MPI_Accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win){ abort(); return 0; }
int MPI_Add_error_class(int *errorclass){ abort(); return 0; }
int MPI_Add_error_code(int errorclass, int *errorcode){ abort(); return 0; }
int MPI_Add_error_string(int errorcode, const char *string){ abort(); return 0; }
int MPI_Allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Iallgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Iallgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Alloc_mem(MPI_Aint size, MPI_Info info, void *baseptr){ abort(); return 0; }
int MPI_Allreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int MPI_Iallreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ialltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ialltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Alltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm){ abort(); return 0; }
int MPI_Ialltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Barrier(MPI_Comm comm){ abort(); return 0; }
int MPI_Ibarrier(MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Bcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Bsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int MPI_Ibcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Bsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Buffer_attach(void *buffer, int size){ abort(); return 0; }
int MPI_Buffer_detach(void *buffer, int *size){ abort(); return 0; }
int MPI_Cancel(MPI_Request *request){ abort(); return 0; }
int MPI_Cart_coords(MPI_Comm comm, int rank, int maxdims, int coords[]){ abort(); return 0; }
int MPI_Cart_create(MPI_Comm old_comm, int ndims, const int dims[], const int periods[], int reorder, MPI_Comm *comm_cart){ abort(); return 0; }
int MPI_Cart_get(MPI_Comm comm, int maxdims, int dims[], int periods[], int coords[]){ abort(); return 0; }
int MPI_Cart_map(MPI_Comm comm, int ndims, const int dims[], const int periods[], int *newrank){ abort(); return 0; }
int MPI_Cart_rank(MPI_Comm comm, const int coords[], int *rank){ abort(); return 0; }
int MPI_Cart_shift(MPI_Comm comm, int direction, int disp, int *rank_source, int *rank_dest){ abort(); return 0; }
int MPI_Cart_sub(MPI_Comm comm, const int remain_dims[], MPI_Comm *new_comm){ abort(); return 0; }
int MPI_Cartdim_get(MPI_Comm comm, int *ndims){ abort(); return 0; }
int MPI_Close_port(const char *port_name){ abort(); return 0; }
int MPI_Comm_accept(const char *port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_call_errhandler(MPI_Comm comm, int errorcode){ abort(); return 0; }
int MPI_Comm_compare(MPI_Comm comm1, MPI_Comm comm2, int *result){ abort(); return 0; }
int MPI_Comm_connect(const char *port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_create_errhandler(MPI_Comm_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_Comm_create_keyval(MPI_Comm_copy_attr_function *comm_copy_attr_fn, MPI_Comm_delete_attr_function *comm_delete_attr_fn, int *comm_keyval, void *extra_state){ abort(); return 0; }
int MPI_Comm_create_group(MPI_Comm comm, MPI_Group group, int tag, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_create(MPI_Comm comm, MPI_Group group, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_delete_attr(MPI_Comm comm, int comm_keyval){ abort(); return 0; }
int MPI_Comm_disconnect(MPI_Comm *comm){ abort(); return 0; }
int MPI_Comm_dup(MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_idup(MPI_Comm comm, MPI_Comm *newcomm, MPI_Request *request){ abort(); return 0; }
int MPI_Comm_dup_with_info(MPI_Comm comm, MPI_Info info, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_free_keyval(int *comm_keyval){ abort(); return 0; }
int MPI_Comm_free(MPI_Comm *comm){ abort(); return 0; }
int MPI_Comm_get_attr(MPI_Comm comm, int comm_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int MPI_Dist_graph_create(MPI_Comm comm_old, int n, const int nodes[], const int degrees[], const int targets[], const int weights[], MPI_Info info, int reorder, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Dist_graph_create_adjacent(MPI_Comm comm_old, int indegree, const int sources[], const int sourceweights[], int outdegree, const int destinations[], const int destweights[], MPI_Info info, int reorder, MPI_Comm *comm_dist_graph){ abort(); return 0; }
int MPI_Dist_graph_neighbors(MPI_Comm comm, int maxindegree, int sources[], int sourceweights[], int maxoutdegree, int destinations[], int destweights[]){ abort(); return 0; }
int MPI_Dist_graph_neighbors_count(MPI_Comm comm, int *inneighbors, int *outneighbors, int *weighted){ abort(); return 0; }
int MPI_Comm_get_errhandler(MPI_Comm comm, MPI_Errhandler *erhandler){ abort(); return 0; }
int MPI_Comm_get_info(MPI_Comm comm, MPI_Info *info_used){ abort(); return 0; }
int MPI_Comm_get_name(MPI_Comm comm, char *comm_name, int *resultlen){ abort(); return 0; }
int MPI_Comm_get_parent(MPI_Comm *parent){ abort(); return 0; }
int MPI_Comm_group(MPI_Comm comm, MPI_Group *group){ abort(); return 0; }
int MPI_Comm_join(int fd, MPI_Comm *intercomm){ abort(); return 0; }
int MPI_Comm_rank(MPI_Comm comm, int *rank){ abort(); return 0; }
int MPI_Comm_remote_group(MPI_Comm comm, MPI_Group *group){ abort(); return 0; }
int MPI_Comm_remote_size(MPI_Comm comm, int *size){ abort(); return 0; }
int MPI_Comm_set_attr(MPI_Comm comm, int comm_keyval, void *attribute_val){ abort(); return 0; }
int MPI_Comm_set_errhandler(MPI_Comm comm, MPI_Errhandler errhandler){ abort(); return 0; }
int MPI_Comm_set_info(MPI_Comm comm, MPI_Info info){ abort(); return 0; }
int MPI_Comm_set_name(MPI_Comm comm, const char *comm_name){ abort(); return 0; }
int MPI_Comm_size(MPI_Comm comm, int *size){ abort(); return 0; }
int MPI_Comm_split(MPI_Comm comm, int color, int key, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_split_type(MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm *newcomm){ abort(); return 0; }
int MPI_Comm_test_inter(MPI_Comm comm, int *flag){ abort(); return 0; }
int MPI_Compare_and_swap(const void *origin_addr, const void *compare_addr, void *result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Win win){ abort(); return 0; }
int MPI_Dims_create(int nnodes, int ndims, int dims[]){ abort(); return 0; }
int MPI_Errhandler_free(MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_Error_class(int errorcode, int *errorclass){ abort(); return 0; }
int MPI_Error_string(int errorcode, char *string, int *resultlen){ abort(); return 0; }
int MPI_Exscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int MPI_Fetch_and_op(const void *origin_addr, void *result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Op op, MPI_Win win){ abort(); return 0; }
int MPI_Iexscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_File_call_errhandler(MPI_File fh, int errorcode){ abort(); return 0; }
int MPI_File_create_errhandler(MPI_File_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_File_set_errhandler(MPI_File file, MPI_Errhandler errhandler){ abort(); return 0; }
int MPI_File_get_errhandler(MPI_File file, MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_File_open(MPI_Comm comm, const char *filename, int amode, MPI_Info info, MPI_File *fh){ abort(); return 0; }
int MPI_File_close(MPI_File *fh){ abort(); return 0; }
int MPI_File_delete(const char *filename, MPI_Info info){ abort(); return 0; }
int MPI_File_set_size(MPI_File fh, MPI_Offset size){ abort(); return 0; }
int MPI_File_preallocate(MPI_File fh, MPI_Offset size){ abort(); return 0; }
int MPI_File_get_size(MPI_File fh, MPI_Offset *size){ abort(); return 0; }
int MPI_File_get_group(MPI_File fh, MPI_Group *group){ abort(); return 0; }
int MPI_File_get_amode(MPI_File fh, int *amode){ abort(); return 0; }
int MPI_File_set_info(MPI_File fh, MPI_Info info){ abort(); return 0; }
int MPI_File_get_info(MPI_File fh, MPI_Info *info_used){ abort(); return 0; }
int MPI_File_set_view(MPI_File fh, MPI_Offset disp, MPI_Datatype etype, MPI_Datatype filetype, const char *datarep, MPI_Info info){ abort(); return 0; }
int MPI_File_get_view(MPI_File fh, MPI_Offset *disp, MPI_Datatype *etype, MPI_Datatype *filetype, char *datarep){ abort(); return 0; }
int MPI_File_read_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_read_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_at(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_iread_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iwrite_at(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iread_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iwrite_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_read(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_read_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_iread(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iwrite(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iread_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iwrite_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_seek(MPI_File fh, MPI_Offset offset, int whence){ abort(); return 0; }
int MPI_File_get_position(MPI_File fh, MPI_Offset *offset){ abort(); return 0; }
int MPI_File_get_byte_offset(MPI_File fh, MPI_Offset offset, MPI_Offset *disp){ abort(); return 0; }
int MPI_File_read_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_iread_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_iwrite_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int MPI_File_read_ordered(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_ordered(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int MPI_File_seek_shared(MPI_File fh, MPI_Offset offset, int whence){ abort(); return 0; }
int MPI_File_get_position_shared(MPI_File fh, MPI_Offset *offset){ abort(); return 0; }
int MPI_File_read_at_all_begin(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_read_at_all_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_at_all_begin(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_write_at_all_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_read_all_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_read_all_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_all_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_write_all_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_read_ordered_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_read_ordered_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_write_ordered_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int MPI_File_write_ordered_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int MPI_File_get_type_extent(MPI_File fh, MPI_Datatype datatype, MPI_Aint *extent){ abort(); return 0; }
int MPI_File_set_atomicity(MPI_File fh, int flag){ abort(); return 0; }
int MPI_File_get_atomicity(MPI_File fh, int *flag){ abort(); return 0; }
int MPI_File_sync(MPI_File fh){ abort(); return 0; }
int MPI_Finalize(){ abort(); return 0; }
int MPI_Finalized(int *flag){ abort(); return 0; }
int MPI_Free_mem(void *base){ abort(); return 0; }
int MPI_Gather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Igather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Gatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Igatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Get_address(const void *location, MPI_Aint *address){ abort(); return 0; }
int MPI_Get_count(const MPI_Status *status, MPI_Datatype datatype, int *count){ abort(); return 0; }
int MPI_Get_elements(const MPI_Status *status, MPI_Datatype datatype, int *count){ abort(); return 0; }
int MPI_Get_elements_x(const MPI_Status *status, MPI_Datatype datatype, MPI_Count *count){ abort(); return 0; }
int MPI_Get(void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win){ abort(); return 0; }
int MPI_Get_accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, void *result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win){ abort(); return 0; }
int MPI_Get_library_version(char *version, int *resultlen){ abort(); return 0; }
int MPI_Get_processor_name(char *name, int *resultlen){ abort(); return 0; }
int MPI_Get_version(int *version, int *subversion){ abort(); return 0; }
int MPI_Graph_create(MPI_Comm comm_old, int nnodes, const int index[], const int edges[], int reorder, MPI_Comm *comm_graph){ abort(); return 0; }
int MPI_Graph_get(MPI_Comm comm, int maxindex, int maxedges, int index[], int edges[]){ abort(); return 0; }
int MPI_Graph_map(MPI_Comm comm, int nnodes, const int index[], const int edges[], int *newrank){ abort(); return 0; }
int MPI_Graph_neighbors_count(MPI_Comm comm, int rank, int *nneighbors){ abort(); return 0; }
int MPI_Graph_neighbors(MPI_Comm comm, int rank, int maxneighbors, int neighbors[]){ abort(); return 0; }
int MPI_Graphdims_get(MPI_Comm comm, int *nnodes, int *nedges){ abort(); return 0; }
int MPI_Grequest_complete(MPI_Request request){ abort(); return 0; }
int MPI_Grequest_start(MPI_Grequest_query_function *query_fn, MPI_Grequest_free_function *free_fn, MPI_Grequest_cancel_function *cancel_fn, void *extra_state, MPI_Request *request){ abort(); return 0; }
int MPI_Group_compare(MPI_Group group1, MPI_Group group2, int *result){ abort(); return 0; }
int MPI_Group_difference(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_excl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_free(MPI_Group *group){ abort(); return 0; }
int MPI_Group_incl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_intersection(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_range_excl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_range_incl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup){ abort(); return 0; }
int MPI_Group_rank(MPI_Group group, int *rank){ abort(); return 0; }
int MPI_Group_size(MPI_Group group, int *size){ abort(); return 0; }
int MPI_Group_translate_ranks(MPI_Group group1, int n, const int ranks1[], MPI_Group group2, int ranks2[]){ abort(); return 0; }
int MPI_Group_union(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int MPI_Ibsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Improbe(int source, int tag, MPI_Comm comm, int *flag, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int MPI_Imrecv(void *buf, int count, MPI_Datatype type, MPI_Message *message, MPI_Request *request){ abort(); return 0; }
int MPI_Info_create(MPI_Info *info){ abort(); return 0; }
int MPI_Info_delete(MPI_Info info, const char *key){ abort(); return 0; }
int MPI_Info_dup(MPI_Info info, MPI_Info *newinfo){ abort(); return 0; }
int MPI_Info_free(MPI_Info *info){ abort(); return 0; }
int MPI_Info_get(MPI_Info info, const char *key, int valuelen, char *value, int *flag){ abort(); return 0; }
int MPI_Info_get_nkeys(MPI_Info info, int *nkeys){ abort(); return 0; }
int MPI_Info_get_nthkey(MPI_Info info, int n, char *key){ abort(); return 0; }
int MPI_Info_get_valuelen(MPI_Info info, const char *key, int *valuelen, int *flag){ abort(); return 0; }
int MPI_Info_set(MPI_Info info, const char *key, const char *value){ abort(); return 0; }
int MPI_Init(int *argc, char ***argv){ abort(); return 0; }
int MPI_Initialized(int *flag){ abort(); return 0; }
int MPI_Init_thread(int *argc, char ***argv, int required, int *provided){ abort(); return 0; }
int MPI_Intercomm_create(MPI_Comm local_comm, int local_leader, MPI_Comm bridge_comm, int remote_leader, int tag, MPI_Comm *newintercomm){ abort(); return 0; }
int MPI_Intercomm_merge(MPI_Comm intercomm, int high, MPI_Comm *newintercomm){ abort(); return 0; }
int MPI_Iprobe(int source, int tag, MPI_Comm comm, int *flag, MPI_Status *status){ abort(); return 0; }
int MPI_Irecv(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Irsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Isend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Issend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Is_thread_main(int *flag){ abort(); return 0; }
int MPI_Lookup_name(const char *service_name, MPI_Info info, char *port_name){ abort(); return 0; }
int MPI_Mprobe(int source, int tag, MPI_Comm comm, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int MPI_Mrecv(void *buf, int count, MPI_Datatype type, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int MPI_Neighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ineighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Neighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ineighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Neighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ineighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Neighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int MPI_Ineighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Neighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm){ abort(); return 0; }
int MPI_Ineighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Op_commutative(MPI_Op op, int *commute){ abort(); return 0; }
int MPI_Op_create(MPI_User_function *function, int commute, MPI_Op *op){ abort(); return 0; }
int MPI_Open_port(MPI_Info info, char *port_name){ abort(); return 0; }
int MPI_Op_free(MPI_Op *op){ abort(); return 0; }
int MPI_Pack_external(const char datarep[], const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf, MPI_Aint outsize, MPI_Aint *position){ abort(); return 0; }
int MPI_Pack_external_size(const char datarep[], int incount, MPI_Datatype datatype, MPI_Aint *size){ abort(); return 0; }
int MPI_Pack(const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf, int outsize, int *position, MPI_Comm comm){ abort(); return 0; }
int MPI_Pack_size(int incount, MPI_Datatype datatype, MPI_Comm comm, int *size){ abort(); return 0; }
int MPI_Pcontrol(const int level, ...){ abort(); return 0; }
int MPI_Probe(int source, int tag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int MPI_Publish_name(const char *service_name, MPI_Info info, const char *port_name){ abort(); return 0; }
int MPI_Put(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win){ abort(); return 0; }
int MPI_Query_thread(int *provided){ abort(); return 0; }
int MPI_Raccumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int MPI_Recv_init(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Recv(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int MPI_Reduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Ireduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Reduce_local(const void *inbuf, void *inoutbuf, int count, MPI_Datatype datatype, MPI_Op op){ abort(); return 0; }
int MPI_Reduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[], MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int MPI_Ireduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[], MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Reduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int MPI_Ireduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Register_datarep(const char *datarep, MPI_Datarep_conversion_function *read_conversion_fn, MPI_Datarep_conversion_function *write_conversion_fn, MPI_Datarep_extent_function *dtype_file_extent_fn, void *extra_state){ abort(); return 0; }
int MPI_Request_free(MPI_Request *request){ abort(); return 0; }
int MPI_Request_get_status(MPI_Request request, int *flag, MPI_Status *status){ abort(); return 0; }
int MPI_Rget(void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int MPI_Rget_accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, void *result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int MPI_Rput(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_cout, MPI_Datatype target_datatype, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int MPI_Rsend(const void *ibuf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int MPI_Rsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Scan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int MPI_Iscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Scatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Iscatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Scatterv(const void *sendbuf, const int sendcounts[], const int displs[], MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int MPI_Iscatterv(const void *sendbuf, const int sendcounts[], const int displs[], MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Send_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Send(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int MPI_Sendrecv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, int dest, int sendtag, void *recvbuf, int recvcount, MPI_Datatype recvtype, int source, int recvtag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int MPI_Sendrecv_replace(void *buf, int count, MPI_Datatype datatype, int dest, int sendtag, int source, int recvtag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int MPI_Ssend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int MPI_Ssend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int MPI_Start(MPI_Request *request){ abort(); return 0; }
int MPI_Startall(int count, MPI_Request array_of_requests[]){ abort(); return 0; }
int MPI_Status_set_cancelled(MPI_Status *status, int flag){ abort(); return 0; }
int MPI_Status_set_elements(MPI_Status *status, MPI_Datatype datatype, int count){ abort(); return 0; }
int MPI_Status_set_elements_x(MPI_Status *status, MPI_Datatype datatype, MPI_Count count){ abort(); return 0; }
int MPI_Testall(int count, MPI_Request array_of_requests[], int *flag, MPI_Status array_of_statuses[]){ abort(); return 0; }
int MPI_Testany(int count, MPI_Request array_of_requests[], int *index, int *flag, MPI_Status *status){ abort(); return 0; }
int MPI_Test(MPI_Request *request, int *flag, MPI_Status *status){ abort(); return 0; }
int MPI_Test_cancelled(const MPI_Status *status, int *flag){ abort(); return 0; }
int MPI_Testsome(int incount, MPI_Request array_of_requests[], int *outcount, int array_of_indices[], MPI_Status array_of_statuses[]){ abort(); return 0; }
int MPI_Topo_test(MPI_Comm comm, int *status){ abort(); return 0; }
int MPI_Type_commit(MPI_Datatype *type){ abort(); return 0; }
int MPI_Type_contiguous(int count, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_darray(int size, int rank, int ndims, const int gsize_array[], const int distrib_array[], const int darg_array[], const int psize_array[], int order, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_f90_complex(int p, int r, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_f90_integer(int r, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_f90_real(int p, int r, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_hindexed_block(int count, int blocklength, const MPI_Aint array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_hindexed(int count, const int array_of_blocklengths[], const MPI_Aint array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_keyval(MPI_Type_copy_attr_function *type_copy_attr_fn, MPI_Type_delete_attr_function *type_delete_attr_fn, int *type_keyval, void *extra_state){ abort(); return 0; }
int MPI_Type_create_indexed_block(int count, int blocklength, const int array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_struct(int count, const int array_of_block_lengths[], const MPI_Aint array_of_displacements[], const MPI_Datatype array_of_types[], MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_subarray(int ndims, const int size_array[], const int subsize_array[], const int start_array[], int order, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_create_resized(MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_delete_attr(MPI_Datatype type, int type_keyval){ abort(); return 0; }
int MPI_Type_dup(MPI_Datatype type, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_free(MPI_Datatype *type){ abort(); return 0; }
int MPI_Type_free_keyval(int *type_keyval){ abort(); return 0; }
int MPI_Type_get_attr(MPI_Datatype type, int type_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int MPI_Type_get_contents(MPI_Datatype mtype, int max_integers, int max_addresses, int max_datatypes, int array_of_integers[], MPI_Aint array_of_addresses[], MPI_Datatype array_of_datatypes[]){ abort(); return 0; }
int MPI_Type_get_envelope(MPI_Datatype type, int *num_integers, int *num_addresses, int *num_datatypes, int *combiner){ abort(); return 0; }
int MPI_Type_get_extent(MPI_Datatype type, MPI_Aint *lb, MPI_Aint *extent){ abort(); return 0; }
int MPI_Type_get_extent_x(MPI_Datatype type, MPI_Count *lb, MPI_Count *extent){ abort(); return 0; }
int MPI_Type_get_name(MPI_Datatype type, char *type_name, int *resultlen){ abort(); return 0; }
int MPI_Type_get_true_extent(MPI_Datatype datatype, MPI_Aint *true_lb, MPI_Aint *true_extent){ abort(); return 0; }
int MPI_Type_get_true_extent_x(MPI_Datatype datatype, MPI_Count *true_lb, MPI_Count *true_extent){ abort(); return 0; }
int MPI_Type_indexed(int count, const int array_of_blocklengths[], const int array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Type_match_size(int typeclass, int size, MPI_Datatype *type){ abort(); return 0; }
int MPI_Type_set_attr(MPI_Datatype type, int type_keyval, void *attr_val){ abort(); return 0; }
int MPI_Type_set_name(MPI_Datatype type, const char *type_name){ abort(); return 0; }
int MPI_Type_size(MPI_Datatype type, int *size){ abort(); return 0; }
int MPI_Type_size_x(MPI_Datatype type, MPI_Count *size){ abort(); return 0; }
int MPI_Type_vector(int count, int blocklength, int stride, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int MPI_Unpack(const void *inbuf, int insize, int *position, void *outbuf, int outcount, MPI_Datatype datatype, MPI_Comm comm){ abort(); return 0; }
int MPI_Unpublish_name(const char *service_name, MPI_Info info, const char *port_name){ abort(); return 0; }
int MPI_Unpack_external(const char datarep[], const void *inbuf, MPI_Aint insize, MPI_Aint *position, void *outbuf, int outcount, MPI_Datatype datatype){ abort(); return 0; }
int MPI_Waitall(int count, MPI_Request array_of_requests[], MPI_Status *array_of_statuses){ abort(); return 0; }
int MPI_Waitany(int count, MPI_Request array_of_requests[], int *index, MPI_Status *status){ abort(); return 0; }
int MPI_Wait(MPI_Request *request, MPI_Status *status){ abort(); return 0; }
int MPI_Waitsome(int incount, MPI_Request array_of_requests[], int *outcount, int array_of_indices[], MPI_Status array_of_statuses[]){ abort(); return 0; }
int MPI_Win_allocate(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr, MPI_Win *win){ abort(); return 0; }
int MPI_Win_allocate_shared(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr, MPI_Win *win){ abort(); return 0; }
int MPI_Win_attach(MPI_Win win, void *base, MPI_Aint size){ abort(); return 0; }
int MPI_Win_call_errhandler(MPI_Win win, int errorcode){ abort(); return 0; }
int MPI_Win_complete(MPI_Win win){ abort(); return 0; }
int MPI_Win_create(void *base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, MPI_Win *win){ abort(); return 0; }
int MPI_Win_create_dynamic(MPI_Info info, MPI_Comm comm, MPI_Win *win){ abort(); return 0; }
int MPI_Win_create_errhandler(MPI_Win_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_Win_create_keyval(MPI_Win_copy_attr_function *win_copy_attr_fn, MPI_Win_delete_attr_function *win_delete_attr_fn, int *win_keyval, void *extra_state){ abort(); return 0; }
int MPI_Win_delete_attr(MPI_Win win, int win_keyval){ abort(); return 0; }
int MPI_Win_detach(MPI_Win win, const void *base){ abort(); return 0; }
int MPI_Win_fence(int assert, MPI_Win win){ abort(); return 0; }
int MPI_Win_flush(int rank, MPI_Win win){ abort(); return 0; }
int MPI_Win_flush_all(MPI_Win win){ abort(); return 0; }
int MPI_Win_flush_local(int rank, MPI_Win win){ abort(); return 0; }
int MPI_Win_flush_local_all(MPI_Win win){ abort(); return 0; }
int MPI_Win_free(MPI_Win *win){ abort(); return 0; }
int MPI_Win_free_keyval(int *win_keyval){ abort(); return 0; }
int MPI_Win_get_attr(MPI_Win win, int win_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int MPI_Win_get_errhandler(MPI_Win win, MPI_Errhandler *errhandler){ abort(); return 0; }
int MPI_Win_get_group(MPI_Win win, MPI_Group *group){ abort(); return 0; }
int MPI_Win_get_info(MPI_Win win, MPI_Info *info_used){ abort(); return 0; }
int MPI_Win_get_name(MPI_Win win, char *win_name, int *resultlen){ abort(); return 0; }
int MPI_Win_lock(int lock_type, int rank, int assert, MPI_Win win){ abort(); return 0; }
int MPI_Win_lock_all(int assert, MPI_Win win){ abort(); return 0; }
int MPI_Win_post(MPI_Group group, int assert, MPI_Win win){ abort(); return 0; }
int MPI_Win_set_attr(MPI_Win win, int win_keyval, void *attribute_val){ abort(); return 0; }
int MPI_Win_set_errhandler(MPI_Win win, MPI_Errhandler errhandler){ abort(); return 0; }
int MPI_Win_set_info(MPI_Win win, MPI_Info info){ abort(); return 0; }
int MPI_Win_set_name(MPI_Win win, const char *win_name){ abort(); return 0; }
int MPI_Win_shared_query(MPI_Win win, int rank, MPI_Aint *size, int *disp_unit, void *baseptr){ abort(); return 0; }
int MPI_Win_start(MPI_Group group, int assert, MPI_Win win){ abort(); return 0; }
int MPI_Win_sync(MPI_Win win){ abort(); return 0; }
int MPI_Win_test(MPI_Win win, int *flag){ abort(); return 0; }
int MPI_Win_unlock(int rank, MPI_Win win){ abort(); return 0; }
int MPI_Win_unlock_all(MPI_Win win){ abort(); return 0; }
int MPI_Win_wait(MPI_Win win){ abort(); return 0; }
double MPI_Wtick(){ abort(); return 0; }
double MPI_Wtime(){ abort(); return 0; }
int MPI_Attr_delete(MPI_Comm comm, int keyval){ abort(); return 0; }
int MPI_Attr_get(MPI_Comm comm, int keyval, void *attribute_val, int *flag){ abort(); return 0; }
int MPI_Attr_put(MPI_Comm comm, int keyval, void *attribute_val){ abort(); return 0; }
int MPI_Keyval_create(MPI_Copy_function *copy_fn, MPI_Delete_function *delete_fn, int *keyval, void *extra_state){ abort(); return 0; }
int MPI_Keyval_free(int *keyval){ abort(); return 0; }

int PMPI_Abort(MPI_Comm comm, int errorcode){ abort(); return 0; }
int PMPI_Accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win){ abort(); return 0; }
int PMPI_Add_error_class(int *errorclass){ abort(); return 0; }
int PMPI_Add_error_code(int errorclass, int *errorcode){ abort(); return 0; }
int PMPI_Add_error_string(int errorcode, const char *string){ abort(); return 0; }
int PMPI_Allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iallgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iallgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Alloc_mem(MPI_Aint size, MPI_Info info, void *baseptr){ abort(); return 0; }
int PMPI_Allreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iallreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ialltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ialltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Alltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm){ abort(); return 0; }
int PMPI_Ialltoallw(const void *sendbuf, const int sendcounts[], const int sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const int rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Barrier(MPI_Comm comm){ abort(); return 0; }
int PMPI_Ibarrier(MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Bcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Bsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ibcast(void *buffer, int count, MPI_Datatype datatype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Bsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Buffer_attach(void *buffer, int size){ abort(); return 0; }
int PMPI_Buffer_detach(void *buffer, int *size){ abort(); return 0; }
int PMPI_Cancel(MPI_Request *request){ abort(); return 0; }
int PMPI_Cart_coords(MPI_Comm comm, int rank, int maxdims, int coords[]){ abort(); return 0; }
int PMPI_Cart_create(MPI_Comm old_comm, int ndims, const int dims[], const int periods[], int reorder, MPI_Comm *comm_cart){ abort(); return 0; }
int PMPI_Cart_get(MPI_Comm comm, int maxdims, int dims[], int periods[], int coords[]){ abort(); return 0; }
int PMPI_Cart_map(MPI_Comm comm, int ndims, const int dims[], const int periods[], int *newrank){ abort(); return 0; }
int PMPI_Cart_rank(MPI_Comm comm, const int coords[], int *rank){ abort(); return 0; }
int PMPI_Cart_shift(MPI_Comm comm, int direction, int disp, int *rank_source, int *rank_dest){ abort(); return 0; }
int PMPI_Cart_sub(MPI_Comm comm, const int remain_dims[], MPI_Comm *new_comm){ abort(); return 0; }
int PMPI_Cartdim_get(MPI_Comm comm, int *ndims){ abort(); return 0; }
int PMPI_Close_port(const char *port_name){ abort(); return 0; }
int PMPI_Comm_accept(const char *port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_call_errhandler(MPI_Comm comm, int errorcode){ abort(); return 0; }
int PMPI_Comm_compare(MPI_Comm comm1, MPI_Comm comm2, int *result){ abort(); return 0; }
int PMPI_Comm_connect(const char *port_name, MPI_Info info, int root, MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_create_errhandler(MPI_Comm_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_Comm_create_keyval(MPI_Comm_copy_attr_function *comm_copy_attr_fn, MPI_Comm_delete_attr_function *comm_delete_attr_fn, int *comm_keyval, void *extra_state){ abort(); return 0; }
int PMPI_Comm_create_group(MPI_Comm comm, MPI_Group group, int tag, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_create(MPI_Comm comm, MPI_Group group, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_delete_attr(MPI_Comm comm, int comm_keyval){ abort(); return 0; }
int PMPI_Comm_disconnect(MPI_Comm *comm){ abort(); return 0; }
int PMPI_Comm_dup(MPI_Comm comm, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_idup(MPI_Comm comm, MPI_Comm *newcomm, MPI_Request *request){ abort(); return 0; }
int PMPI_Comm_dup_with_info(MPI_Comm comm, MPI_Info info, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_free_keyval(int *comm_keyval){ abort(); return 0; }
int PMPI_Comm_free(MPI_Comm *comm){ abort(); return 0; }
int PMPI_Comm_get_attr(MPI_Comm comm, int comm_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int PMPI_Dist_graph_create(MPI_Comm comm_old, int n, const int nodes[], const int degrees[], const int targets[], const int weights[], MPI_Info info, int reorder, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Dist_graph_create_adjacent(MPI_Comm comm_old, int indegree, const int sources[], const int sourceweights[], int outdegree, const int destinations[], const int destweights[], MPI_Info info, int reorder, MPI_Comm *comm_dist_graph){ abort(); return 0; }
int PMPI_Dist_graph_neighbors(MPI_Comm comm, int maxindegree, int sources[], int sourceweights[], int maxoutdegree, int destinations[], int destweights[]){ abort(); return 0; }
int PMPI_Dist_graph_neighbors_count(MPI_Comm comm, int *inneighbors, int *outneighbors, int *weighted){ abort(); return 0; }
int PMPI_Comm_get_errhandler(MPI_Comm comm, MPI_Errhandler *erhandler){ abort(); return 0; }
int PMPI_Comm_get_info(MPI_Comm comm, MPI_Info *info_used){ abort(); return 0; }
int PMPI_Comm_get_name(MPI_Comm comm, char *comm_name, int *resultlen){ abort(); return 0; }
int PMPI_Comm_get_parent(MPI_Comm *parent){ abort(); return 0; }
int PMPI_Comm_group(MPI_Comm comm, MPI_Group *group){ abort(); return 0; }
int PMPI_Comm_join(int fd, MPI_Comm *intercomm){ abort(); return 0; }
int PMPI_Comm_rank(MPI_Comm comm, int *rank){ abort(); return 0; }
int PMPI_Comm_remote_group(MPI_Comm comm, MPI_Group *group){ abort(); return 0; }
int PMPI_Comm_remote_size(MPI_Comm comm, int *size){ abort(); return 0; }
int PMPI_Comm_set_attr(MPI_Comm comm, int comm_keyval, void *attribute_val){ abort(); return 0; }
int PMPI_Comm_set_errhandler(MPI_Comm comm, MPI_Errhandler errhandler){ abort(); return 0; }
int PMPI_Comm_set_info(MPI_Comm comm, MPI_Info info){ abort(); return 0; }
int PMPI_Comm_set_name(MPI_Comm comm, const char *comm_name){ abort(); return 0; }
int PMPI_Comm_size(MPI_Comm comm, int *size){ abort(); return 0; }
int PMPI_Comm_split(MPI_Comm comm, int color, int key, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_split_type(MPI_Comm comm, int split_type, int key, MPI_Info info, MPI_Comm *newcomm){ abort(); return 0; }
int PMPI_Comm_test_inter(MPI_Comm comm, int *flag){ abort(); return 0; }
int PMPI_Compare_and_swap(const void *origin_addr, const void *compare_addr, void *result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Win win){ abort(); return 0; }
int PMPI_Dims_create(int nnodes, int ndims, int dims[]){ abort(); return 0; }
int PMPI_Errhandler_free(MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_Error_class(int errorcode, int *errorclass){ abort(); return 0; }
int PMPI_Error_string(int errorcode, char *string, int *resultlen){ abort(); return 0; }
int PMPI_Exscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int PMPI_Fetch_and_op(const void *origin_addr, void *result_addr, MPI_Datatype datatype, int target_rank, MPI_Aint target_disp, MPI_Op op, MPI_Win win){ abort(); return 0; }
int PMPI_Iexscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_File_call_errhandler(MPI_File fh, int errorcode){ abort(); return 0; }
int PMPI_File_create_errhandler(MPI_File_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_File_set_errhandler(MPI_File file, MPI_Errhandler errhandler){ abort(); return 0; }
int PMPI_File_get_errhandler(MPI_File file, MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_File_open(MPI_Comm comm, const char *filename, int amode, MPI_Info info, MPI_File *fh){ abort(); return 0; }
int PMPI_File_close(MPI_File *fh){ abort(); return 0; }
int PMPI_File_delete(const char *filename, MPI_Info info){ abort(); return 0; }
int PMPI_File_set_size(MPI_File fh, MPI_Offset size){ abort(); return 0; }
int PMPI_File_preallocate(MPI_File fh, MPI_Offset size){ abort(); return 0; }
int PMPI_File_get_size(MPI_File fh, MPI_Offset *size){ abort(); return 0; }
int PMPI_File_get_group(MPI_File fh, MPI_Group *group){ abort(); return 0; }
int PMPI_File_get_amode(MPI_File fh, int *amode){ abort(); return 0; }
int PMPI_File_set_info(MPI_File fh, MPI_Info info){ abort(); return 0; }
int PMPI_File_get_info(MPI_File fh, MPI_Info *info_used){ abort(); return 0; }
int PMPI_File_set_view(MPI_File fh, MPI_Offset disp, MPI_Datatype etype, MPI_Datatype filetype, const char *datarep, MPI_Info info){ abort(); return 0; }
int PMPI_File_get_view(MPI_File fh, MPI_Offset *disp, MPI_Datatype *etype, MPI_Datatype *filetype, char *datarep){ abort(); return 0; }
int PMPI_File_read_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_read_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_at(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_iread_at(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iwrite_at(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iread_at_all(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iwrite_at_all(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_read(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_read_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_iread(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iwrite(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iread_all(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iwrite_all(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_seek(MPI_File fh, MPI_Offset offset, int whence){ abort(); return 0; }
int PMPI_File_get_position(MPI_File fh, MPI_Offset *offset){ abort(); return 0; }
int PMPI_File_get_byte_offset(MPI_File fh, MPI_Offset offset, MPI_Offset *disp){ abort(); return 0; }
int PMPI_File_read_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_iread_shared(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_iwrite_shared(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Request *request){ abort(); return 0; }
int PMPI_File_read_ordered(MPI_File fh, void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_ordered(MPI_File fh, const void *buf, int count, MPI_Datatype datatype, MPI_Status *status){ abort(); return 0; }
int PMPI_File_seek_shared(MPI_File fh, MPI_Offset offset, int whence){ abort(); return 0; }
int PMPI_File_get_position_shared(MPI_File fh, MPI_Offset *offset){ abort(); return 0; }
int PMPI_File_read_at_all_begin(MPI_File fh, MPI_Offset offset, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_read_at_all_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_at_all_begin(MPI_File fh, MPI_Offset offset, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_write_at_all_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_read_all_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_read_all_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_all_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_write_all_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_read_ordered_begin(MPI_File fh, void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_read_ordered_end(MPI_File fh, void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_write_ordered_begin(MPI_File fh, const void *buf, int count, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_File_write_ordered_end(MPI_File fh, const void *buf, MPI_Status *status){ abort(); return 0; }
int PMPI_File_get_type_extent(MPI_File fh, MPI_Datatype datatype, MPI_Aint *extent){ abort(); return 0; }
int PMPI_File_set_atomicity(MPI_File fh, int flag){ abort(); return 0; }
int PMPI_File_get_atomicity(MPI_File fh, int *flag){ abort(); return 0; }
int PMPI_File_sync(MPI_File fh){ abort(); return 0; }
int PMPI_Finalize(){ abort(); return 0; }
int PMPI_Finalized(int *flag){ abort(); return 0; }
int PMPI_Free_mem(void *base){ abort(); return 0; }
int PMPI_Gather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Igather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Gatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Igatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Get_address(const void *location, MPI_Aint *address){ abort(); return 0; }
int PMPI_Get_count(const MPI_Status *status, MPI_Datatype datatype, int *count){ abort(); return 0; }
int PMPI_Get_elements(const MPI_Status *status, MPI_Datatype datatype, int *count){ abort(); return 0; }
int PMPI_Get_elements_x(const MPI_Status *status, MPI_Datatype datatype, MPI_Count *count){ abort(); return 0; }
int PMPI_Get(void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win){ abort(); return 0; }
int PMPI_Get_accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, void *result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win){ abort(); return 0; }
int PMPI_Get_library_version(char *version, int *resultlen){ abort(); return 0; }
int PMPI_Get_processor_name(char *name, int *resultlen){ abort(); return 0; }
int PMPI_Get_version(int *version, int *subversion){ abort(); return 0; }
int PMPI_Graph_create(MPI_Comm comm_old, int nnodes, const int index[], const int edges[], int reorder, MPI_Comm *comm_graph){ abort(); return 0; }
int PMPI_Graph_get(MPI_Comm comm, int maxindex, int maxedges, int index[], int edges[]){ abort(); return 0; }
int PMPI_Graph_map(MPI_Comm comm, int nnodes, const int index[], const int edges[], int *newrank){ abort(); return 0; }
int PMPI_Graph_neighbors_count(MPI_Comm comm, int rank, int *nneighbors){ abort(); return 0; }
int PMPI_Graph_neighbors(MPI_Comm comm, int rank, int maxneighbors, int neighbors[]){ abort(); return 0; }
int PMPI_Graphdims_get(MPI_Comm comm, int *nnodes, int *nedges){ abort(); return 0; }
int PMPI_Grequest_complete(MPI_Request request){ abort(); return 0; }
int PMPI_Grequest_start(MPI_Grequest_query_function *query_fn, MPI_Grequest_free_function *free_fn, MPI_Grequest_cancel_function *cancel_fn, void *extra_state, MPI_Request *request){ abort(); return 0; }
int PMPI_Group_compare(MPI_Group group1, MPI_Group group2, int *result){ abort(); return 0; }
int PMPI_Group_difference(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_excl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_free(MPI_Group *group){ abort(); return 0; }
int PMPI_Group_incl(MPI_Group group, int n, const int ranks[], MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_intersection(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_range_excl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_range_incl(MPI_Group group, int n, int ranges[][3], MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Group_rank(MPI_Group group, int *rank){ abort(); return 0; }
int PMPI_Group_size(MPI_Group group, int *size){ abort(); return 0; }
int PMPI_Group_translate_ranks(MPI_Group group1, int n, const int ranks1[], MPI_Group group2, int ranks2[]){ abort(); return 0; }
int PMPI_Group_union(MPI_Group group1, MPI_Group group2, MPI_Group *newgroup){ abort(); return 0; }
int PMPI_Ibsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Improbe(int source, int tag, MPI_Comm comm, int *flag, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int PMPI_Imrecv(void *buf, int count, MPI_Datatype type, MPI_Message *message, MPI_Request *request){ abort(); return 0; }
int PMPI_Info_create(MPI_Info *info){ abort(); return 0; }
int PMPI_Info_delete(MPI_Info info, const char *key){ abort(); return 0; }
int PMPI_Info_dup(MPI_Info info, MPI_Info *newinfo){ abort(); return 0; }
int PMPI_Info_free(MPI_Info *info){ abort(); return 0; }
int PMPI_Info_get(MPI_Info info, const char *key, int valuelen, char *value, int *flag){ abort(); return 0; }
int PMPI_Info_get_nkeys(MPI_Info info, int *nkeys){ abort(); return 0; }
int PMPI_Info_get_nthkey(MPI_Info info, int n, char *key){ abort(); return 0; }
int PMPI_Info_get_valuelen(MPI_Info info, const char *key, int *valuelen, int *flag){ abort(); return 0; }
int PMPI_Info_set(MPI_Info info, const char *key, const char *value){ abort(); return 0; }
int PMPI_Init(int *argc, char ***argv){ abort(); return 0; }
int PMPI_Initialized(int *flag){ abort(); return 0; }
int PMPI_Init_thread(int *argc, char ***argv, int required, int *provided){ abort(); return 0; }
int PMPI_Intercomm_create(MPI_Comm local_comm, int local_leader, MPI_Comm bridge_comm, int remote_leader, int tag, MPI_Comm *newintercomm){ abort(); return 0; }
int PMPI_Intercomm_merge(MPI_Comm intercomm, int high, MPI_Comm *newintercomm){ abort(); return 0; }
int PMPI_Iprobe(int source, int tag, MPI_Comm comm, int *flag, MPI_Status *status){ abort(); return 0; }
int PMPI_Irecv(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Irsend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Isend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Issend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Is_thread_main(int *flag){ abort(); return 0; }
int PMPI_Lookup_name(const char *service_name, MPI_Info info, char *port_name){ abort(); return 0; }
int PMPI_Mprobe(int source, int tag, MPI_Comm comm, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int PMPI_Mrecv(void *buf, int count, MPI_Datatype type, MPI_Message *message, MPI_Status *status){ abort(); return 0; }
int PMPI_Neighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ineighbor_allgather(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Neighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ineighbor_allgatherv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int displs[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Neighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ineighbor_alltoall(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Neighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ineighbor_alltoallv(const void *sendbuf, const int sendcounts[], const int sdispls[], MPI_Datatype sendtype, void *recvbuf, const int recvcounts[], const int rdispls[], MPI_Datatype recvtype, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Neighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm){ abort(); return 0; }
int PMPI_Ineighbor_alltoallw(const void *sendbuf, const int sendcounts[], const MPI_Aint sdispls[], const MPI_Datatype sendtypes[], void *recvbuf, const int recvcounts[], const MPI_Aint rdispls[], const MPI_Datatype recvtypes[], MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Op_commutative(MPI_Op op, int *commute){ abort(); return 0; }
int PMPI_Op_create(MPI_User_function *function, int commute, MPI_Op *op){ abort(); return 0; }
int PMPI_Open_port(MPI_Info info, char *port_name){ abort(); return 0; }
int PMPI_Op_free(MPI_Op *op){ abort(); return 0; }
int PMPI_Pack_external(const char datarep[], const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf, MPI_Aint outsize, MPI_Aint *position){ abort(); return 0; }
int PMPI_Pack_external_size(const char datarep[], int incount, MPI_Datatype datatype, MPI_Aint *size){ abort(); return 0; }
int PMPI_Pack(const void *inbuf, int incount, MPI_Datatype datatype, void *outbuf, int outsize, int *position, MPI_Comm comm){ abort(); return 0; }
int PMPI_Pack_size(int incount, MPI_Datatype datatype, MPI_Comm comm, int *size){ abort(); return 0; }
int PMPI_Pcontrol(const int level, ...){ abort(); return 0; }
int PMPI_Probe(int source, int tag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int PMPI_Publish_name(const char *service_name, MPI_Info info, const char *port_name){ abort(); return 0; }
int PMPI_Put(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win){ abort(); return 0; }
int PMPI_Query_thread(int *provided){ abort(); return 0; }
int PMPI_Raccumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int PMPI_Recv_init(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Recv(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int PMPI_Reduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ireduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Reduce_local(const void *inbuf, void *inoutbuf, int count, MPI_Datatype datatype, MPI_Op op){ abort(); return 0; }
int PMPI_Reduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[], MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ireduce_scatter(const void *sendbuf, void *recvbuf, const int recvcounts[], MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Reduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int PMPI_Ireduce_scatter_block(const void *sendbuf, void *recvbuf, int recvcount, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Register_datarep(const char *datarep, MPI_Datarep_conversion_function *read_conversion_fn, MPI_Datarep_conversion_function *write_conversion_fn, MPI_Datarep_extent_function *dtype_file_extent_fn, void *extra_state){ abort(); return 0; }
int PMPI_Request_free(MPI_Request *request){ abort(); return 0; }
int PMPI_Request_get_status(MPI_Request request, int *flag, MPI_Status *status){ abort(); return 0; }
int PMPI_Rget(void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int PMPI_Rget_accumulate(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, void *result_addr, int result_count, MPI_Datatype result_datatype, int target_rank, MPI_Aint target_disp, int target_count, MPI_Datatype target_datatype, MPI_Op op, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int PMPI_Rput(const void *origin_addr, int origin_count, MPI_Datatype origin_datatype, int target_rank, MPI_Aint target_disp, int target_cout, MPI_Datatype target_datatype, MPI_Win win, MPI_Request *request){ abort(); return 0; }
int PMPI_Rsend(const void *ibuf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int PMPI_Rsend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Scan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iscan(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype, MPI_Op op, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Scatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iscatter(const void *sendbuf, int sendcount, MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Scatterv(const void *sendbuf, const int sendcounts[], const int displs[], MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm){ abort(); return 0; }
int PMPI_Iscatterv(const void *sendbuf, const int sendcounts[], const int displs[], MPI_Datatype sendtype, void *recvbuf, int recvcount, MPI_Datatype recvtype, int root, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Send_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Send(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int PMPI_Sendrecv(const void *sendbuf, int sendcount, MPI_Datatype sendtype, int dest, int sendtag, void *recvbuf, int recvcount, MPI_Datatype recvtype, int source, int recvtag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int PMPI_Sendrecv_replace(void *buf, int count, MPI_Datatype datatype, int dest, int sendtag, int source, int recvtag, MPI_Comm comm, MPI_Status *status){ abort(); return 0; }
int PMPI_Ssend_init(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request){ abort(); return 0; }
int PMPI_Ssend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm){ abort(); return 0; }
int PMPI_Start(MPI_Request *request){ abort(); return 0; }
int PMPI_Startall(int count, MPI_Request array_of_requests[]){ abort(); return 0; }
int PMPI_Status_set_cancelled(MPI_Status *status, int flag){ abort(); return 0; }
int PMPI_Status_set_elements(MPI_Status *status, MPI_Datatype datatype, int count){ abort(); return 0; }
int PMPI_Status_set_elements_x(MPI_Status *status, MPI_Datatype datatype, MPI_Count count){ abort(); return 0; }
int PMPI_Testall(int count, MPI_Request array_of_requests[], int *flag, MPI_Status array_of_statuses[]){ abort(); return 0; }
int PMPI_Testany(int count, MPI_Request array_of_requests[], int *index, int *flag, MPI_Status *status){ abort(); return 0; }
int PMPI_Test(MPI_Request *request, int *flag, MPI_Status *status){ abort(); return 0; }
int PMPI_Test_cancelled(const MPI_Status *status, int *flag){ abort(); return 0; }
int PMPI_Testsome(int incount, MPI_Request array_of_requests[], int *outcount, int array_of_indices[], MPI_Status array_of_statuses[]){ abort(); return 0; }
int PMPI_Topo_test(MPI_Comm comm, int *status){ abort(); return 0; }
int PMPI_Type_commit(MPI_Datatype *type){ abort(); return 0; }
int PMPI_Type_contiguous(int count, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_darray(int size, int rank, int ndims, const int gsize_array[], const int distrib_array[], const int darg_array[], const int psize_array[], int order, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_f90_complex(int p, int r, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_f90_integer(int r, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_f90_real(int p, int r, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_hindexed_block(int count, int blocklength, const MPI_Aint array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_hindexed(int count, const int array_of_blocklengths[], const MPI_Aint array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_hvector(int count, int blocklength, MPI_Aint stride, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_keyval(MPI_Type_copy_attr_function *type_copy_attr_fn, MPI_Type_delete_attr_function *type_delete_attr_fn, int *type_keyval, void *extra_state){ abort(); return 0; }
int PMPI_Type_create_indexed_block(int count, int blocklength, const int array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_struct(int count, const int array_of_block_lengths[], const MPI_Aint array_of_displacements[], const MPI_Datatype array_of_types[], MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_subarray(int ndims, const int size_array[], const int subsize_array[], const int start_array[], int order, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_create_resized(MPI_Datatype oldtype, MPI_Aint lb, MPI_Aint extent, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_delete_attr(MPI_Datatype type, int type_keyval){ abort(); return 0; }
int PMPI_Type_dup(MPI_Datatype type, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_free(MPI_Datatype *type){ abort(); return 0; }
int PMPI_Type_free_keyval(int *type_keyval){ abort(); return 0; }
int PMPI_Type_get_attr(MPI_Datatype type, int type_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int PMPI_Type_get_contents(MPI_Datatype mtype, int max_integers, int max_addresses, int max_datatypes, int array_of_integers[], MPI_Aint array_of_addresses[], MPI_Datatype array_of_datatypes[]){ abort(); return 0; }
int PMPI_Type_get_envelope(MPI_Datatype type, int *num_integers, int *num_addresses, int *num_datatypes, int *combiner){ abort(); return 0; }
int PMPI_Type_get_extent(MPI_Datatype type, MPI_Aint *lb, MPI_Aint *extent){ abort(); return 0; }
int PMPI_Type_get_extent_x(MPI_Datatype type, MPI_Count *lb, MPI_Count *extent){ abort(); return 0; }
int PMPI_Type_get_name(MPI_Datatype type, char *type_name, int *resultlen){ abort(); return 0; }
int PMPI_Type_get_true_extent(MPI_Datatype datatype, MPI_Aint *true_lb, MPI_Aint *true_extent){ abort(); return 0; }
int PMPI_Type_get_true_extent_x(MPI_Datatype datatype, MPI_Count *true_lb, MPI_Count *true_extent){ abort(); return 0; }
int PMPI_Type_indexed(int count, const int array_of_blocklengths[], const int array_of_displacements[], MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Type_match_size(int typeclass, int size, MPI_Datatype *type){ abort(); return 0; }
int PMPI_Type_set_attr(MPI_Datatype type, int type_keyval, void *attr_val){ abort(); return 0; }
int PMPI_Type_set_name(MPI_Datatype type, const char *type_name){ abort(); return 0; }
int PMPI_Type_size(MPI_Datatype type, int *size){ abort(); return 0; }
int PMPI_Type_size_x(MPI_Datatype type, MPI_Count *size){ abort(); return 0; }
int PMPI_Type_vector(int count, int blocklength, int stride, MPI_Datatype oldtype, MPI_Datatype *newtype){ abort(); return 0; }
int PMPI_Unpack(const void *inbuf, int insize, int *position, void *outbuf, int outcount, MPI_Datatype datatype, MPI_Comm comm){ abort(); return 0; }
int PMPI_Unpublish_name(const char *service_name, MPI_Info info, const char *port_name){ abort(); return 0; }
int PMPI_Unpack_external(const char datarep[], const void *inbuf, MPI_Aint insize, MPI_Aint *position, void *outbuf, int outcount, MPI_Datatype datatype){ abort(); return 0; }
int PMPI_Waitall(int count, MPI_Request array_of_requests[], MPI_Status *array_of_statuses){ abort(); return 0; }
int PMPI_Waitany(int count, MPI_Request array_of_requests[], int *index, MPI_Status *status){ abort(); return 0; }
int PMPI_Wait(MPI_Request *request, MPI_Status *status){ abort(); return 0; }
int PMPI_Waitsome(int incount, MPI_Request array_of_requests[], int *outcount, int array_of_indices[], MPI_Status array_of_statuses[]){ abort(); return 0; }
int PMPI_Win_allocate(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr, MPI_Win *win){ abort(); return 0; }
int PMPI_Win_allocate_shared(MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, void *baseptr, MPI_Win *win){ abort(); return 0; }
int PMPI_Win_attach(MPI_Win win, void *base, MPI_Aint size){ abort(); return 0; }
int PMPI_Win_call_errhandler(MPI_Win win, int errorcode){ abort(); return 0; }
int PMPI_Win_complete(MPI_Win win){ abort(); return 0; }
int PMPI_Win_create(void *base, MPI_Aint size, int disp_unit, MPI_Info info, MPI_Comm comm, MPI_Win *win){ abort(); return 0; }
int PMPI_Win_create_dynamic(MPI_Info info, MPI_Comm comm, MPI_Win *win){ abort(); return 0; }
int PMPI_Win_create_errhandler(MPI_Win_errhandler_function *function, MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_Win_create_keyval(MPI_Win_copy_attr_function *win_copy_attr_fn, MPI_Win_delete_attr_function *win_delete_attr_fn, int *win_keyval, void *extra_state){ abort(); return 0; }
int PMPI_Win_delete_attr(MPI_Win win, int win_keyval){ abort(); return 0; }
int PMPI_Win_detach(MPI_Win win, const void *base){ abort(); return 0; }
int PMPI_Win_fence(int assert, MPI_Win win){ abort(); return 0; }
int PMPI_Win_flush(int rank, MPI_Win win){ abort(); return 0; }
int PMPI_Win_flush_all(MPI_Win win){ abort(); return 0; }
int PMPI_Win_flush_local(int rank, MPI_Win win){ abort(); return 0; }
int PMPI_Win_flush_local_all(MPI_Win win){ abort(); return 0; }
int PMPI_Win_free(MPI_Win *win){ abort(); return 0; }
int PMPI_Win_free_keyval(int *win_keyval){ abort(); return 0; }
int PMPI_Win_get_attr(MPI_Win win, int win_keyval, void *attribute_val, int *flag){ abort(); return 0; }
int PMPI_Win_get_errhandler(MPI_Win win, MPI_Errhandler *errhandler){ abort(); return 0; }
int PMPI_Win_get_group(MPI_Win win, MPI_Group *group){ abort(); return 0; }
int PMPI_Win_get_info(MPI_Win win, MPI_Info *info_used){ abort(); return 0; }
int PMPI_Win_get_name(MPI_Win win, char *win_name, int *resultlen){ abort(); return 0; }
int PMPI_Win_lock(int lock_type, int rank, int assert, MPI_Win win){ abort(); return 0; }
int PMPI_Win_lock_all(int assert, MPI_Win win){ abort(); return 0; }
int PMPI_Win_post(MPI_Group group, int assert, MPI_Win win){ abort(); return 0; }
int PMPI_Win_set_attr(MPI_Win win, int win_keyval, void *attribute_val){ abort(); return 0; }
int PMPI_Win_set_errhandler(MPI_Win win, MPI_Errhandler errhandler){ abort(); return 0; }
int PMPI_Win_set_info(MPI_Win win, MPI_Info info){ abort(); return 0; }
int PMPI_Win_set_name(MPI_Win win, const char *win_name){ abort(); return 0; }
int PMPI_Win_shared_query(MPI_Win win, int rank, MPI_Aint *size, int *disp_unit, void *baseptr){ abort(); return 0; }
int PMPI_Win_start(MPI_Group group, int assert, MPI_Win win){ abort(); return 0; }
int PMPI_Win_sync(MPI_Win win){ abort(); return 0; }
int PMPI_Win_test(MPI_Win win, int *flag){ abort(); return 0; }
int PMPI_Win_unlock(int rank, MPI_Win win){ abort(); return 0; }
int PMPI_Win_unlock_all(MPI_Win win){ abort(); return 0; }
int PMPI_Win_wait(MPI_Win win){ abort(); return 0; }
double PMPI_Wtick(){ abort(); return 0; }
double PMPI_Wtime(){ abort(); return 0; }
int PMPI_Attr_delete(MPI_Comm comm, int keyval){ abort(); return 0; }
int PMPI_Attr_get(MPI_Comm comm, int keyval, void *attribute_val, int *flag){ abort(); return 0; }
int PMPI_Attr_put(MPI_Comm comm, int keyval, void *attribute_val){ abort(); return 0; }
int PMPI_Keyval_create(MPI_Copy_function *copy_fn, MPI_Delete_function *delete_fn, int *keyval, void *extra_state){ abort(); return 0; }
int PMPI_Keyval_free(int *keyval){ abort(); return 0; }
