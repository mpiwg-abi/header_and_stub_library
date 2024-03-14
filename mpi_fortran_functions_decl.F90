interface MPI_Abort

    subroutine MPI_Abort(comm, errorcode, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Abort

end interface MPI_Abort


interface MPI_Accumulate

    subroutine MPI_Accumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                              target_count, target_datatype, op, win, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Accumulate
    
    subroutine MPI_Accumulate_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                                target_count, target_datatype, op, win, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Accumulate_c

end interface MPI_Accumulate


interface MPI_Add_error_class

    subroutine MPI_Add_error_class(errorclass, ierror)
        integer, intent(out) :: errorclass
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Add_error_class

end interface MPI_Add_error_class


interface MPI_Add_error_code

    subroutine MPI_Add_error_code(errorclass, errorcode, ierror)
        integer, intent(in) :: errorclass
        integer, intent(out) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Add_error_code

end interface MPI_Add_error_code


interface MPI_Add_error_string

    subroutine MPI_Add_error_string(errorcode, string, ierror)
        integer, intent(in) :: errorcode
        character(len=*), intent(in) :: string
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Add_error_string

end interface MPI_Add_error_string


interface MPI_Aint_add

    integer(kind=MPI_ADDRESS_KIND) function MPI_Aint_add(base, disp)
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: base
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: disp
    end function MPI_Aint_add

end interface MPI_Aint_add


interface MPI_Aint_diff

    integer(kind=MPI_ADDRESS_KIND) function MPI_Aint_diff(addr1, addr2)
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: addr1
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: addr2
    end function MPI_Aint_diff

end interface MPI_Aint_diff


interface MPI_Allgather

    subroutine MPI_Allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgather
    
    subroutine MPI_Allgather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                               ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgather_c

end interface MPI_Allgather


interface MPI_Allgather_init

    subroutine MPI_Allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                  info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgather_init
    
    subroutine MPI_Allgather_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                    info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgather_init_c

end interface MPI_Allgather_init


interface MPI_Allgatherv

    subroutine MPI_Allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, comm, &
                              ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgatherv
    
    subroutine MPI_Allgatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgatherv_c

end interface MPI_Allgatherv


interface MPI_Allgatherv_init

    subroutine MPI_Allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                   comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgatherv_init
    
    subroutine MPI_Allgatherv_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                     recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allgatherv_init_c

end interface MPI_Allgatherv_init


interface MPI_Alloc_mem

    subroutine MPI_Alloc_mem(size, info, baseptr, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Info
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        type(MPI_Info), intent(in) :: info
        type(c_ptr), intent(out) :: baseptr
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alloc_mem

end interface MPI_Alloc_mem


interface MPI_Allreduce

    subroutine MPI_Allreduce(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allreduce
    
    subroutine MPI_Allreduce_c(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allreduce_c

end interface MPI_Allreduce


interface MPI_Allreduce_init

    subroutine MPI_Allreduce_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allreduce_init
    
    subroutine MPI_Allreduce_init_c(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Allreduce_init_c

end interface MPI_Allreduce_init


interface MPI_Alltoall

    subroutine MPI_Alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoall
    
    subroutine MPI_Alltoall_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoall_c

end interface MPI_Alltoall


interface MPI_Alltoall_init

    subroutine MPI_Alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, info, &
                                 request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoall_init
    
    subroutine MPI_Alltoall_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                   info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoall_init_c

end interface MPI_Alltoall_init


interface MPI_Alltoallv

    subroutine MPI_Alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                             recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcounts(*)
        integer, intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallv
    
    subroutine MPI_Alltoallv_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                               recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallv_c

end interface MPI_Alltoallv


interface MPI_Alltoallv_init

    subroutine MPI_Alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                                  recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallv_init
    
    subroutine MPI_Alltoallv_init_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                    rdispls, recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallv_init_c

end interface MPI_Alltoallv_init


interface MPI_Alltoallw

    subroutine MPI_Alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                             recvtypes, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcounts(*)
        integer, intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtypes(*)
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallw
    
    subroutine MPI_Alltoallw_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                               recvtypes, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtypes(*)
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallw_c

end interface MPI_Alltoallw


interface MPI_Alltoallw_init

    subroutine MPI_Alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                                  recvtypes, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallw_init
    
    subroutine MPI_Alltoallw_init_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                    rdispls, recvtypes, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Alltoallw_init_c

end interface MPI_Alltoallw_init


interface MPI_Barrier

    subroutine MPI_Barrier(comm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Barrier

end interface MPI_Barrier


interface MPI_Barrier_init

    subroutine MPI_Barrier_init(comm, info, request, ierror)
        import :: MPI_Comm, MPI_Info, MPI_Request
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Barrier_init

end interface MPI_Barrier_init


interface MPI_Bcast

    subroutine MPI_Bcast(buffer, count, datatype, root, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(inout) :: buffer
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bcast
    
    subroutine MPI_Bcast_c(buffer, count, datatype, root, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(inout) :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bcast_c

end interface MPI_Bcast


interface MPI_Bcast_init

    subroutine MPI_Bcast_init(buffer, count, datatype, root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), asynchronous :: buffer
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bcast_init
    
    subroutine MPI_Bcast_init_c(buffer, count, datatype, root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), asynchronous :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bcast_init_c

end interface MPI_Bcast_init


interface MPI_Bsend

    subroutine MPI_Bsend(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bsend
    
    subroutine MPI_Bsend_c(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bsend_c

end interface MPI_Bsend


interface MPI_Bsend_init

    subroutine MPI_Bsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bsend_init
    
    subroutine MPI_Bsend_init_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Bsend_init_c

end interface MPI_Bsend_init


interface MPI_Buffer_attach

    subroutine MPI_Buffer_attach(buffer, size, ierror)
        type(*), dimension(..), asynchronous :: buffer
        integer, intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_attach
    
    subroutine MPI_Buffer_attach_c(buffer, size, ierror)
        import :: MPI_COUNT_KIND
        type(*), dimension(..), asynchronous :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_attach_c

end interface MPI_Buffer_attach


interface MPI_Buffer_detach

    subroutine MPI_Buffer_detach(buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        type(c_ptr), intent(out) :: buffer_addr
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_detach
    
    subroutine MPI_Buffer_detach_c(buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_COUNT_KIND
        type(c_ptr), intent(out) :: buffer_addr
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_detach_c

end interface MPI_Buffer_detach


interface MPI_Buffer_flush

    subroutine MPI_Buffer_flush(ierror)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_flush

end interface MPI_Buffer_flush


interface MPI_Buffer_iflush

    subroutine MPI_Buffer_iflush(request, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Buffer_iflush

end interface MPI_Buffer_iflush


interface MPI_Cancel

    subroutine MPI_Cancel(request, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(in) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cancel

end interface MPI_Cancel


interface MPI_Cart_coords

    subroutine MPI_Cart_coords(comm, rank, maxdims, coords, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: rank
        integer, intent(in) :: maxdims
        integer, intent(out) :: coords(maxdims)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_coords

end interface MPI_Cart_coords


interface MPI_Cart_create

    subroutine MPI_Cart_create(comm_old, ndims, dims, periods, reorder, comm_cart, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm_old
        integer, intent(in) :: ndims
        integer, intent(in) :: dims(ndims)
        LOGICAL, intent(in) :: periods(ndims)
        LOGICAL, intent(in) :: reorder
        type(MPI_Comm), intent(out) :: comm_cart
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_create

end interface MPI_Cart_create


interface MPI_Cart_get

    subroutine MPI_Cart_get(comm, maxdims, dims, periods, coords, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: maxdims
        integer, intent(out) :: dims(maxdims)
        LOGICAL, intent(out) :: periods(maxdims)
        integer, intent(out) :: coords(maxdims)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_get

end interface MPI_Cart_get


interface MPI_Cart_map

    subroutine MPI_Cart_map(comm, ndims, dims, periods, newrank, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: ndims
        integer, intent(in) :: dims(ndims)
        LOGICAL, intent(in) :: periods(ndims)
        integer, intent(out) :: newrank
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_map

end interface MPI_Cart_map


interface MPI_Cart_rank

    subroutine MPI_Cart_rank(comm, coords, rank, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: coords(*)
        integer, intent(out) :: rank
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_rank

end interface MPI_Cart_rank


interface MPI_Cart_shift

    subroutine MPI_Cart_shift(comm, direction, disp, rank_source, rank_dest, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: direction
        integer, intent(in) :: disp
        integer, intent(out) :: rank_source
        integer, intent(out) :: rank_dest
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_shift

end interface MPI_Cart_shift


interface MPI_Cart_sub

    subroutine MPI_Cart_sub(comm, remain_dims, newcomm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        LOGICAL, intent(in) :: remain_dims(*)
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cart_sub

end interface MPI_Cart_sub


interface MPI_Cartdim_get

    subroutine MPI_Cartdim_get(comm, ndims, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: ndims
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Cartdim_get

end interface MPI_Cartdim_get


interface MPI_Close_port

    subroutine MPI_Close_port(port_name, ierror)
        character(len=*), intent(in) :: port_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Close_port

end interface MPI_Close_port


interface MPI_Comm_accept

    subroutine MPI_Comm_accept(port_name, info, root, comm, newcomm, ierror)
        import :: MPI_Info, MPI_Comm
        character(len=*), intent(in) :: port_name
        type(MPI_Info), intent(in) :: info
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_accept

end interface MPI_Comm_accept


interface MPI_Comm_attach_buffer

    subroutine MPI_Comm_attach_buffer(comm, buffer, size, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        type(*), dimension(..), asynchronous :: buffer
        integer, intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_attach_buffer
    
    subroutine MPI_Comm_attach_buffer_c(comm, buffer, size, ierror)
        import :: MPI_Comm
        import :: MPI_COUNT_KIND
        type(MPI_Comm), intent(in) :: comm
        type(*), dimension(..), asynchronous :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_attach_buffer_c

end interface MPI_Comm_attach_buffer


interface MPI_Comm_call_errhandler

    subroutine MPI_Comm_call_errhandler(comm, errorcode, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_call_errhandler

end interface MPI_Comm_call_errhandler


interface MPI_Comm_compare

    subroutine MPI_Comm_compare(comm1, comm2, result, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm1
        type(MPI_Comm), intent(in) :: comm2
        integer, intent(out) :: result
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_compare

end interface MPI_Comm_compare


interface MPI_Comm_connect

    subroutine MPI_Comm_connect(port_name, info, root, comm, newcomm, ierror)
        import :: MPI_Info, MPI_Comm
        character(len=*), intent(in) :: port_name
        type(MPI_Info), intent(in) :: info
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_connect

end interface MPI_Comm_connect


interface MPI_Comm_create

    subroutine MPI_Comm_create(comm, group, newcomm, ierror)
        import :: MPI_Comm, MPI_Group
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Group), intent(in) :: group
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_create

end interface MPI_Comm_create


interface MPI_Comm_create_errhandler

    subroutine MPI_Comm_create_errhandler(comm_errhandler_fn, errhandler, ierror)
        import :: MPI_Errhandler
        import :: MPI_Comm_errhandler_function
        procedure(MPI_Comm_errhandler_function) :: comm_errhandler_fn
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_create_errhandler

end interface MPI_Comm_create_errhandler


interface MPI_Comm_create_from_group

    subroutine MPI_Comm_create_from_group(group, stringtag, info, errhandler, newcomm, ierror)
        import :: MPI_Group, MPI_Info, MPI_Errhandler, MPI_Comm
        type(MPI_Group), intent(in) :: group
        character(len=*), intent(in) :: stringtag
        type(MPI_Info), intent(in) :: info
        type(MPI_Errhandler), intent(in) :: errhandler
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_create_from_group

end interface MPI_Comm_create_from_group


interface MPI_Comm_create_group

    subroutine MPI_Comm_create_group(comm, group, tag, newcomm, ierror)
        import :: MPI_Comm, MPI_Group
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: tag
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_create_group

end interface MPI_Comm_create_group


interface MPI_Comm_create_keyval

    subroutine MPI_Comm_create_keyval(comm_copy_attr_fn, comm_delete_attr_fn, comm_keyval, extra_state, &
                                      ierror)
        import :: MPI_ADDRESS_KIND
        import :: MPI_Comm_copy_attr_function, MPI_Comm_delete_attr_function
        procedure(MPI_Comm_copy_attr_function) :: comm_copy_attr_fn
        procedure(MPI_Comm_delete_attr_function) :: comm_delete_attr_fn
        integer, intent(out) :: comm_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_create_keyval

end interface MPI_Comm_create_keyval


interface MPI_Comm_delete_attr

    subroutine MPI_Comm_delete_attr(comm, comm_keyval, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: comm_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_delete_attr

end interface MPI_Comm_delete_attr


interface MPI_Comm_detach_buffer

    subroutine MPI_Comm_detach_buffer(comm, buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: buffer_addr
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_detach_buffer
    
    subroutine MPI_Comm_detach_buffer_c(comm, buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Comm
        import :: MPI_COUNT_KIND
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: buffer_addr
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_detach_buffer_c

end interface MPI_Comm_detach_buffer


interface MPI_Comm_disconnect

    subroutine MPI_Comm_disconnect(comm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(inout) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_disconnect

end interface MPI_Comm_disconnect


interface MPI_Comm_dup

    subroutine MPI_Comm_dup(comm, newcomm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_dup

end interface MPI_Comm_dup


interface MPI_Comm_dup_with_info

    subroutine MPI_Comm_dup_with_info(comm, info, newcomm, ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_dup_with_info

end interface MPI_Comm_dup_with_info


interface MPI_Comm_flush_buffer

    subroutine MPI_Comm_flush_buffer(comm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_flush_buffer

end interface MPI_Comm_flush_buffer


interface MPI_Comm_free

    subroutine MPI_Comm_free(comm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(inout) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_free

end interface MPI_Comm_free


interface MPI_Comm_free_keyval

    subroutine MPI_Comm_free_keyval(comm_keyval, ierror)
        integer, intent(inout) :: comm_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_free_keyval

end interface MPI_Comm_free_keyval


interface MPI_Comm_get_attr

    subroutine MPI_Comm_get_attr(comm, comm_keyval, attribute_val, flag, ierror)
        import :: MPI_Comm
        import :: MPI_ADDRESS_KIND
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: comm_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: attribute_val
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_get_attr

end interface MPI_Comm_get_attr


interface MPI_Comm_get_errhandler

    subroutine MPI_Comm_get_errhandler(comm, errhandler, ierror)
        import :: MPI_Comm, MPI_Errhandler
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_get_errhandler

end interface MPI_Comm_get_errhandler


interface MPI_Comm_get_info

    subroutine MPI_Comm_get_info(comm, info_used, ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(out) :: info_used
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_get_info

end interface MPI_Comm_get_info


interface MPI_Comm_get_name

    subroutine MPI_Comm_get_name(comm, comm_name, resultlen, ierror)
        import :: MPI_Comm
        import :: MPI_MAX_OBJECT_NAME
        type(MPI_Comm), intent(in) :: comm
        character(len=MPI_MAX_OBJECT_NAME), intent(out) :: comm_name
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_get_name

end interface MPI_Comm_get_name


interface MPI_Comm_get_parent

    subroutine MPI_Comm_get_parent(parent, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(out) :: parent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_get_parent

end interface MPI_Comm_get_parent


interface MPI_Comm_group

    subroutine MPI_Comm_group(comm, group, ierror)
        import :: MPI_Comm, MPI_Group
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Group), intent(out) :: group
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_group

end interface MPI_Comm_group


interface MPI_Comm_idup

    subroutine MPI_Comm_idup(comm, newcomm, request, ierror)
        import :: MPI_Comm, MPI_Request
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out), asynchronous :: newcomm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_idup

end interface MPI_Comm_idup


interface MPI_Comm_idup_with_info

    subroutine MPI_Comm_idup_with_info(comm, info, newcomm, request, ierror)
        import :: MPI_Comm, MPI_Info, MPI_Request
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(out), asynchronous :: newcomm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_idup_with_info

end interface MPI_Comm_idup_with_info


interface MPI_Comm_iflush_buffer

    subroutine MPI_Comm_iflush_buffer(comm, request, ierror)
        import :: MPI_Comm, MPI_Request
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_iflush_buffer

end interface MPI_Comm_iflush_buffer


interface MPI_Comm_join

    subroutine MPI_Comm_join(fd, intercomm, ierror)
        import :: MPI_Comm
        integer, intent(in) :: fd
        type(MPI_Comm), intent(out) :: intercomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_join

end interface MPI_Comm_join


interface MPI_Comm_rank

    subroutine MPI_Comm_rank(comm, rank, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: rank
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_rank

end interface MPI_Comm_rank


interface MPI_Comm_remote_group

    subroutine MPI_Comm_remote_group(comm, group, ierror)
        import :: MPI_Comm, MPI_Group
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Group), intent(out) :: group
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_remote_group

end interface MPI_Comm_remote_group


interface MPI_Comm_remote_size

    subroutine MPI_Comm_remote_size(comm, size, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_remote_size

end interface MPI_Comm_remote_size


interface MPI_Comm_set_attr

    subroutine MPI_Comm_set_attr(comm, comm_keyval, attribute_val, ierror)
        import :: MPI_Comm
        import :: MPI_ADDRESS_KIND
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: comm_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: attribute_val
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_set_attr

end interface MPI_Comm_set_attr


interface MPI_Comm_set_errhandler

    subroutine MPI_Comm_set_errhandler(comm, errhandler, ierror)
        import :: MPI_Comm, MPI_Errhandler
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Errhandler), intent(in) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_set_errhandler

end interface MPI_Comm_set_errhandler


interface MPI_Comm_set_info

    subroutine MPI_Comm_set_info(comm, info, ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_set_info

end interface MPI_Comm_set_info


interface MPI_Comm_set_name

    subroutine MPI_Comm_set_name(comm, comm_name, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        character(len=*), intent(in) :: comm_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_set_name

end interface MPI_Comm_set_name


interface MPI_Comm_size

    subroutine MPI_Comm_size(comm, size, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_size

end interface MPI_Comm_size


interface MPI_Comm_spawn

    subroutine MPI_Comm_spawn(command, argv, maxprocs, info, root, comm, intercomm, array_of_errcodes, &
                              ierror)
        import :: MPI_Info, MPI_Comm
        character(len=*), intent(in) :: command
        character(len=*), intent(in), target :: argv(*)
        integer, intent(in) :: maxprocs
        type(MPI_Info), intent(in) :: info
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out) :: intercomm
        integer, target :: array_of_errcodes(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_spawn

end interface MPI_Comm_spawn


interface MPI_Comm_spawn_multiple

    subroutine MPI_Comm_spawn_multiple(count, array_of_commands, array_of_argv, array_of_maxprocs, &
                                       array_of_info, root, comm, intercomm, array_of_errcodes, ierror)
        import :: MPI_Info, MPI_Comm
        integer, intent(in) :: count
        character(len=*), intent(in), target :: array_of_commands(*)
        character(len=*), intent(in), target :: array_of_argv(count, *)
        integer, intent(in) :: array_of_maxprocs(count)
        type(MPI_Info), intent(in) :: array_of_info(count)
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Comm), intent(out) :: intercomm
        integer, target :: array_of_errcodes(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_spawn_multiple

end interface MPI_Comm_spawn_multiple


interface MPI_Comm_split

    subroutine MPI_Comm_split(comm, color, key, newcomm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: color
        integer, intent(in) :: key
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_split

end interface MPI_Comm_split


interface MPI_Comm_split_type

    subroutine MPI_Comm_split_type(comm, split_type, key, info, newcomm, ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: split_type
        integer, intent(in) :: key
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(out) :: newcomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_split_type

end interface MPI_Comm_split_type


interface MPI_Comm_test_inter

    subroutine MPI_Comm_test_inter(comm, flag, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Comm_test_inter

end interface MPI_Comm_test_inter


interface MPI_Compare_and_swap

    subroutine MPI_Compare_and_swap(origin_addr, compare_addr, result_addr, datatype, target_rank, &
                                    target_disp, win, ierror)
        import :: MPI_Datatype, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        type(*), dimension(..), intent(in), asynchronous :: compare_addr
        type(*), dimension(..), asynchronous :: result_addr
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Compare_and_swap

end interface MPI_Compare_and_swap


interface MPI_Dims_create

    subroutine MPI_Dims_create(nnodes, ndims, dims, ierror)
        integer, intent(in) :: nnodes
        integer, intent(in) :: ndims
        integer, intent(inout) :: dims(ndims)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Dims_create

end interface MPI_Dims_create


interface MPI_Dist_graph_create

    subroutine MPI_Dist_graph_create(comm_old, n, sources, degrees, destinations, weights, info, &
                                     reorder, comm_dist_graph, ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm_old
        integer, intent(in) :: n
        integer, intent(in) :: sources(n)
        integer, intent(in) :: degrees(n)
        integer, intent(in) :: destinations(*)
        integer, intent(in), target :: weights(*)
        type(MPI_Info), intent(in) :: info
        LOGICAL, intent(in) :: reorder
        type(MPI_Comm), intent(out) :: comm_dist_graph
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Dist_graph_create

end interface MPI_Dist_graph_create


interface MPI_Dist_graph_create_adjacent

    subroutine MPI_Dist_graph_create_adjacent(comm_old, indegree, sources, sourceweights, outdegree, &
                                              destinations, destweights, info, reorder, comm_dist_graph, &
                                              ierror)
        import :: MPI_Comm, MPI_Info
        type(MPI_Comm), intent(in) :: comm_old
        integer, intent(in) :: indegree
        integer, intent(in) :: sources(indegree)
        integer, intent(in), target :: sourceweights(*)
        integer, intent(in) :: outdegree
        integer, intent(in) :: destinations(outdegree)
        integer, intent(in), target :: destweights(*)
        type(MPI_Info), intent(in) :: info
        LOGICAL, intent(in) :: reorder
        type(MPI_Comm), intent(out) :: comm_dist_graph
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Dist_graph_create_adjacent

end interface MPI_Dist_graph_create_adjacent


interface MPI_Dist_graph_neighbors

    subroutine MPI_Dist_graph_neighbors(comm, maxindegree, sources, sourceweights, maxoutdegree, &
                                        destinations, destweights, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: maxindegree
        integer, intent(out) :: sources(maxindegree)
        integer, target :: sourceweights(*)
        integer, intent(in) :: maxoutdegree
        integer, intent(out) :: destinations(maxoutdegree)
        integer, target :: destweights(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Dist_graph_neighbors

end interface MPI_Dist_graph_neighbors


interface MPI_Dist_graph_neighbors_count

    subroutine MPI_Dist_graph_neighbors_count(comm, indegree, outdegree, weighted, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: indegree
        integer, intent(out) :: outdegree
        LOGICAL, intent(out) :: weighted
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Dist_graph_neighbors_count

end interface MPI_Dist_graph_neighbors_count


interface MPI_Errhandler_free

    subroutine MPI_Errhandler_free(errhandler, ierror)
        import :: MPI_Errhandler
        type(MPI_Errhandler), intent(inout) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Errhandler_free

end interface MPI_Errhandler_free


interface MPI_Error_class

    subroutine MPI_Error_class(errorcode, errorclass, ierror)
        integer, intent(in) :: errorcode
        integer, intent(out) :: errorclass
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Error_class

end interface MPI_Error_class


interface MPI_Error_string

    subroutine MPI_Error_string(errorcode, string, resultlen, ierror)
        import :: MPI_MAX_ERROR_STRING
        integer, intent(in) :: errorcode
        character(len=MPI_MAX_ERROR_STRING), intent(out) :: string
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Error_string

end interface MPI_Error_string


interface MPI_Exscan

    subroutine MPI_Exscan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Exscan
    
    subroutine MPI_Exscan_c(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Exscan_c

end interface MPI_Exscan


interface MPI_Exscan_init

    subroutine MPI_Exscan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Exscan_init
    
    subroutine MPI_Exscan_init_c(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Exscan_init_c

end interface MPI_Exscan_init


interface MPI_F_sync_reg

    subroutine MPI_F_sync_reg(buf, ierror)
        type(*), dimension(..), intent(inout), asynchronous :: buf
        integer, optional, intent(out) :: ierror
    end subroutine MPI_F_sync_reg

end interface MPI_F_sync_reg


interface MPI_Fetch_and_op

    subroutine MPI_Fetch_and_op(origin_addr, result_addr, datatype, target_rank, target_disp, op, win, &
                                ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        type(*), dimension(..), asynchronous :: result_addr
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Fetch_and_op

end interface MPI_Fetch_and_op


interface MPI_File_call_errhandler

    subroutine MPI_File_call_errhandler(fh, errorcode, ierror)
        import :: MPI_File
        type(MPI_File), intent(in) :: fh
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_call_errhandler

end interface MPI_File_call_errhandler


interface MPI_File_close

    subroutine MPI_File_close(fh, ierror)
        import :: MPI_File
        type(MPI_File), intent(inout) :: fh
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_close

end interface MPI_File_close


interface MPI_File_create_errhandler

    subroutine MPI_File_create_errhandler(file_errhandler_fn, errhandler, ierror)
        import :: MPI_Errhandler
        import :: MPI_File_errhandler_function
        procedure(MPI_File_errhandler_function) :: file_errhandler_fn
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_create_errhandler

end interface MPI_File_create_errhandler


interface MPI_File_delete

    subroutine MPI_File_delete(filename, info, ierror)
        import :: MPI_Info
        character(len=*), intent(in) :: filename
        type(MPI_Info), intent(in) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_delete

end interface MPI_File_delete


interface MPI_File_get_amode

    subroutine MPI_File_get_amode(fh, amode, ierror)
        import :: MPI_File
        type(MPI_File), intent(in) :: fh
        integer, intent(out) :: amode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_amode

end interface MPI_File_get_amode


interface MPI_File_get_atomicity

    subroutine MPI_File_get_atomicity(fh, flag, ierror)
        import :: MPI_File
        type(MPI_File), intent(in) :: fh
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_atomicity

end interface MPI_File_get_atomicity


interface MPI_File_get_byte_offset

    subroutine MPI_File_get_byte_offset(fh, offset, disp, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        integer(kind=MPI_OFFSET_KIND), intent(out) :: disp
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_byte_offset

end interface MPI_File_get_byte_offset


interface MPI_File_get_errhandler

    subroutine MPI_File_get_errhandler(file, errhandler, ierror)
        import :: MPI_File, MPI_Errhandler
        type(MPI_File), intent(in) :: file
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_errhandler

end interface MPI_File_get_errhandler


interface MPI_File_get_group

    subroutine MPI_File_get_group(fh, group, ierror)
        import :: MPI_File, MPI_Group
        type(MPI_File), intent(in) :: fh
        type(MPI_Group), intent(out) :: group
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_group

end interface MPI_File_get_group


interface MPI_File_get_info

    subroutine MPI_File_get_info(fh, info_used, ierror)
        import :: MPI_File, MPI_Info
        type(MPI_File), intent(in) :: fh
        type(MPI_Info), intent(out) :: info_used
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_info

end interface MPI_File_get_info


interface MPI_File_get_position

    subroutine MPI_File_get_position(fh, offset, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(out) :: offset
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_position

end interface MPI_File_get_position


interface MPI_File_get_position_shared

    subroutine MPI_File_get_position_shared(fh, offset, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(out) :: offset
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_position_shared

end interface MPI_File_get_position_shared


interface MPI_File_get_size

    subroutine MPI_File_get_size(fh, size, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_size

end interface MPI_File_get_size


interface MPI_File_get_type_extent

    subroutine MPI_File_get_type_extent(fh, datatype, extent, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_File), intent(in) :: fh
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: extent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_type_extent

end interface MPI_File_get_type_extent


interface MPI_File_get_view

    subroutine MPI_File_get_view(fh, disp, etype, filetype, datarep, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(out) :: disp
        type(MPI_Datatype), intent(out) :: etype
        type(MPI_Datatype), intent(out) :: filetype
        character(len=*), intent(out) :: datarep
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_get_view

end interface MPI_File_get_view


interface MPI_File_iread

    subroutine MPI_File_iread(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread
    
    subroutine MPI_File_iread_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_c

end interface MPI_File_iread


interface MPI_File_iread_all

    subroutine MPI_File_iread_all(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_all
    
    subroutine MPI_File_iread_all_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_all_c

end interface MPI_File_iread_all


interface MPI_File_iread_at

    subroutine MPI_File_iread_at(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_at
    
    subroutine MPI_File_iread_at_c(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_at_c

end interface MPI_File_iread_at


interface MPI_File_iread_at_all

    subroutine MPI_File_iread_at_all(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_at_all
    
    subroutine MPI_File_iread_at_all_c(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_at_all_c

end interface MPI_File_iread_at_all


interface MPI_File_iread_shared

    subroutine MPI_File_iread_shared(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_shared
    
    subroutine MPI_File_iread_shared_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iread_shared_c

end interface MPI_File_iread_shared


interface MPI_File_iwrite

    subroutine MPI_File_iwrite(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite
    
    subroutine MPI_File_iwrite_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_c

end interface MPI_File_iwrite


interface MPI_File_iwrite_all

    subroutine MPI_File_iwrite_all(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_all
    
    subroutine MPI_File_iwrite_all_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_all_c

end interface MPI_File_iwrite_all


interface MPI_File_iwrite_at

    subroutine MPI_File_iwrite_at(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_at
    
    subroutine MPI_File_iwrite_at_c(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_at_c

end interface MPI_File_iwrite_at


interface MPI_File_iwrite_at_all

    subroutine MPI_File_iwrite_at_all(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_at_all
    
    subroutine MPI_File_iwrite_at_all_c(fh, offset, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_at_all_c

end interface MPI_File_iwrite_at_all


interface MPI_File_iwrite_shared

    subroutine MPI_File_iwrite_shared(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_shared
    
    subroutine MPI_File_iwrite_shared_c(fh, buf, count, datatype, request, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Request
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_iwrite_shared_c

end interface MPI_File_iwrite_shared


interface MPI_File_open

    subroutine MPI_File_open(comm, filename, amode, info, fh, ierror)
        import :: MPI_Comm, MPI_Info, MPI_File
        type(MPI_Comm), intent(in) :: comm
        character(len=*), intent(in) :: filename
        integer, intent(in) :: amode
        type(MPI_Info), intent(in) :: info
        type(MPI_File), intent(out) :: fh
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_open

end interface MPI_File_open


interface MPI_File_preallocate

    subroutine MPI_File_preallocate(fh, size, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_preallocate

end interface MPI_File_preallocate


interface MPI_File_read

    subroutine MPI_File_read(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read
    
    subroutine MPI_File_read_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_c

end interface MPI_File_read


interface MPI_File_read_all

    subroutine MPI_File_read_all(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_all
    
    subroutine MPI_File_read_all_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_all_c

end interface MPI_File_read_all


interface MPI_File_read_all_begin

    subroutine MPI_File_read_all_begin(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_all_begin
    
    subroutine MPI_File_read_all_begin_c(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_all_begin_c

end interface MPI_File_read_all_begin


interface MPI_File_read_all_end

    subroutine MPI_File_read_all_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_all_end

end interface MPI_File_read_all_end


interface MPI_File_read_at

    subroutine MPI_File_read_at(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at
    
    subroutine MPI_File_read_at_c(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_c

end interface MPI_File_read_at


interface MPI_File_read_at_all

    subroutine MPI_File_read_at_all(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_all
    
    subroutine MPI_File_read_at_all_c(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_all_c

end interface MPI_File_read_at_all


interface MPI_File_read_at_all_begin

    subroutine MPI_File_read_at_all_begin(fh, offset, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_all_begin
    
    subroutine MPI_File_read_at_all_begin_c(fh, offset, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_all_begin_c

end interface MPI_File_read_at_all_begin


interface MPI_File_read_at_all_end

    subroutine MPI_File_read_at_all_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_at_all_end

end interface MPI_File_read_at_all_end


interface MPI_File_read_ordered

    subroutine MPI_File_read_ordered(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_ordered
    
    subroutine MPI_File_read_ordered_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_ordered_c

end interface MPI_File_read_ordered


interface MPI_File_read_ordered_begin

    subroutine MPI_File_read_ordered_begin(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_ordered_begin
    
    subroutine MPI_File_read_ordered_begin_c(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_ordered_begin_c

end interface MPI_File_read_ordered_begin


interface MPI_File_read_ordered_end

    subroutine MPI_File_read_ordered_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_ordered_end

end interface MPI_File_read_ordered_end


interface MPI_File_read_shared

    subroutine MPI_File_read_shared(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_shared
    
    subroutine MPI_File_read_shared_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_read_shared_c

end interface MPI_File_read_shared


interface MPI_File_seek

    subroutine MPI_File_seek(fh, offset, whence, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        integer, intent(in) :: whence
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_seek

end interface MPI_File_seek


interface MPI_File_seek_shared

    subroutine MPI_File_seek_shared(fh, offset, whence, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        integer, intent(in) :: whence
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_seek_shared

end interface MPI_File_seek_shared


interface MPI_File_set_atomicity

    subroutine MPI_File_set_atomicity(fh, flag, ierror)
        import :: MPI_File
        type(MPI_File), intent(in) :: fh
        LOGICAL, intent(in) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_set_atomicity

end interface MPI_File_set_atomicity


interface MPI_File_set_errhandler

    subroutine MPI_File_set_errhandler(file, errhandler, ierror)
        import :: MPI_File, MPI_Errhandler
        type(MPI_File), intent(in) :: file
        type(MPI_Errhandler), intent(in) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_set_errhandler

end interface MPI_File_set_errhandler


interface MPI_File_set_info

    subroutine MPI_File_set_info(fh, info, ierror)
        import :: MPI_File, MPI_Info
        type(MPI_File), intent(in) :: fh
        type(MPI_Info), intent(in) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_set_info

end interface MPI_File_set_info


interface MPI_File_set_size

    subroutine MPI_File_set_size(fh, size, ierror)
        import :: MPI_File
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_set_size

end interface MPI_File_set_size


interface MPI_File_set_view

    subroutine MPI_File_set_view(fh, disp, etype, filetype, datarep, info, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Info
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: disp
        type(MPI_Datatype), intent(in) :: etype
        type(MPI_Datatype), intent(in) :: filetype
        character(len=*), intent(in) :: datarep
        type(MPI_Info), intent(in) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_set_view

end interface MPI_File_set_view


interface MPI_File_sync

    subroutine MPI_File_sync(fh, ierror)
        import :: MPI_File
        type(MPI_File), intent(in) :: fh
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_sync

end interface MPI_File_sync


interface MPI_File_write

    subroutine MPI_File_write(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write
    
    subroutine MPI_File_write_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_c

end interface MPI_File_write


interface MPI_File_write_all

    subroutine MPI_File_write_all(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_all
    
    subroutine MPI_File_write_all_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_all_c

end interface MPI_File_write_all


interface MPI_File_write_all_begin

    subroutine MPI_File_write_all_begin(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_all_begin
    
    subroutine MPI_File_write_all_begin_c(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_all_begin_c

end interface MPI_File_write_all_begin


interface MPI_File_write_all_end

    subroutine MPI_File_write_all_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_all_end

end interface MPI_File_write_all_end


interface MPI_File_write_at

    subroutine MPI_File_write_at(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at
    
    subroutine MPI_File_write_at_c(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_c

end interface MPI_File_write_at


interface MPI_File_write_at_all

    subroutine MPI_File_write_at_all(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_all
    
    subroutine MPI_File_write_at_all_c(fh, offset, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_all_c

end interface MPI_File_write_at_all


interface MPI_File_write_at_all_begin

    subroutine MPI_File_write_at_all_begin(fh, offset, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_OFFSET_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_all_begin
    
    subroutine MPI_File_write_at_all_begin_c(fh, offset, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_OFFSET_KIND, MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        integer(kind=MPI_OFFSET_KIND), intent(in) :: offset
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_all_begin_c

end interface MPI_File_write_at_all_begin


interface MPI_File_write_at_all_end

    subroutine MPI_File_write_at_all_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_at_all_end

end interface MPI_File_write_at_all_end


interface MPI_File_write_ordered

    subroutine MPI_File_write_ordered(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_ordered
    
    subroutine MPI_File_write_ordered_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_ordered_c

end interface MPI_File_write_ordered


interface MPI_File_write_ordered_begin

    subroutine MPI_File_write_ordered_begin(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_ordered_begin
    
    subroutine MPI_File_write_ordered_begin_c(fh, buf, count, datatype, ierror)
        import :: MPI_File, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_ordered_begin_c

end interface MPI_File_write_ordered_begin


interface MPI_File_write_ordered_end

    subroutine MPI_File_write_ordered_end(fh, buf, status, ierror)
        import :: MPI_File, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in), asynchronous :: buf
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_ordered_end

end interface MPI_File_write_ordered_end


interface MPI_File_write_shared

    subroutine MPI_File_write_shared(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_shared
    
    subroutine MPI_File_write_shared_c(fh, buf, count, datatype, status, ierror)
        import :: MPI_File, MPI_Datatype, MPI_Status
        import :: MPI_COUNT_KIND
        type(MPI_File), intent(in) :: fh
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_File_write_shared_c

end interface MPI_File_write_shared


interface MPI_Finalize

    subroutine MPI_Finalize(ierror)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Finalize

end interface MPI_Finalize


interface MPI_Finalized

    subroutine MPI_Finalized(flag, ierror)
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Finalized

end interface MPI_Finalized


interface MPI_Free_mem

    subroutine MPI_Free_mem(base, ierror)
        type(*), dimension(..), intent(in), asynchronous :: base
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Free_mem

end interface MPI_Free_mem


interface MPI_Gather

    subroutine MPI_Gather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                          ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gather
    
    subroutine MPI_Gather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                            ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gather_c

end interface MPI_Gather


interface MPI_Gather_init

    subroutine MPI_Gather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                               info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gather_init
    
    subroutine MPI_Gather_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                 info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gather_init_c

end interface MPI_Gather_init


interface MPI_Gatherv

    subroutine MPI_Gatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                           comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gatherv
    
    subroutine MPI_Gatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                             comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gatherv_c

end interface MPI_Gatherv


interface MPI_Gatherv_init

    subroutine MPI_Gatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gatherv_init
    
    subroutine MPI_Gatherv_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                  root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Gatherv_init_c

end interface MPI_Gatherv_init


interface MPI_Get

    subroutine MPI_Get(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                       target_count, target_datatype, win, ierror)
        import :: MPI_Datatype, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get
    
    subroutine MPI_Get_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                         target_count, target_datatype, win, ierror)
        import :: MPI_Datatype, MPI_Win
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_c

end interface MPI_Get


interface MPI_Get_accumulate

    subroutine MPI_Get_accumulate(origin_addr, origin_count, origin_datatype, result_addr, result_count, &
                                  result_datatype, target_rank, target_disp, target_count, &
                                  target_datatype, op, win, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        type(*), dimension(..), asynchronous :: result_addr
        integer, intent(in) :: result_count
        type(MPI_Datatype), intent(in) :: result_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_accumulate
    
    subroutine MPI_Get_accumulate_c(origin_addr, origin_count, origin_datatype, result_addr, &
                                    result_count, result_datatype, target_rank, target_disp, &
                                    target_count, target_datatype, op, win, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        type(*), dimension(..), asynchronous :: result_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: result_count
        type(MPI_Datatype), intent(in) :: result_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_accumulate_c

end interface MPI_Get_accumulate


interface MPI_Get_address

    subroutine MPI_Get_address(location, address, ierror)
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: location
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: address
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_address

end interface MPI_Get_address


interface MPI_Get_count

    subroutine MPI_Get_count(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        type(MPI_Status), intent(in), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(out) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_count
    
    subroutine MPI_Get_count_c(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Status), intent(in), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_count_c

end interface MPI_Get_count


interface MPI_Get_elements

    subroutine MPI_Get_elements(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        type(MPI_Status), intent(in), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(out) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_elements
    
    subroutine MPI_Get_elements_c(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Status), intent(in), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_elements_c

end interface MPI_Get_elements


interface MPI_Get_elements_x

    subroutine MPI_Get_elements_x(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Status), intent(in), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_elements_x

end interface MPI_Get_elements_x


interface MPI_Get_hw_resource_info

    subroutine MPI_Get_hw_resource_info(hw_info, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(out) :: hw_info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_hw_resource_info

end interface MPI_Get_hw_resource_info


interface MPI_Get_library_version

    subroutine MPI_Get_library_version(version, resultlen, ierror)
        import :: MPI_MAX_LIBRARY_VERSION_STRING
        character(len=MPI_MAX_LIBRARY_VERSION_STRING), intent(out) :: version
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_library_version

end interface MPI_Get_library_version


interface MPI_Get_processor_name

    subroutine MPI_Get_processor_name(name, resultlen, ierror)
        import :: MPI_MAX_PROCESSOR_NAME
        character(len=MPI_MAX_PROCESSOR_NAME), intent(out) :: name
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_processor_name

end interface MPI_Get_processor_name


interface MPI_Get_version

    subroutine MPI_Get_version(version, subversion, ierror)
        integer, intent(out) :: version
        integer, intent(out) :: subversion
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Get_version

end interface MPI_Get_version


interface MPI_Graph_create

    subroutine MPI_Graph_create(comm_old, nnodes, indx, edges, reorder, comm_graph, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm_old
        integer, intent(in) :: nnodes
        integer, intent(in) :: indx(nnodes)
        integer, intent(in) :: edges(*)
        LOGICAL, intent(in) :: reorder
        type(MPI_Comm), intent(out) :: comm_graph
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graph_create

end interface MPI_Graph_create


interface MPI_Graph_get

    subroutine MPI_Graph_get(comm, maxindex, maxedges, indx, edges, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: maxindex
        integer, intent(in) :: maxedges
        integer, intent(out) :: indx(maxindex)
        integer, intent(out) :: edges(maxedges)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graph_get

end interface MPI_Graph_get


interface MPI_Graph_map

    subroutine MPI_Graph_map(comm, nnodes, indx, edges, newrank, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: nnodes
        integer, intent(in) :: indx(nnodes)
        integer, intent(in) :: edges(*)
        integer, intent(out) :: newrank
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graph_map

end interface MPI_Graph_map


interface MPI_Graph_neighbors

    subroutine MPI_Graph_neighbors(comm, rank, maxneighbors, neighbors, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: rank
        integer, intent(in) :: maxneighbors
        integer, intent(out) :: neighbors(maxneighbors)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graph_neighbors

end interface MPI_Graph_neighbors


interface MPI_Graph_neighbors_count

    subroutine MPI_Graph_neighbors_count(comm, rank, nneighbors, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(in) :: rank
        integer, intent(out) :: nneighbors
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graph_neighbors_count

end interface MPI_Graph_neighbors_count


interface MPI_Graphdims_get

    subroutine MPI_Graphdims_get(comm, nnodes, nedges, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: nnodes
        integer, intent(out) :: nedges
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Graphdims_get

end interface MPI_Graphdims_get


interface MPI_Grequest_complete

    subroutine MPI_Grequest_complete(request, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(in) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Grequest_complete

end interface MPI_Grequest_complete


interface MPI_Grequest_start

    subroutine MPI_Grequest_start(query_fn, free_fn, cancel_fn, extra_state, request, ierror)
        import :: MPI_Request
        import :: MPI_ADDRESS_KIND
        import :: MPI_Grequest_query_function, MPI_Grequest_free_function, MPI_Grequest_cancel_function
        procedure(MPI_Grequest_query_function) :: query_fn
        procedure(MPI_Grequest_free_function) :: free_fn
        procedure(MPI_Grequest_cancel_function) :: cancel_fn
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Grequest_start

end interface MPI_Grequest_start


interface MPI_Group_compare

    subroutine MPI_Group_compare(group1, group2, result, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group1
        type(MPI_Group), intent(in) :: group2
        integer, intent(out) :: result
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_compare

end interface MPI_Group_compare


interface MPI_Group_difference

    subroutine MPI_Group_difference(group1, group2, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group1
        type(MPI_Group), intent(in) :: group2
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_difference

end interface MPI_Group_difference


interface MPI_Group_excl

    subroutine MPI_Group_excl(group, n, ranks, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: n
        integer, intent(in) :: ranks(n)
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_excl

end interface MPI_Group_excl


interface MPI_Group_free

    subroutine MPI_Group_free(group, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(inout) :: group
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_free

end interface MPI_Group_free


interface MPI_Group_from_session_pset

    subroutine MPI_Group_from_session_pset(session, pset_name, newgroup, ierror)
        import :: MPI_Session, MPI_Group
        type(MPI_Session), intent(in) :: session
        character(len=*), intent(in) :: pset_name
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_from_session_pset

end interface MPI_Group_from_session_pset


interface MPI_Group_incl

    subroutine MPI_Group_incl(group, n, ranks, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: n
        integer, intent(in) :: ranks(n)
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_incl

end interface MPI_Group_incl


interface MPI_Group_intersection

    subroutine MPI_Group_intersection(group1, group2, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group1
        type(MPI_Group), intent(in) :: group2
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_intersection

end interface MPI_Group_intersection


interface MPI_Group_range_excl

    subroutine MPI_Group_range_excl(group, n, ranges, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: n
        integer, intent(in) :: ranges(n, 3)
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_range_excl

end interface MPI_Group_range_excl


interface MPI_Group_range_incl

    subroutine MPI_Group_range_incl(group, n, ranges, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: n
        integer, intent(in) :: ranges(n, 3)
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_range_incl

end interface MPI_Group_range_incl


interface MPI_Group_rank

    subroutine MPI_Group_rank(group, rank, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(out) :: rank
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_rank

end interface MPI_Group_rank


interface MPI_Group_size

    subroutine MPI_Group_size(group, size, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_size

end interface MPI_Group_size


interface MPI_Group_translate_ranks

    subroutine MPI_Group_translate_ranks(group1, n, ranks1, group2, ranks2, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group1
        integer, intent(in) :: n
        integer, intent(in) :: ranks1(n)
        type(MPI_Group), intent(in) :: group2
        integer, intent(out) :: ranks2(n)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_translate_ranks

end interface MPI_Group_translate_ranks


interface MPI_Group_union

    subroutine MPI_Group_union(group1, group2, newgroup, ierror)
        import :: MPI_Group
        type(MPI_Group), intent(in) :: group1
        type(MPI_Group), intent(in) :: group2
        type(MPI_Group), intent(out) :: newgroup
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Group_union

end interface MPI_Group_union


interface MPI_Iallgather

    subroutine MPI_Iallgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, request, &
                              ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallgather
    
    subroutine MPI_Iallgather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallgather_c

end interface MPI_Iallgather


interface MPI_Iallgatherv

    subroutine MPI_Iallgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                               comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallgatherv
    
    subroutine MPI_Iallgatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, &
                                 comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallgatherv_c

end interface MPI_Iallgatherv


interface MPI_Iallreduce

    subroutine MPI_Iallreduce(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallreduce
    
    subroutine MPI_Iallreduce_c(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iallreduce_c

end interface MPI_Iallreduce


interface MPI_Ialltoall

    subroutine MPI_Ialltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, request, &
                             ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoall
    
    subroutine MPI_Ialltoall_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                               request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoall_c

end interface MPI_Ialltoall


interface MPI_Ialltoallv

    subroutine MPI_Ialltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                              recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoallv
    
    subroutine MPI_Ialltoallv_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, rdispls, &
                                recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoallv_c

end interface MPI_Ialltoallv


interface MPI_Ialltoallw

    subroutine MPI_Ialltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                              recvtypes, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoallw
    
    subroutine MPI_Ialltoallw_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, rdispls, &
                                recvtypes, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ialltoallw_c

end interface MPI_Ialltoallw


interface MPI_Ibarrier

    subroutine MPI_Ibarrier(comm, request, ierror)
        import :: MPI_Comm, MPI_Request
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ibarrier

end interface MPI_Ibarrier


interface MPI_Ibcast

    subroutine MPI_Ibcast(buffer, count, datatype, root, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(inout), asynchronous :: buffer
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ibcast
    
    subroutine MPI_Ibcast_c(buffer, count, datatype, root, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(inout), asynchronous :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ibcast_c

end interface MPI_Ibcast


interface MPI_Ibsend

    subroutine MPI_Ibsend(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ibsend
    
    subroutine MPI_Ibsend_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ibsend_c

end interface MPI_Ibsend


interface MPI_Iexscan

    subroutine MPI_Iexscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iexscan
    
    subroutine MPI_Iexscan_c(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iexscan_c

end interface MPI_Iexscan


interface MPI_Igather

    subroutine MPI_Igather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                           request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Igather
    
    subroutine MPI_Igather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                             request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Igather_c

end interface MPI_Igather


interface MPI_Igatherv

    subroutine MPI_Igatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                            comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Igatherv
    
    subroutine MPI_Igatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, recvtype, root, &
                              comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Igatherv_c

end interface MPI_Igatherv


interface MPI_Improbe

    subroutine MPI_Improbe(source, tag, comm, flag, message, status, ierror)
        import :: MPI_Comm, MPI_Message, MPI_Status
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        LOGICAL, intent(out) :: flag
        type(MPI_Message), intent(out) :: message
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Improbe

end interface MPI_Improbe


interface MPI_Imrecv

    subroutine MPI_Imrecv(buf, count, datatype, message, request, ierror)
        import :: MPI_Datatype, MPI_Message, MPI_Request
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Message), intent(inout) :: message
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Imrecv
    
    subroutine MPI_Imrecv_c(buf, count, datatype, message, request, ierror)
        import :: MPI_Datatype, MPI_Message, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Message), intent(inout) :: message
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Imrecv_c

end interface MPI_Imrecv


interface MPI_Ineighbor_allgather

    subroutine MPI_Ineighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                       request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_allgather
    
    subroutine MPI_Ineighbor_allgather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                         comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_allgather_c

end interface MPI_Ineighbor_allgather


interface MPI_Ineighbor_allgatherv

    subroutine MPI_Ineighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                        recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_allgatherv
    
    subroutine MPI_Ineighbor_allgatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                          recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_allgatherv_c

end interface MPI_Ineighbor_allgatherv


interface MPI_Ineighbor_alltoall

    subroutine MPI_Ineighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                      request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoall
    
    subroutine MPI_Ineighbor_alltoall_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                        comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoall_c

end interface MPI_Ineighbor_alltoall


interface MPI_Ineighbor_alltoallv

    subroutine MPI_Ineighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                       rdispls, recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoallv
    
    subroutine MPI_Ineighbor_alltoallv_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                         rdispls, recvtype, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoallv_c

end interface MPI_Ineighbor_alltoallv


interface MPI_Ineighbor_alltoallw

    subroutine MPI_Ineighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                       rdispls, recvtypes, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoallw
    
    subroutine MPI_Ineighbor_alltoallw_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                         rdispls, recvtypes, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ineighbor_alltoallw_c

end interface MPI_Ineighbor_alltoallw


interface MPI_Info_create

    subroutine MPI_Info_create(info, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(out) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_create

end interface MPI_Info_create


interface MPI_Info_create_env

    subroutine MPI_Info_create_env(info, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(out) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_create_env

end interface MPI_Info_create_env


interface MPI_Info_delete

    subroutine MPI_Info_delete(info, key, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: key
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_delete

end interface MPI_Info_delete


interface MPI_Info_dup

    subroutine MPI_Info_dup(info, newinfo, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        type(MPI_Info), intent(out) :: newinfo
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_dup

end interface MPI_Info_dup


interface MPI_Info_free

    subroutine MPI_Info_free(info, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(inout) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_free

end interface MPI_Info_free


interface MPI_Info_get

    subroutine MPI_Info_get(info, key, valuelen, value, flag, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: key
        integer, intent(in) :: valuelen
        character(len=valuelen), intent(out) :: value
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_get

end interface MPI_Info_get


interface MPI_Info_get_nkeys

    subroutine MPI_Info_get_nkeys(info, nkeys, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        integer, intent(out) :: nkeys
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_get_nkeys

end interface MPI_Info_get_nkeys


interface MPI_Info_get_nthkey

    subroutine MPI_Info_get_nthkey(info, n, key, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        integer, intent(in) :: n
        character(len=*), intent(out) :: key
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_get_nthkey

end interface MPI_Info_get_nthkey


interface MPI_Info_get_string

    subroutine MPI_Info_get_string(info, key, buflen, value, flag, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: key
        integer, intent(inout) :: buflen
        character(len=*), intent(out) :: value
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_get_string

end interface MPI_Info_get_string


interface MPI_Info_get_valuelen

    subroutine MPI_Info_get_valuelen(info, key, valuelen, flag, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: key
        integer, intent(out) :: valuelen
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_get_valuelen

end interface MPI_Info_get_valuelen


interface MPI_Info_set

    subroutine MPI_Info_set(info, key, value, ierror)
        import :: MPI_Info
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: key
        character(len=*), intent(in) :: value
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Info_set

end interface MPI_Info_set


interface MPI_Init

    subroutine MPI_Init(ierror)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Init

end interface MPI_Init


interface MPI_Init_thread

    subroutine MPI_Init_thread(required, provided, ierror)
        integer, intent(in) :: required
        integer, intent(out) :: provided
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Init_thread

end interface MPI_Init_thread


interface MPI_Initialized

    subroutine MPI_Initialized(flag, ierror)
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Initialized

end interface MPI_Initialized


interface MPI_Intercomm_create

    subroutine MPI_Intercomm_create(local_comm, local_leader, peer_comm, remote_leader, tag, &
                                    newintercomm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: local_comm
        integer, intent(in) :: local_leader
        type(MPI_Comm), intent(in) :: peer_comm
        integer, intent(in) :: remote_leader
        integer, intent(in) :: tag
        type(MPI_Comm), intent(out) :: newintercomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Intercomm_create

end interface MPI_Intercomm_create


interface MPI_Intercomm_create_from_groups

    subroutine MPI_Intercomm_create_from_groups(local_group, local_leader, remote_group, remote_leader, &
                                                stringtag, info, errhandler, newintercomm, ierror)
        import :: MPI_Group, MPI_Info, MPI_Errhandler, MPI_Comm
        type(MPI_Group), intent(in) :: local_group
        integer, intent(in) :: local_leader
        type(MPI_Group), intent(in) :: remote_group
        integer, intent(in) :: remote_leader
        character(len=*), intent(in) :: stringtag
        type(MPI_Info), intent(in) :: info
        type(MPI_Errhandler), intent(in) :: errhandler
        type(MPI_Comm), intent(out) :: newintercomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Intercomm_create_from_groups

end interface MPI_Intercomm_create_from_groups


interface MPI_Intercomm_merge

    subroutine MPI_Intercomm_merge(intercomm, high, newintracomm, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: intercomm
        LOGICAL, intent(in) :: high
        type(MPI_Comm), intent(out) :: newintracomm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Intercomm_merge

end interface MPI_Intercomm_merge


interface MPI_Iprobe

    subroutine MPI_Iprobe(source, tag, comm, flag, status, ierror)
        import :: MPI_Comm, MPI_Status
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iprobe

end interface MPI_Iprobe


interface MPI_Irecv

    subroutine MPI_Irecv(buf, count, datatype, source, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Irecv
    
    subroutine MPI_Irecv_c(buf, count, datatype, source, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Irecv_c

end interface MPI_Irecv


interface MPI_Ireduce

    subroutine MPI_Ireduce(sendbuf, recvbuf, count, datatype, op, root, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce
    
    subroutine MPI_Ireduce_c(sendbuf, recvbuf, count, datatype, op, root, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce_c

end interface MPI_Ireduce


interface MPI_Ireduce_scatter

    subroutine MPI_Ireduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce_scatter
    
    subroutine MPI_Ireduce_scatter_c(sendbuf, recvbuf, recvcounts, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce_scatter_c

end interface MPI_Ireduce_scatter


interface MPI_Ireduce_scatter_block

    subroutine MPI_Ireduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, request, &
                                         ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce_scatter_block
    
    subroutine MPI_Ireduce_scatter_block_c(sendbuf, recvbuf, recvcount, datatype, op, comm, request, &
                                           ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ireduce_scatter_block_c

end interface MPI_Ireduce_scatter_block


interface MPI_Irsend

    subroutine MPI_Irsend(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Irsend
    
    subroutine MPI_Irsend_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Irsend_c

end interface MPI_Irsend


interface MPI_Is_thread_main

    subroutine MPI_Is_thread_main(flag, ierror)
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Is_thread_main

end interface MPI_Is_thread_main


interface MPI_Iscan

    subroutine MPI_Iscan(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscan
    
    subroutine MPI_Iscan_c(sendbuf, recvbuf, count, datatype, op, comm, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscan_c

end interface MPI_Iscan


interface MPI_Iscatter

    subroutine MPI_Iscatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                            request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscatter
    
    subroutine MPI_Iscatter_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                              request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscatter_c

end interface MPI_Iscatter


interface MPI_Iscatterv

    subroutine MPI_Iscatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
                             comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscatterv
    
    subroutine MPI_Iscatterv_c(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, &
                               root, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Iscatterv_c

end interface MPI_Iscatterv


interface MPI_Isend

    subroutine MPI_Isend(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isend
    
    subroutine MPI_Isend_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isend_c

end interface MPI_Isend


interface MPI_Isendrecv

    subroutine MPI_Isendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
                             source, recvtag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isendrecv
    
    subroutine MPI_Isendrecv_c(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, &
                               recvtype, source, recvtag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isendrecv_c

end interface MPI_Isendrecv


interface MPI_Isendrecv_replace

    subroutine MPI_Isendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, &
                                     request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(inout), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isendrecv_replace
    
    subroutine MPI_Isendrecv_replace_c(buf, count, datatype, dest, sendtag, source, recvtag, comm, &
                                       request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(inout), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Isendrecv_replace_c

end interface MPI_Isendrecv_replace


interface MPI_Issend

    subroutine MPI_Issend(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Issend
    
    subroutine MPI_Issend_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Issend_c

end interface MPI_Issend


interface MPI_Lookup_name

    subroutine MPI_Lookup_name(service_name, info, port_name, ierror)
        import :: MPI_Info
        import :: MPI_MAX_PORT_NAME
        character(len=*), intent(in) :: service_name
        type(MPI_Info), intent(in) :: info
        character(len=MPI_MAX_PORT_NAME), intent(out) :: port_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Lookup_name

end interface MPI_Lookup_name


interface MPI_Mprobe

    subroutine MPI_Mprobe(source, tag, comm, message, status, ierror)
        import :: MPI_Comm, MPI_Message, MPI_Status
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Message), intent(out) :: message
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Mprobe

end interface MPI_Mprobe


interface MPI_Mrecv

    subroutine MPI_Mrecv(buf, count, datatype, message, status, ierror)
        import :: MPI_Datatype, MPI_Message, MPI_Status
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Message), intent(inout) :: message
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Mrecv
    
    subroutine MPI_Mrecv_c(buf, count, datatype, message, status, ierror)
        import :: MPI_Datatype, MPI_Message, MPI_Status
        import :: MPI_COUNT_KIND
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Message), intent(inout) :: message
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Mrecv_c

end interface MPI_Mrecv


interface MPI_Neighbor_allgather

    subroutine MPI_Neighbor_allgather(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                      ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgather
    
    subroutine MPI_Neighbor_allgather_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                        comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgather_c

end interface MPI_Neighbor_allgather


interface MPI_Neighbor_allgather_init

    subroutine MPI_Neighbor_allgather_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                           comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgather_init
    
    subroutine MPI_Neighbor_allgather_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                             comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgather_init_c

end interface MPI_Neighbor_allgather_init


interface MPI_Neighbor_allgatherv

    subroutine MPI_Neighbor_allgatherv(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                       recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgatherv
    
    subroutine MPI_Neighbor_allgatherv_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                         recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgatherv_c

end interface MPI_Neighbor_allgatherv


interface MPI_Neighbor_allgatherv_init

    subroutine MPI_Neighbor_allgatherv_init(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                            recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgatherv_init
    
    subroutine MPI_Neighbor_allgatherv_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcounts, displs, &
                                              recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_allgatherv_init_c

end interface MPI_Neighbor_allgatherv_init


interface MPI_Neighbor_alltoall

    subroutine MPI_Neighbor_alltoall(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                     ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoall
    
    subroutine MPI_Neighbor_alltoall_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, comm, &
                                       ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoall_c

end interface MPI_Neighbor_alltoall


interface MPI_Neighbor_alltoall_init

    subroutine MPI_Neighbor_alltoall_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                          comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoall_init
    
    subroutine MPI_Neighbor_alltoall_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, &
                                            comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoall_init_c

end interface MPI_Neighbor_alltoall_init


interface MPI_Neighbor_alltoallv

    subroutine MPI_Neighbor_alltoallv(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                      rdispls, recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcounts(*)
        integer, intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer, intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallv
    
    subroutine MPI_Neighbor_alltoallv_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                        rdispls, recvtype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallv_c

end interface MPI_Neighbor_alltoallv


interface MPI_Neighbor_alltoallv_init

    subroutine MPI_Neighbor_alltoallv_init(sendbuf, sendcounts, sdispls, sendtype, recvbuf, recvcounts, &
                                           rdispls, recvtype, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer, intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallv_init
    
    subroutine MPI_Neighbor_alltoallv_init_c(sendbuf, sendcounts, sdispls, sendtype, recvbuf, &
                                             recvcounts, rdispls, recvtype, comm, info, request, &
                                             ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtype
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallv_init_c

end interface MPI_Neighbor_alltoallv_init


interface MPI_Neighbor_alltoallw

    subroutine MPI_Neighbor_alltoallw(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                      rdispls, recvtypes, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtypes(*)
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallw
    
    subroutine MPI_Neighbor_alltoallw_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                        rdispls, recvtypes, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: sdispls(*)
        type(MPI_Datatype), intent(in) :: sendtypes(*)
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: rdispls(*)
        type(MPI_Datatype), intent(in) :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallw_c

end interface MPI_Neighbor_alltoallw


interface MPI_Neighbor_alltoallw_init

    subroutine MPI_Neighbor_alltoallw_init(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, recvcounts, &
                                           rdispls, recvtypes, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallw_init
    
    subroutine MPI_Neighbor_alltoallw_init_c(sendbuf, sendcounts, sdispls, sendtypes, recvbuf, &
                                             recvcounts, rdispls, recvtypes, comm, info, request, &
                                             ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: sdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: sendtypes(*)
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: rdispls(*)
        type(MPI_Datatype), intent(in), asynchronous :: recvtypes(*)
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Neighbor_alltoallw_init_c

end interface MPI_Neighbor_alltoallw_init


interface MPI_Op_commutative

    subroutine MPI_Op_commutative(op, commute, ierror)
        import :: MPI_Op
        type(MPI_Op), intent(in) :: op
        LOGICAL, intent(out) :: commute
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Op_commutative

end interface MPI_Op_commutative


interface MPI_Op_create

    subroutine MPI_Op_create(user_fn, commute, op, ierror)
        import :: MPI_Op
        import :: MPI_User_function
        procedure(MPI_User_function) :: user_fn
        LOGICAL, intent(in) :: commute
        type(MPI_Op), intent(out) :: op
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Op_create

end interface MPI_Op_create


interface MPI_Op_create_c
    subroutine MPI_Op_create_c(user_fn, commute, op, ierror)
        import :: MPI_Op
        import :: MPI_User_function_c
        procedure(MPI_User_function_c) :: user_fn
        LOGICAL, intent(in) :: commute
        type(MPI_Op), intent(out) :: op
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Op_create_c
end interface MPI_Op_create_c


interface MPI_Op_free

    subroutine MPI_Op_free(op, ierror)
        import :: MPI_Op
        type(MPI_Op), intent(inout) :: op
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Op_free

end interface MPI_Op_free


interface MPI_Open_port

    subroutine MPI_Open_port(info, port_name, ierror)
        import :: MPI_Info
        import :: MPI_MAX_PORT_NAME
        type(MPI_Info), intent(in) :: info
        character(len=MPI_MAX_PORT_NAME), intent(out) :: port_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Open_port

end interface MPI_Open_port


interface MPI_Pack

    subroutine MPI_Pack(inbuf, incount, datatype, outbuf, outsize, position, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: inbuf
        integer, intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(*), dimension(..) :: outbuf
        integer, intent(in) :: outsize
        integer, intent(inout) :: position
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack
    
    subroutine MPI_Pack_c(inbuf, incount, datatype, outbuf, outsize, position, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: inbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(*), dimension(..) :: outbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: outsize
        integer(kind=MPI_COUNT_KIND), intent(inout) :: position
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_c

end interface MPI_Pack


interface MPI_Pack_external

    subroutine MPI_Pack_external(datarep, inbuf, incount, datatype, outbuf, outsize, position, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        character(len=*), intent(in) :: datarep
        type(*), dimension(..), intent(in) :: inbuf
        integer, intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(*), dimension(..) :: outbuf
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: outsize
        integer(kind=MPI_ADDRESS_KIND), intent(inout) :: position
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_external
    
    subroutine MPI_Pack_external_c(datarep, inbuf, incount, datatype, outbuf, outsize, position, &
                                   ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        character(len=*), intent(in) :: datarep
        type(*), dimension(..), intent(in) :: inbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(*), dimension(..) :: outbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: outsize
        integer(kind=MPI_COUNT_KIND), intent(inout) :: position
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_external_c

end interface MPI_Pack_external


interface MPI_Pack_external_size

    subroutine MPI_Pack_external_size(datarep, incount, datatype, size, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        character(len=*), intent(in) :: datarep
        integer, intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_external_size
    
    subroutine MPI_Pack_external_size_c(datarep, incount, datatype, size, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        character(len=*), intent(in) :: datarep
        integer(kind=MPI_COUNT_KIND), intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_external_size_c

end interface MPI_Pack_external_size


interface MPI_Pack_size

    subroutine MPI_Pack_size(incount, datatype, comm, size, ierror)
        import :: MPI_Datatype, MPI_Comm
        integer, intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_size
    
    subroutine MPI_Pack_size_c(incount, datatype, comm, size, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: incount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Comm), intent(in) :: comm
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pack_size_c

end interface MPI_Pack_size


interface MPI_Parrived

    subroutine MPI_Parrived(request, partition, flag, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(in) :: request
        integer, intent(in) :: partition
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Parrived

end interface MPI_Parrived


interface MPI_Pcontrol

    subroutine MPI_Pcontrol(level, ierror)
        integer, intent(in) :: level
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pcontrol

end interface MPI_Pcontrol


interface MPI_Pready

    subroutine MPI_Pready(partition, request, ierror)
        import :: MPI_Request
        integer, intent(in) :: partition
        type(MPI_Request), intent(in) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pready

end interface MPI_Pready


interface MPI_Pready_list

    subroutine MPI_Pready_list(length, array_of_partitions, request, ierror)
        import :: MPI_Request
        integer, intent(in) :: length
        integer, intent(in) :: array_of_partitions(length)
        type(MPI_Request), intent(in) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pready_list

end interface MPI_Pready_list


interface MPI_Pready_range

    subroutine MPI_Pready_range(partition_low, partition_high, request, ierror)
        import :: MPI_Request
        integer, intent(in) :: partition_low
        integer, intent(in) :: partition_high
        type(MPI_Request), intent(in) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Pready_range

end interface MPI_Pready_range


interface MPI_Precv_init

    subroutine MPI_Precv_init(buf, partitions, count, datatype, dest, tag, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: partitions
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Precv_init

end interface MPI_Precv_init


interface MPI_Probe

    subroutine MPI_Probe(source, tag, comm, status, ierror)
        import :: MPI_Comm, MPI_Status
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Probe

end interface MPI_Probe


interface MPI_Psend_init

    subroutine MPI_Psend_init(buf, partitions, count, datatype, dest, tag, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: partitions
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Psend_init

end interface MPI_Psend_init


interface MPI_Publish_name

    subroutine MPI_Publish_name(service_name, info, port_name, ierror)
        import :: MPI_Info
        character(len=*), intent(in) :: service_name
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: port_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Publish_name

end interface MPI_Publish_name


interface MPI_Put

    subroutine MPI_Put(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                       target_count, target_datatype, win, ierror)
        import :: MPI_Datatype, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Put
    
    subroutine MPI_Put_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                         target_count, target_datatype, win, ierror)
        import :: MPI_Datatype, MPI_Win
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Put_c

end interface MPI_Put


interface MPI_Query_thread

    subroutine MPI_Query_thread(provided, ierror)
        integer, intent(out) :: provided
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Query_thread

end interface MPI_Query_thread


interface MPI_Raccumulate

    subroutine MPI_Raccumulate(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                               target_count, target_datatype, op, win, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Raccumulate
    
    subroutine MPI_Raccumulate_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                                 target_count, target_datatype, op, win, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Raccumulate_c

end interface MPI_Raccumulate


interface MPI_Recv

    subroutine MPI_Recv(buf, count, datatype, source, tag, comm, status, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        type(*), dimension(..) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Recv
    
    subroutine MPI_Recv_c(buf, count, datatype, source, tag, comm, status, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        import :: MPI_COUNT_KIND
        type(*), dimension(..) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Recv_c

end interface MPI_Recv


interface MPI_Recv_init

    subroutine MPI_Recv_init(buf, count, datatype, source, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Recv_init
    
    subroutine MPI_Recv_init_c(buf, count, datatype, source, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: source
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Recv_init_c

end interface MPI_Recv_init


interface MPI_Reduce

    subroutine MPI_Reduce(sendbuf, recvbuf, count, datatype, op, root, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce
    
    subroutine MPI_Reduce_c(sendbuf, recvbuf, count, datatype, op, root, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_c

end interface MPI_Reduce


interface MPI_Reduce_init

    subroutine MPI_Reduce_init(sendbuf, recvbuf, count, datatype, op, root, comm, info, request, &
                               ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_init
    
    subroutine MPI_Reduce_init_c(sendbuf, recvbuf, count, datatype, op, root, comm, info, request, &
                                 ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_init_c

end interface MPI_Reduce_init


interface MPI_Reduce_local

    subroutine MPI_Reduce_local(inbuf, inoutbuf, count, datatype, op, ierror)
        import :: MPI_Datatype, MPI_Op
        type(*), dimension(..), intent(in) :: inbuf
        type(*), dimension(..), intent(inout) :: inoutbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_local
    
    subroutine MPI_Reduce_local_c(inbuf, inoutbuf, count, datatype, op, ierror)
        import :: MPI_Datatype, MPI_Op
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: inbuf
        type(*), dimension(..), intent(inout) :: inoutbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_local_c

end interface MPI_Reduce_local


interface MPI_Reduce_scatter

    subroutine MPI_Reduce_scatter(sendbuf, recvbuf, recvcounts, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter
    
    subroutine MPI_Reduce_scatter_c(sendbuf, recvbuf, recvcounts, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_c

end interface MPI_Reduce_scatter


interface MPI_Reduce_scatter_block

    subroutine MPI_Reduce_scatter_block(sendbuf, recvbuf, recvcount, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_block
    
    subroutine MPI_Reduce_scatter_block_c(sendbuf, recvbuf, recvcount, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_block_c

end interface MPI_Reduce_scatter_block


interface MPI_Reduce_scatter_block_init

    subroutine MPI_Reduce_scatter_block_init(sendbuf, recvbuf, recvcount, datatype, op, comm, info, &
                                             request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_block_init
    
    subroutine MPI_Reduce_scatter_block_init_c(sendbuf, recvbuf, recvcount, datatype, op, comm, info, &
                                               request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_block_init_c

end interface MPI_Reduce_scatter_block_init


interface MPI_Reduce_scatter_init

    subroutine MPI_Reduce_scatter_init(sendbuf, recvbuf, recvcounts, datatype, op, comm, info, request, &
                                       ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in), asynchronous :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_init
    
    subroutine MPI_Reduce_scatter_init_c(sendbuf, recvbuf, recvcounts, datatype, op, comm, info, &
                                         request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: recvcounts(*)
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Reduce_scatter_init_c

end interface MPI_Reduce_scatter_init


interface MPI_Register_datarep

    subroutine MPI_Register_datarep(datarep, read_conversion_fn, write_conversion_fn, &
                                    dtype_file_extent_fn, extra_state, ierror)
        import :: MPI_ADDRESS_KIND
        import :: MPI_Datarep_conversion_function, MPI_Datarep_extent_function
        character(len=*), intent(in) :: datarep
        procedure(MPI_Datarep_conversion_function) :: read_conversion_fn
        procedure(MPI_Datarep_conversion_function) :: write_conversion_fn
        procedure(MPI_Datarep_extent_function) :: dtype_file_extent_fn
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Register_datarep

end interface MPI_Register_datarep


interface MPI_Register_datarep_c
    subroutine MPI_Register_datarep_c(datarep, read_conversion_fn, write_conversion_fn, &
                                      dtype_file_extent_fn, extra_state, ierror)
        import :: MPI_ADDRESS_KIND
        import :: MPI_Datarep_conversion_function_c, MPI_Datarep_extent_function
        character(len=*), intent(in) :: datarep
        procedure(MPI_Datarep_conversion_function_c) :: read_conversion_fn
        procedure(MPI_Datarep_conversion_function_c) :: write_conversion_fn
        procedure(MPI_Datarep_extent_function) :: dtype_file_extent_fn
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Register_datarep_c
end interface MPI_Register_datarep_c


interface MPI_Remove_error_class

    subroutine MPI_Remove_error_class(errorclass, ierror)
        integer, intent(in) :: errorclass
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Remove_error_class

end interface MPI_Remove_error_class


interface MPI_Remove_error_code

    subroutine MPI_Remove_error_code(errorcode, ierror)
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Remove_error_code

end interface MPI_Remove_error_code


interface MPI_Remove_error_string

    subroutine MPI_Remove_error_string(errorcode, ierror)
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Remove_error_string

end interface MPI_Remove_error_string


interface MPI_Request_free

    subroutine MPI_Request_free(request, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(inout) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Request_free

end interface MPI_Request_free


interface MPI_Request_get_status

    subroutine MPI_Request_get_status(request, flag, status, ierror)
        import :: MPI_Request, MPI_Status
        type(MPI_Request), intent(in) :: request
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Request_get_status

end interface MPI_Request_get_status


interface MPI_Request_get_status_all

    subroutine MPI_Request_get_status_all(count, array_of_requests, flag, array_of_statuses, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(in) :: array_of_requests(count)
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Request_get_status_all

end interface MPI_Request_get_status_all


interface MPI_Request_get_status_any

    subroutine MPI_Request_get_status_any(count, array_of_requests, indx, flag, status, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(in) :: array_of_requests(count)
        integer, intent(out) :: indx
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Request_get_status_any

end interface MPI_Request_get_status_any


interface MPI_Request_get_status_some

    subroutine MPI_Request_get_status_some(incount, array_of_requests, outcount, array_of_indices, &
                                           array_of_statuses, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: incount
        type(MPI_Request), intent(in) :: array_of_requests(incount)
        integer, intent(out) :: outcount
        integer, intent(out) :: array_of_indices(*)
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Request_get_status_some

end interface MPI_Request_get_status_some


interface MPI_Rget

    subroutine MPI_Rget(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                        target_count, target_datatype, win, request, ierror)
        import :: MPI_Datatype, MPI_Win, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rget
    
    subroutine MPI_Rget_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                          target_count, target_datatype, win, request, ierror)
        import :: MPI_Datatype, MPI_Win, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rget_c

end interface MPI_Rget


interface MPI_Rget_accumulate

    subroutine MPI_Rget_accumulate(origin_addr, origin_count, origin_datatype, result_addr, &
                                   result_count, result_datatype, target_rank, target_disp, &
                                   target_count, target_datatype, op, win, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        type(*), dimension(..), asynchronous :: result_addr
        integer, intent(in) :: result_count
        type(MPI_Datatype), intent(in) :: result_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rget_accumulate
    
    subroutine MPI_Rget_accumulate_c(origin_addr, origin_count, origin_datatype, result_addr, &
                                     result_count, result_datatype, target_rank, target_disp, &
                                     target_count, target_datatype, op, win, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Win, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        type(*), dimension(..), asynchronous :: result_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: result_count
        type(MPI_Datatype), intent(in) :: result_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rget_accumulate_c

end interface MPI_Rget_accumulate


interface MPI_Rput

    subroutine MPI_Rput(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                        target_count, target_datatype, win, request, ierror)
        import :: MPI_Datatype, MPI_Win, MPI_Request
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer, intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer, intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rput
    
    subroutine MPI_Rput_c(origin_addr, origin_count, origin_datatype, target_rank, target_disp, &
                          target_count, target_datatype, win, request, ierror)
        import :: MPI_Datatype, MPI_Win, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: origin_addr
        integer(kind=MPI_COUNT_KIND), intent(in) :: origin_count
        type(MPI_Datatype), intent(in) :: origin_datatype
        integer, intent(in) :: target_rank
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: target_disp
        integer(kind=MPI_COUNT_KIND), intent(in) :: target_count
        type(MPI_Datatype), intent(in) :: target_datatype
        type(MPI_Win), intent(in) :: win
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rput_c

end interface MPI_Rput


interface MPI_Rsend

    subroutine MPI_Rsend(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rsend
    
    subroutine MPI_Rsend_c(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rsend_c

end interface MPI_Rsend


interface MPI_Rsend_init

    subroutine MPI_Rsend_init(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rsend_init
    
    subroutine MPI_Rsend_init_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Rsend_init_c

end interface MPI_Rsend_init


interface MPI_Scan

    subroutine MPI_Scan(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scan
    
    subroutine MPI_Scan_c(sendbuf, recvbuf, count, datatype, op, comm, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scan_c

end interface MPI_Scan


interface MPI_Scan_init

    subroutine MPI_Scan_init(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scan_init
    
    subroutine MPI_Scan_init_c(sendbuf, recvbuf, count, datatype, op, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Op, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Op), intent(in) :: op
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scan_init_c

end interface MPI_Scan_init


interface MPI_Scatter

    subroutine MPI_Scatter(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                           ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatter
    
    subroutine MPI_Scatter_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                             ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatter_c

end interface MPI_Scatter


interface MPI_Scatter_init

    subroutine MPI_Scatter_init(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, comm, &
                                info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatter_init
    
    subroutine MPI_Scatter_init_c(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype, root, &
                                  comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatter_init_c

end interface MPI_Scatter_init


interface MPI_Scatterv

    subroutine MPI_Scatterv(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
                            comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcounts(*)
        integer, intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatterv
    
    subroutine MPI_Scatterv_c(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, root, &
                              comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatterv_c

end interface MPI_Scatterv


interface MPI_Scatterv_init

    subroutine MPI_Scatterv_init(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, &
                                 root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer, intent(in), asynchronous :: sendcounts(*)
        integer, intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatterv_init
    
    subroutine MPI_Scatterv_init_c(sendbuf, sendcounts, displs, sendtype, recvbuf, recvcount, recvtype, &
                                   root, comm, info, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Info, MPI_Request
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(*), dimension(..), intent(in), asynchronous :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in), asynchronous :: sendcounts(*)
        integer(kind=MPI_ADDRESS_KIND), intent(in), asynchronous :: displs(*)
        type(MPI_Datatype), intent(in) :: sendtype
        type(*), dimension(..), asynchronous :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: root
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Info), intent(in) :: info
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Scatterv_init_c

end interface MPI_Scatterv_init


interface MPI_Send

    subroutine MPI_Send(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Send
    
    subroutine MPI_Send_c(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Send_c

end interface MPI_Send


interface MPI_Send_init

    subroutine MPI_Send_init(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Send_init
    
    subroutine MPI_Send_init_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Send_init_c

end interface MPI_Send_init


interface MPI_Sendrecv

    subroutine MPI_Sendrecv(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
                            source, recvtag, comm, status, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        type(*), dimension(..), intent(in) :: sendbuf
        integer, intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        type(*), dimension(..) :: recvbuf
        integer, intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Sendrecv
    
    subroutine MPI_Sendrecv_c(sendbuf, sendcount, sendtype, dest, sendtag, recvbuf, recvcount, recvtype, &
                              source, recvtag, comm, status, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: sendbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: sendcount
        type(MPI_Datatype), intent(in) :: sendtype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        type(*), dimension(..) :: recvbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: recvcount
        type(MPI_Datatype), intent(in) :: recvtype
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Sendrecv_c

end interface MPI_Sendrecv


interface MPI_Sendrecv_replace

    subroutine MPI_Sendrecv_replace(buf, count, datatype, dest, sendtag, source, recvtag, comm, status, &
                                    ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        type(*), dimension(..), intent(inout) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Sendrecv_replace
    
    subroutine MPI_Sendrecv_replace_c(buf, count, datatype, dest, sendtag, source, recvtag, comm, &
                                      status, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Status
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(inout) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: sendtag
        integer, intent(in) :: source
        integer, intent(in) :: recvtag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Sendrecv_replace_c

end interface MPI_Sendrecv_replace


interface MPI_Session_attach_buffer

    subroutine MPI_Session_attach_buffer(session, buffer, size, ierror)
        import :: MPI_Session
        type(MPI_Session), intent(in) :: session
        type(*), dimension(..), asynchronous :: buffer
        integer, intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_attach_buffer
    
    subroutine MPI_Session_attach_buffer_c(session, buffer, size, ierror)
        import :: MPI_Session
        import :: MPI_COUNT_KIND
        type(MPI_Session), intent(in) :: session
        type(*), dimension(..), asynchronous :: buffer
        integer(kind=MPI_COUNT_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_attach_buffer_c

end interface MPI_Session_attach_buffer


interface MPI_Session_call_errhandler

    subroutine MPI_Session_call_errhandler(session, errorcode, ierror)
        import :: MPI_Session
        type(MPI_Session), intent(in) :: session
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_call_errhandler

end interface MPI_Session_call_errhandler


interface MPI_Session_create_errhandler

    subroutine MPI_Session_create_errhandler(session_errhandler_fn, errhandler, ierror)
        import :: MPI_Errhandler
        import :: MPI_Session_errhandler_function
        procedure(MPI_Session_errhandler_function) :: session_errhandler_fn
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_create_errhandler

end interface MPI_Session_create_errhandler


interface MPI_Session_detach_buffer

    subroutine MPI_Session_detach_buffer(session, buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Session
        type(MPI_Session), intent(in) :: session
        type(c_ptr), intent(out) :: buffer_addr
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_detach_buffer
    
    subroutine MPI_Session_detach_buffer_c(session, buffer_addr, size, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Session
        import :: MPI_COUNT_KIND
        type(MPI_Session), intent(in) :: session
        type(c_ptr), intent(out) :: buffer_addr
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_detach_buffer_c

end interface MPI_Session_detach_buffer


interface MPI_Session_finalize

    subroutine MPI_Session_finalize(session, ierror)
        import :: MPI_Session
        type(MPI_Session), intent(inout) :: session
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_finalize

end interface MPI_Session_finalize


interface MPI_Session_flush_buffer

    subroutine MPI_Session_flush_buffer(session, ierror)
        import :: MPI_Session
        type(MPI_Session), intent(in) :: session
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_flush_buffer

end interface MPI_Session_flush_buffer


interface MPI_Session_get_errhandler

    subroutine MPI_Session_get_errhandler(session, errhandler, ierror)
        import :: MPI_Session, MPI_Errhandler
        type(MPI_Session), intent(in) :: session
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_get_errhandler

end interface MPI_Session_get_errhandler


interface MPI_Session_get_info

    subroutine MPI_Session_get_info(session, info_used, ierror)
        import :: MPI_Session, MPI_Info
        type(MPI_Session), intent(in) :: session
        type(MPI_Info), intent(out) :: info_used
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_get_info

end interface MPI_Session_get_info


interface MPI_Session_get_nth_pset

    subroutine MPI_Session_get_nth_pset(session, info, n, pset_len, pset_name, ierror)
        import :: MPI_Session, MPI_Info
        type(MPI_Session), intent(in) :: session
        type(MPI_Info), intent(in) :: info
        integer, intent(in) :: n
        integer, intent(inout) :: pset_len
        character(len=*), intent(out) :: pset_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_get_nth_pset

end interface MPI_Session_get_nth_pset


interface MPI_Session_get_num_psets

    subroutine MPI_Session_get_num_psets(session, info, npset_names, ierror)
        import :: MPI_Session, MPI_Info
        type(MPI_Session), intent(in) :: session
        type(MPI_Info), intent(in) :: info
        integer, intent(out) :: npset_names
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_get_num_psets

end interface MPI_Session_get_num_psets


interface MPI_Session_get_pset_info

    subroutine MPI_Session_get_pset_info(session, pset_name, info, ierror)
        import :: MPI_Session, MPI_Info
        type(MPI_Session), intent(in) :: session
        character(len=*), intent(in) :: pset_name
        type(MPI_Info), intent(out) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_get_pset_info

end interface MPI_Session_get_pset_info


interface MPI_Session_iflush_buffer

    subroutine MPI_Session_iflush_buffer(session, request, ierror)
        import :: MPI_Session, MPI_Request
        type(MPI_Session), intent(in) :: session
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_iflush_buffer

end interface MPI_Session_iflush_buffer


interface MPI_Session_init

    subroutine MPI_Session_init(info, errhandler, session, ierror)
        import :: MPI_Info, MPI_Errhandler, MPI_Session
        type(MPI_Info), intent(in) :: info
        type(MPI_Errhandler), intent(in) :: errhandler
        type(MPI_Session), intent(out) :: session
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_init

end interface MPI_Session_init


interface MPI_Session_set_errhandler

    subroutine MPI_Session_set_errhandler(session, errhandler, ierror)
        import :: MPI_Session, MPI_Errhandler
        type(MPI_Session), intent(in) :: session
        type(MPI_Errhandler), intent(in) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Session_set_errhandler

end interface MPI_Session_set_errhandler


interface MPI_Ssend

    subroutine MPI_Ssend(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ssend
    
    subroutine MPI_Ssend_c(buf, count, datatype, dest, tag, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ssend_c

end interface MPI_Ssend


interface MPI_Ssend_init

    subroutine MPI_Ssend_init(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ssend_init
    
    subroutine MPI_Ssend_init_c(buf, count, datatype, dest, tag, comm, request, ierror)
        import :: MPI_Datatype, MPI_Comm, MPI_Request
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in), asynchronous :: buf
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: dest
        integer, intent(in) :: tag
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Request), intent(out) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Ssend_init_c

end interface MPI_Ssend_init


interface MPI_Start

    subroutine MPI_Start(request, ierror)
        import :: MPI_Request
        type(MPI_Request), intent(inout) :: request
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Start

end interface MPI_Start


interface MPI_Startall

    subroutine MPI_Startall(count, array_of_requests, ierror)
        import :: MPI_Request
        integer, intent(in) :: count
        type(MPI_Request), intent(inout) :: array_of_requests(count)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Startall

end interface MPI_Startall


interface MPI_Status_get_error

    subroutine MPI_Status_get_error(status, error, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(in), target :: status
        integer, intent(out) :: error
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_get_error

end interface MPI_Status_get_error


interface MPI_Status_get_source

    subroutine MPI_Status_get_source(status, source, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(in), target :: status
        integer, intent(out) :: source
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_get_source

end interface MPI_Status_get_source


interface MPI_Status_get_tag

    subroutine MPI_Status_get_tag(status, tag, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(in), target :: status
        integer, intent(out) :: tag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_get_tag

end interface MPI_Status_get_tag


interface MPI_Status_set_cancelled

    subroutine MPI_Status_set_cancelled(status, flag, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(inout), target :: status
        LOGICAL, intent(in) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_cancelled

end interface MPI_Status_set_cancelled


interface MPI_Status_set_elements

    subroutine MPI_Status_set_elements(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        type(MPI_Status), intent(inout), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_elements
    
    subroutine MPI_Status_set_elements_c(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Status), intent(inout), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_elements_c

end interface MPI_Status_set_elements


interface MPI_Status_set_elements_x

    subroutine MPI_Status_set_elements_x(status, datatype, count, ierror)
        import :: MPI_Status, MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Status), intent(inout), target :: status
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_elements_x

end interface MPI_Status_set_elements_x


interface MPI_Status_set_error

    subroutine MPI_Status_set_error(status, error, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(inout), target :: status
        integer, intent(in) :: error
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_error

end interface MPI_Status_set_error


interface MPI_Status_set_source

    subroutine MPI_Status_set_source(status, source, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(inout), target :: status
        integer, intent(in) :: source
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_source

end interface MPI_Status_set_source


interface MPI_Status_set_tag

    subroutine MPI_Status_set_tag(status, tag, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(inout), target :: status
        integer, intent(in) :: tag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Status_set_tag

end interface MPI_Status_set_tag


interface MPI_Test

    subroutine MPI_Test(request, flag, status, ierror)
        import :: MPI_Request, MPI_Status
        type(MPI_Request), intent(inout) :: request
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Test

end interface MPI_Test


interface MPI_Test_cancelled

    subroutine MPI_Test_cancelled(status, flag, ierror)
        import :: MPI_Status
        type(MPI_Status), intent(in), target :: status
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Test_cancelled

end interface MPI_Test_cancelled


interface MPI_Testall

    subroutine MPI_Testall(count, array_of_requests, flag, array_of_statuses, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(inout) :: array_of_requests(count)
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Testall

end interface MPI_Testall


interface MPI_Testany

    subroutine MPI_Testany(count, array_of_requests, indx, flag, status, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(inout) :: array_of_requests(count)
        integer, intent(out) :: indx
        LOGICAL, intent(out) :: flag
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Testany

end interface MPI_Testany


interface MPI_Testsome

    subroutine MPI_Testsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                            ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: incount
        type(MPI_Request), intent(inout) :: array_of_requests(incount)
        integer, intent(out) :: outcount
        integer, intent(out) :: array_of_indices(*)
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Testsome

end interface MPI_Testsome


interface MPI_Topo_test

    subroutine MPI_Topo_test(comm, status, ierror)
        import :: MPI_Comm
        type(MPI_Comm), intent(in) :: comm
        integer, intent(out) :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Topo_test

end interface MPI_Topo_test


interface MPI_Type_commit

    subroutine MPI_Type_commit(datatype, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(inout) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_commit

end interface MPI_Type_commit


interface MPI_Type_contiguous

    subroutine MPI_Type_contiguous(count, oldtype, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: count
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_contiguous
    
    subroutine MPI_Type_contiguous_c(count, oldtype, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_contiguous_c

end interface MPI_Type_contiguous


interface MPI_Type_create_darray

    subroutine MPI_Type_create_darray(size, rank, ndims, array_of_gsizes, array_of_distribs, &
                                      array_of_dargs, array_of_psizes, order, oldtype, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: size
        integer, intent(in) :: rank
        integer, intent(in) :: ndims
        integer, intent(in) :: array_of_gsizes(ndims)
        integer, intent(in) :: array_of_distribs(ndims)
        integer, intent(in) :: array_of_dargs(ndims)
        integer, intent(in) :: array_of_psizes(ndims)
        integer, intent(in) :: order
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_darray
    
    subroutine MPI_Type_create_darray_c(size, rank, ndims, array_of_gsizes, array_of_distribs, &
                                        array_of_dargs, array_of_psizes, order, oldtype, newtype, &
                                        ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer, intent(in) :: size
        integer, intent(in) :: rank
        integer, intent(in) :: ndims
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_gsizes(ndims)
        integer, intent(in) :: array_of_distribs(ndims)
        integer, intent(in) :: array_of_dargs(ndims)
        integer, intent(in) :: array_of_psizes(ndims)
        integer, intent(in) :: order
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_darray_c

end interface MPI_Type_create_darray


interface MPI_Type_create_f90_complex

    subroutine MPI_Type_create_f90_complex(p, r, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: p
        integer, intent(in) :: r
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_f90_complex

end interface MPI_Type_create_f90_complex


interface MPI_Type_create_f90_integer

    subroutine MPI_Type_create_f90_integer(r, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: r
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_f90_integer

end interface MPI_Type_create_f90_integer


interface MPI_Type_create_f90_real

    subroutine MPI_Type_create_f90_real(p, r, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: p
        integer, intent(in) :: r
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_f90_real

end interface MPI_Type_create_f90_real


interface MPI_Type_create_hindexed

    subroutine MPI_Type_create_hindexed(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                        newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        integer, intent(in) :: count
        integer, intent(in) :: array_of_blocklengths(count)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hindexed
    
    subroutine MPI_Type_create_hindexed_c(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                          newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_blocklengths(count)
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hindexed_c

end interface MPI_Type_create_hindexed


interface MPI_Type_create_hindexed_block

    subroutine MPI_Type_create_hindexed_block(count, blocklength, array_of_displacements, oldtype, &
                                              newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        integer, intent(in) :: count
        integer, intent(in) :: blocklength
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hindexed_block
    
    subroutine MPI_Type_create_hindexed_block_c(count, blocklength, array_of_displacements, oldtype, &
                                                newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: blocklength
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hindexed_block_c

end interface MPI_Type_create_hindexed_block


interface MPI_Type_create_hvector

    subroutine MPI_Type_create_hvector(count, blocklength, stride, oldtype, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        integer, intent(in) :: count
        integer, intent(in) :: blocklength
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: stride
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hvector
    
    subroutine MPI_Type_create_hvector_c(count, blocklength, stride, oldtype, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: blocklength
        integer(kind=MPI_COUNT_KIND), intent(in) :: stride
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_hvector_c

end interface MPI_Type_create_hvector


interface MPI_Type_create_indexed_block

    subroutine MPI_Type_create_indexed_block(count, blocklength, array_of_displacements, oldtype, &
                                             newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: count
        integer, intent(in) :: blocklength
        integer, intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_indexed_block
    
    subroutine MPI_Type_create_indexed_block_c(count, blocklength, array_of_displacements, oldtype, &
                                               newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: blocklength
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_indexed_block_c

end interface MPI_Type_create_indexed_block


interface MPI_Type_create_keyval

    subroutine MPI_Type_create_keyval(type_copy_attr_fn, type_delete_attr_fn, type_keyval, extra_state, &
                                      ierror)
        import :: MPI_ADDRESS_KIND
        import :: MPI_Type_copy_attr_function, MPI_Type_delete_attr_function
        procedure(MPI_Type_copy_attr_function) :: type_copy_attr_fn
        procedure(MPI_Type_delete_attr_function) :: type_delete_attr_fn
        integer, intent(out) :: type_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_keyval

end interface MPI_Type_create_keyval


interface MPI_Type_create_resized

    subroutine MPI_Type_create_resized(oldtype, lb, extent, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: oldtype
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: lb
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extent
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_resized

end interface MPI_Type_create_resized


interface MPI_Type_create_struct

    subroutine MPI_Type_create_struct(count, array_of_blocklengths, array_of_displacements, &
                                      array_of_types, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        integer, intent(in) :: count
        integer, intent(in) :: array_of_blocklengths(count)
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: array_of_types(count)
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_struct
    
    subroutine MPI_Type_create_struct_c(count, array_of_blocklengths, array_of_displacements, &
                                        array_of_types, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_blocklengths(count)
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: array_of_types(count)
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_struct_c

end interface MPI_Type_create_struct


interface MPI_Type_create_subarray

    subroutine MPI_Type_create_subarray(ndims, array_of_sizes, array_of_subsizes, array_of_starts, &
                                        order, oldtype, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: ndims
        integer, intent(in) :: array_of_sizes(ndims)
        integer, intent(in) :: array_of_subsizes(ndims)
        integer, intent(in) :: array_of_starts(ndims)
        integer, intent(in) :: order
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_subarray
    
    subroutine MPI_Type_create_subarray_c(ndims, array_of_sizes, array_of_subsizes, array_of_starts, &
                                          order, oldtype, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer, intent(in) :: ndims
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_sizes(ndims)
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_subsizes(ndims)
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_starts(ndims)
        integer, intent(in) :: order
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_create_subarray_c

end interface MPI_Type_create_subarray


interface MPI_Type_delete_attr

    subroutine MPI_Type_delete_attr(datatype, type_keyval, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: type_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_delete_attr

end interface MPI_Type_delete_attr


interface MPI_Type_dup

    subroutine MPI_Type_dup(oldtype, newtype, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_dup

end interface MPI_Type_dup


interface MPI_Type_free

    subroutine MPI_Type_free(datatype, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(inout) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_free

end interface MPI_Type_free


interface MPI_Type_free_keyval

    subroutine MPI_Type_free_keyval(type_keyval, ierror)
        integer, intent(inout) :: type_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_free_keyval

end interface MPI_Type_free_keyval


interface MPI_Type_get_attr

    subroutine MPI_Type_get_attr(datatype, type_keyval, attribute_val, flag, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: type_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: attribute_val
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_attr

end interface MPI_Type_get_attr


interface MPI_Type_get_contents

    subroutine MPI_Type_get_contents(datatype, max_integers, max_addresses, max_datatypes, &
                                     array_of_integers, array_of_addresses, array_of_datatypes, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: max_integers
        integer, intent(in) :: max_addresses
        integer, intent(in) :: max_datatypes
        integer, intent(out) :: array_of_integers(max_integers)
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: array_of_addresses(max_addresses)
        type(MPI_Datatype), intent(out) :: array_of_datatypes(max_datatypes)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_contents
    
    subroutine MPI_Type_get_contents_c(datatype, max_integers, max_addresses, max_large_counts, &
                                       max_datatypes, array_of_integers, array_of_addresses, &
                                       array_of_large_counts, array_of_datatypes, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND, MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(in) :: max_integers
        integer(kind=MPI_COUNT_KIND), intent(in) :: max_addresses
        integer(kind=MPI_COUNT_KIND), intent(in) :: max_large_counts
        integer(kind=MPI_COUNT_KIND), intent(in) :: max_datatypes
        integer, intent(out) :: array_of_integers(max_integers)
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: array_of_addresses(max_addresses)
        integer(kind=MPI_COUNT_KIND), intent(out) :: array_of_large_counts(max_large_counts)
        type(MPI_Datatype), intent(out) :: array_of_datatypes(max_datatypes)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_contents_c

end interface MPI_Type_get_contents


interface MPI_Type_get_envelope

    subroutine MPI_Type_get_envelope(datatype, num_integers, num_addresses, num_datatypes, combiner, &
                                     ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(out) :: num_integers
        integer, intent(out) :: num_addresses
        integer, intent(out) :: num_datatypes
        integer, intent(out) :: combiner
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_envelope
    
    subroutine MPI_Type_get_envelope_c(datatype, num_integers, num_addresses, num_large_counts, &
                                       num_datatypes, combiner, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: num_integers
        integer(kind=MPI_COUNT_KIND), intent(out) :: num_addresses
        integer(kind=MPI_COUNT_KIND), intent(out) :: num_large_counts
        integer(kind=MPI_COUNT_KIND), intent(out) :: num_datatypes
        integer, intent(out) :: combiner
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_envelope_c

end interface MPI_Type_get_envelope


interface MPI_Type_get_extent

    subroutine MPI_Type_get_extent(datatype, lb, extent, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: lb
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: extent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_extent

end interface MPI_Type_get_extent


interface MPI_Type_get_extent_x

    subroutine MPI_Type_get_extent_x(datatype, lb, extent, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: lb
        integer(kind=MPI_COUNT_KIND), intent(out) :: extent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_extent_x

end interface MPI_Type_get_extent_x


interface MPI_Type_get_name

    subroutine MPI_Type_get_name(datatype, type_name, resultlen, ierror)
        import :: MPI_Datatype
        import :: MPI_MAX_OBJECT_NAME
        type(MPI_Datatype), intent(in) :: datatype
        character(len=MPI_MAX_OBJECT_NAME), intent(out) :: type_name
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_name

end interface MPI_Type_get_name


interface MPI_Type_get_true_extent

    subroutine MPI_Type_get_true_extent(datatype, true_lb, true_extent, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: true_lb
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: true_extent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_true_extent

end interface MPI_Type_get_true_extent


interface MPI_Type_get_true_extent_x

    subroutine MPI_Type_get_true_extent_x(datatype, true_lb, true_extent, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: true_lb
        integer(kind=MPI_COUNT_KIND), intent(out) :: true_extent
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_true_extent_x

end interface MPI_Type_get_true_extent_x


interface MPI_Type_get_value_index

    subroutine MPI_Type_get_value_index(value_type, index_type, pair_type, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: value_type
        type(MPI_Datatype), intent(in) :: index_type
        type(MPI_Datatype), intent(out) :: pair_type
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_get_value_index

end interface MPI_Type_get_value_index


interface MPI_Type_indexed

    subroutine MPI_Type_indexed(count, array_of_blocklengths, array_of_displacements, oldtype, newtype, &
                                ierror)
        import :: MPI_Datatype
        integer, intent(in) :: count
        integer, intent(in) :: array_of_blocklengths(count)
        integer, intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_indexed
    
    subroutine MPI_Type_indexed_c(count, array_of_blocklengths, array_of_displacements, oldtype, &
                                  newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_blocklengths(count)
        integer(kind=MPI_COUNT_KIND), intent(in) :: array_of_displacements(count)
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_indexed_c

end interface MPI_Type_indexed


interface MPI_Type_match_size

    subroutine MPI_Type_match_size(typeclass, size, datatype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: typeclass
        integer, intent(in) :: size
        type(MPI_Datatype), intent(out) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_match_size

end interface MPI_Type_match_size


interface MPI_Type_set_attr

    subroutine MPI_Type_set_attr(datatype, type_keyval, attribute_val, ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(in) :: type_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: attribute_val
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_set_attr

end interface MPI_Type_set_attr


interface MPI_Type_set_name

    subroutine MPI_Type_set_name(datatype, type_name, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: datatype
        character(len=*), intent(in) :: type_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_set_name

end interface MPI_Type_set_name


interface MPI_Type_size

    subroutine MPI_Type_size(datatype, size, ierror)
        import :: MPI_Datatype
        type(MPI_Datatype), intent(in) :: datatype
        integer, intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_size
    
    subroutine MPI_Type_size_c(datatype, size, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_size_c

end interface MPI_Type_size


interface MPI_Type_size_x

    subroutine MPI_Type_size_x(datatype, size, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        type(MPI_Datatype), intent(in) :: datatype
        integer(kind=MPI_COUNT_KIND), intent(out) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_size_x

end interface MPI_Type_size_x


interface MPI_Type_vector

    subroutine MPI_Type_vector(count, blocklength, stride, oldtype, newtype, ierror)
        import :: MPI_Datatype
        integer, intent(in) :: count
        integer, intent(in) :: blocklength
        integer, intent(in) :: stride
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_vector
    
    subroutine MPI_Type_vector_c(count, blocklength, stride, oldtype, newtype, ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        integer(kind=MPI_COUNT_KIND), intent(in) :: count
        integer(kind=MPI_COUNT_KIND), intent(in) :: blocklength
        integer(kind=MPI_COUNT_KIND), intent(in) :: stride
        type(MPI_Datatype), intent(in) :: oldtype
        type(MPI_Datatype), intent(out) :: newtype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Type_vector_c

end interface MPI_Type_vector


interface MPI_Unpack

    subroutine MPI_Unpack(inbuf, insize, position, outbuf, outcount, datatype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        type(*), dimension(..), intent(in) :: inbuf
        integer, intent(in) :: insize
        integer, intent(inout) :: position
        type(*), dimension(..) :: outbuf
        integer, intent(in) :: outcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Unpack
    
    subroutine MPI_Unpack_c(inbuf, insize, position, outbuf, outcount, datatype, comm, ierror)
        import :: MPI_Datatype, MPI_Comm
        import :: MPI_COUNT_KIND
        type(*), dimension(..), intent(in) :: inbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: insize
        integer(kind=MPI_COUNT_KIND), intent(inout) :: position
        type(*), dimension(..) :: outbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: outcount
        type(MPI_Datatype), intent(in) :: datatype
        type(MPI_Comm), intent(in) :: comm
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Unpack_c

end interface MPI_Unpack


interface MPI_Unpack_external

    subroutine MPI_Unpack_external(datarep, inbuf, insize, position, outbuf, outcount, datatype, &
                                   ierror)
        import :: MPI_Datatype
        import :: MPI_ADDRESS_KIND
        character(len=*), intent(in) :: datarep
        type(*), dimension(..), intent(in) :: inbuf
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: insize
        integer(kind=MPI_ADDRESS_KIND), intent(inout) :: position
        type(*), dimension(..) :: outbuf
        integer, intent(in) :: outcount
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Unpack_external
    
    subroutine MPI_Unpack_external_c(datarep, inbuf, insize, position, outbuf, outcount, datatype, &
                                     ierror)
        import :: MPI_Datatype
        import :: MPI_COUNT_KIND
        character(len=*), intent(in) :: datarep
        type(*), dimension(..), intent(in) :: inbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: insize
        integer(kind=MPI_COUNT_KIND), intent(inout) :: position
        type(*), dimension(..) :: outbuf
        integer(kind=MPI_COUNT_KIND), intent(in) :: outcount
        type(MPI_Datatype), intent(in) :: datatype
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Unpack_external_c

end interface MPI_Unpack_external


interface MPI_Unpublish_name

    subroutine MPI_Unpublish_name(service_name, info, port_name, ierror)
        import :: MPI_Info
        character(len=*), intent(in) :: service_name
        type(MPI_Info), intent(in) :: info
        character(len=*), intent(in) :: port_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Unpublish_name

end interface MPI_Unpublish_name


interface MPI_Wait

    subroutine MPI_Wait(request, status, ierror)
        import :: MPI_Request, MPI_Status
        type(MPI_Request), intent(inout) :: request
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Wait

end interface MPI_Wait


interface MPI_Waitall

    subroutine MPI_Waitall(count, array_of_requests, array_of_statuses, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(inout) :: array_of_requests(count)
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Waitall

end interface MPI_Waitall


interface MPI_Waitany

    subroutine MPI_Waitany(count, array_of_requests, indx, status, ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: count
        type(MPI_Request), intent(inout) :: array_of_requests(count)
        integer, intent(out) :: indx
        type(MPI_Status), intent(out), target :: status
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Waitany

end interface MPI_Waitany


interface MPI_Waitsome

    subroutine MPI_Waitsome(incount, array_of_requests, outcount, array_of_indices, array_of_statuses, &
                            ierror)
        import :: MPI_Request, MPI_Status
        integer, intent(in) :: incount
        type(MPI_Request), intent(inout) :: array_of_requests(incount)
        integer, intent(out) :: outcount
        integer, intent(out) :: array_of_indices(*)
        type(MPI_Status), intent(out), target :: array_of_statuses(*)
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Waitsome

end interface MPI_Waitsome


interface MPI_Win_allocate

    subroutine MPI_Win_allocate(size, disp_unit, info, comm, baseptr, win, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer, intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: baseptr
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_allocate
    
    subroutine MPI_Win_allocate_c(size, disp_unit, info, comm, baseptr, win, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: baseptr
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_allocate_c

end interface MPI_Win_allocate


interface MPI_Win_allocate_shared

    subroutine MPI_Win_allocate_shared(size, disp_unit, info, comm, baseptr, win, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer, intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: baseptr
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_allocate_shared
    
    subroutine MPI_Win_allocate_shared_c(size, disp_unit, info, comm, baseptr, win, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(c_ptr), intent(out) :: baseptr
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_allocate_shared_c

end interface MPI_Win_allocate_shared


interface MPI_Win_attach

    subroutine MPI_Win_attach(win, base, size, ierror)
        import :: MPI_Win
        import :: MPI_ADDRESS_KIND
        type(MPI_Win), intent(in) :: win
        type(*), dimension(..), asynchronous :: base
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_attach

end interface MPI_Win_attach


interface MPI_Win_call_errhandler

    subroutine MPI_Win_call_errhandler(win, errorcode, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: errorcode
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_call_errhandler

end interface MPI_Win_call_errhandler


interface MPI_Win_complete

    subroutine MPI_Win_complete(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_complete

end interface MPI_Win_complete


interface MPI_Win_create

    subroutine MPI_Win_create(base, size, disp_unit, info, comm, win, ierror)
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: base
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer, intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_create
    
    subroutine MPI_Win_create_c(base, size, disp_unit, info, comm, win, ierror)
        import :: MPI_Info, MPI_Comm, MPI_Win
        import :: MPI_ADDRESS_KIND
        type(*), dimension(..), asynchronous :: base
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: size
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: disp_unit
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_create_c

end interface MPI_Win_create


interface MPI_Win_create_dynamic

    subroutine MPI_Win_create_dynamic(info, comm, win, ierror)
        import :: MPI_Info, MPI_Comm, MPI_Win
        type(MPI_Info), intent(in) :: info
        type(MPI_Comm), intent(in) :: comm
        type(MPI_Win), intent(out) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_create_dynamic

end interface MPI_Win_create_dynamic


interface MPI_Win_create_errhandler

    subroutine MPI_Win_create_errhandler(win_errhandler_fn, errhandler, ierror)
        import :: MPI_Errhandler
        import :: MPI_Win_errhandler_function
        procedure(MPI_Win_errhandler_function) :: win_errhandler_fn
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_create_errhandler

end interface MPI_Win_create_errhandler


interface MPI_Win_create_keyval

    subroutine MPI_Win_create_keyval(win_copy_attr_fn, win_delete_attr_fn, win_keyval, extra_state, &
                                     ierror)
        import :: MPI_ADDRESS_KIND
        import :: MPI_Win_copy_attr_function, MPI_Win_delete_attr_function
        procedure(MPI_Win_copy_attr_function) :: win_copy_attr_fn
        procedure(MPI_Win_delete_attr_function) :: win_delete_attr_fn
        integer, intent(out) :: win_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: extra_state
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_create_keyval

end interface MPI_Win_create_keyval


interface MPI_Win_delete_attr

    subroutine MPI_Win_delete_attr(win, win_keyval, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: win_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_delete_attr

end interface MPI_Win_delete_attr


interface MPI_Win_detach

    subroutine MPI_Win_detach(win, base, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        type(*), dimension(..), asynchronous :: base
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_detach

end interface MPI_Win_detach


interface MPI_Win_fence

    subroutine MPI_Win_fence(assert, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: assert
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_fence

end interface MPI_Win_fence


interface MPI_Win_flush

    subroutine MPI_Win_flush(rank, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: rank
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_flush

end interface MPI_Win_flush


interface MPI_Win_flush_all

    subroutine MPI_Win_flush_all(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_flush_all

end interface MPI_Win_flush_all


interface MPI_Win_flush_local

    subroutine MPI_Win_flush_local(rank, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: rank
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_flush_local

end interface MPI_Win_flush_local


interface MPI_Win_flush_local_all

    subroutine MPI_Win_flush_local_all(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_flush_local_all

end interface MPI_Win_flush_local_all


interface MPI_Win_free

    subroutine MPI_Win_free(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(inout) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_free

end interface MPI_Win_free


interface MPI_Win_free_keyval

    subroutine MPI_Win_free_keyval(win_keyval, ierror)
        integer, intent(inout) :: win_keyval
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_free_keyval

end interface MPI_Win_free_keyval


interface MPI_Win_get_attr

    subroutine MPI_Win_get_attr(win, win_keyval, attribute_val, flag, ierror)
        import :: MPI_Win
        import :: MPI_ADDRESS_KIND
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: win_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: attribute_val
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_get_attr

end interface MPI_Win_get_attr


interface MPI_Win_get_errhandler

    subroutine MPI_Win_get_errhandler(win, errhandler, ierror)
        import :: MPI_Win, MPI_Errhandler
        type(MPI_Win), intent(in) :: win
        type(MPI_Errhandler), intent(out) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_get_errhandler

end interface MPI_Win_get_errhandler


interface MPI_Win_get_group

    subroutine MPI_Win_get_group(win, group, ierror)
        import :: MPI_Win, MPI_Group
        type(MPI_Win), intent(in) :: win
        type(MPI_Group), intent(out) :: group
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_get_group

end interface MPI_Win_get_group


interface MPI_Win_get_info

    subroutine MPI_Win_get_info(win, info_used, ierror)
        import :: MPI_Win, MPI_Info
        type(MPI_Win), intent(in) :: win
        type(MPI_Info), intent(out) :: info_used
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_get_info

end interface MPI_Win_get_info


interface MPI_Win_get_name

    subroutine MPI_Win_get_name(win, win_name, resultlen, ierror)
        import :: MPI_Win
        import :: MPI_MAX_OBJECT_NAME
        type(MPI_Win), intent(in) :: win
        character(len=MPI_MAX_OBJECT_NAME), intent(out) :: win_name
        integer, intent(out) :: resultlen
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_get_name

end interface MPI_Win_get_name


interface MPI_Win_lock

    subroutine MPI_Win_lock(lock_type, rank, assert, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: lock_type
        integer, intent(in) :: rank
        integer, intent(in) :: assert
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_lock

end interface MPI_Win_lock


interface MPI_Win_lock_all

    subroutine MPI_Win_lock_all(assert, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: assert
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_lock_all

end interface MPI_Win_lock_all


interface MPI_Win_post

    subroutine MPI_Win_post(group, assert, win, ierror)
        import :: MPI_Group, MPI_Win
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: assert
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_post

end interface MPI_Win_post


interface MPI_Win_set_attr

    subroutine MPI_Win_set_attr(win, win_keyval, attribute_val, ierror)
        import :: MPI_Win
        import :: MPI_ADDRESS_KIND
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: win_keyval
        integer(kind=MPI_ADDRESS_KIND), intent(in) :: attribute_val
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_set_attr

end interface MPI_Win_set_attr


interface MPI_Win_set_errhandler

    subroutine MPI_Win_set_errhandler(win, errhandler, ierror)
        import :: MPI_Win, MPI_Errhandler
        type(MPI_Win), intent(in) :: win
        type(MPI_Errhandler), intent(in) :: errhandler
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_set_errhandler

end interface MPI_Win_set_errhandler


interface MPI_Win_set_info

    subroutine MPI_Win_set_info(win, info, ierror)
        import :: MPI_Win, MPI_Info
        type(MPI_Win), intent(in) :: win
        type(MPI_Info), intent(in) :: info
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_set_info

end interface MPI_Win_set_info


interface MPI_Win_set_name

    subroutine MPI_Win_set_name(win, win_name, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        character(len=*), intent(in) :: win_name
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_set_name

end interface MPI_Win_set_name


interface MPI_Win_shared_query

    subroutine MPI_Win_shared_query(win, rank, size, disp_unit, baseptr, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Win
        import :: MPI_ADDRESS_KIND
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: rank
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: size
        integer, intent(out) :: disp_unit
        type(c_ptr), intent(out) :: baseptr
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_shared_query
    
    subroutine MPI_Win_shared_query_c(win, rank, size, disp_unit, baseptr, ierror)
        use, intrinsic :: iso_c_binding, only : c_ptr
        import :: MPI_Win
        import :: MPI_ADDRESS_KIND
        type(MPI_Win), intent(in) :: win
        integer, intent(in) :: rank
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: size
        integer(kind=MPI_ADDRESS_KIND), intent(out) :: disp_unit
        type(c_ptr), intent(out) :: baseptr
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_shared_query_c

end interface MPI_Win_shared_query


interface MPI_Win_start

    subroutine MPI_Win_start(group, assert, win, ierror)
        import :: MPI_Group, MPI_Win
        type(MPI_Group), intent(in) :: group
        integer, intent(in) :: assert
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_start

end interface MPI_Win_start


interface MPI_Win_sync

    subroutine MPI_Win_sync(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_sync

end interface MPI_Win_sync


interface MPI_Win_test

    subroutine MPI_Win_test(win, flag, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        LOGICAL, intent(out) :: flag
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_test

end interface MPI_Win_test


interface MPI_Win_unlock

    subroutine MPI_Win_unlock(rank, win, ierror)
        import :: MPI_Win
        integer, intent(in) :: rank
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_unlock

end interface MPI_Win_unlock


interface MPI_Win_unlock_all

    subroutine MPI_Win_unlock_all(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_unlock_all

end interface MPI_Win_unlock_all


interface MPI_Win_wait

    subroutine MPI_Win_wait(win, ierror)
        import :: MPI_Win
        type(MPI_Win), intent(in) :: win
        integer, optional, intent(out) :: ierror
    end subroutine MPI_Win_wait

end interface MPI_Win_wait


interface MPI_Wtick

    double precision function MPI_Wtick()
    end function MPI_Wtick

end interface MPI_Wtick


interface MPI_Wtime

    double precision function MPI_Wtime()
    end function MPI_Wtime

end interface MPI_Wtime

