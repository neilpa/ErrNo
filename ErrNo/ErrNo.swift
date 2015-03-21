//  Copyright (c) 2015 Neil Pankey. All rights reserved.

import Darwin.C.errno

public enum ErrNo : Int32 {
    case EPERM /* Operation not permitted */
    case ENOENT /* No such file or directory */
    case ESRCH /* No such process */
    case EINTR /* Interrupted system call */
    case EIO /* Input/output error */
    case ENXIO /* Device not configured */
    case E2BIG /* Argument list too long */
    case ENOEXEC /* Exec format error */
    case EBADF /* Bad file descriptor */
    case ECHILD /* No child processes */
    case EDEADLK /* Resource deadlock avoided */
    /* 11 was EAGAIN */
    case ENOMEM /* Cannot allocate memory */
    case EACCES /* Permission denied */
    case EFAULT /* Bad address */

    case ENOTBLK /* Block device required */

    case EBUSY /* Device / Resource busy */
    case EEXIST /* File exists */
    case EXDEV /* Cross-device link */
    case ENODEV /* Operation not supported by device */
    case ENOTDIR /* Not a directory */
    case EISDIR /* Is a directory */
    case EINVAL /* Invalid argument */
    case ENFILE /* Too many open files in system */
    case EMFILE /* Too many open files */
    case ENOTTY /* Inappropriate ioctl for device */
    case ETXTBSY /* Text file busy */
    case EFBIG /* File too large */
    case ENOSPC /* No space left on device */
    case ESPIPE /* Illegal seek */
    case EROFS /* Read-only file system */
    case EMLINK /* Too many links */
    case EPIPE /* Broken pipe */

    /* math software */
    case EDOM /* Numerical argument out of domain */
    case ERANGE /* Result too large */

    /* non-blocking and interrupt i/o */
    case EAGAIN /* Resource temporarily unavailable */
    case EWOULDBLOCK /* Operation would block */
    case EINPROGRESS /* Operation now in progress */
    case EALREADY /* Operation already in progress */

    /* ipc/network software -- argument errors */
    case ENOTSOCK /* Socket operation on non-socket */
    case EDESTADDRREQ /* Destination address required */
    case EMSGSIZE /* Message too long */
    case EPROTOTYPE /* Protocol wrong type for socket */
    case ENOPROTOOPT /* Protocol not available */
    case EPROTONOSUPPORT /* Protocol not supported */

    case ESOCKTNOSUPPORT /* Socket type not supported */

    case ENOTSUP /* Operation not supported */

    /*
    * This is the same for binary and source copmpatability, unless compiling
    * the kernel itself, or compiling __DARWIN_UNIX03; if compiling for the
    * kernel, the correct value will be returned.  If compiling non-POSIX
    * source, the kernel return value will be converted by a stub in libc, and
    * if compiling source with __DARWIN_UNIX03, the conversion in libc is not
    * done, and the caller gets the expected (discrete) value.
    */
    /* Operation not supported on socket */
    /* !__DARWIN_UNIX03 && !KERNEL */

    case EPFNOSUPPORT /* Protocol family not supported */

    case EAFNOSUPPORT /* Address family not supported by protocol family */
    case EADDRINUSE /* Address already in use */
    case EADDRNOTAVAIL /* Can't assign requested address */

    /* ipc/network software -- operational errors */
    case ENETDOWN /* Network is down */
    case ENETUNREACH /* Network is unreachable */
    case ENETRESET /* Network dropped connection on reset */
    case ECONNABORTED /* Software caused connection abort */
    case ECONNRESET /* Connection reset by peer */
    case ENOBUFS /* No buffer space available */
    case EISCONN /* Socket is already connected */
    case ENOTCONN /* Socket is not connected */

    case ESHUTDOWN /* Can't send after socket shutdown */
    case ETOOMANYREFS /* Too many references: can't splice */

    case ETIMEDOUT /* Operation timed out */
    case ECONNREFUSED /* Connection refused */

    case ELOOP /* Too many levels of symbolic links */
    case ENAMETOOLONG /* File name too long */

    /* should be rearranged */

    case EHOSTDOWN /* Host is down */

    case EHOSTUNREACH /* No route to host */
    case ENOTEMPTY /* Directory not empty */

    /* quotas & mush */

    case EPROCLIM /* Too many processes */
    case EUSERS /* Too many users */

    case EDQUOT /* Disc quota exceeded */

    /* Network File System */
    case ESTALE /* Stale NFS file handle */

    case EREMOTE /* Too many levels of remote in path */
    case EBADRPC /* RPC struct is bad */
    case ERPCMISMATCH /* RPC version wrong */
    case EPROGUNAVAIL /* RPC prog. not avail */
    case EPROGMISMATCH /* Program version wrong */
    case EPROCUNAVAIL /* Bad procedure for program */

    case ENOLCK /* No locks available */
    case ENOSYS /* Function not implemented */

    case EFTYPE /* Inappropriate file type or format */
    case EAUTH /* Authentication error */
    case ENEEDAUTH /* Need authenticator */

    /* Intelligent device errors */
    case EPWROFF /* Device power is off */
    case EDEVERR /* Device error, e.g. paper out */

    case EOVERFLOW /* Value too large to be stored in data type */

    /* Program loading errors */

    case EBADEXEC /* Bad executable */
    case EBADARCH /* Bad CPU type in executable */
    case ESHLIBVERS /* Shared library version mismatch */
    case EBADMACHO /* Malformed Macho file */

    case ECANCELED /* Operation canceled */

    case EIDRM /* Identifier removed */
    case ENOMSG /* No message of desired type */
    case EILSEQ /* Illegal byte sequence */

    case ENOATTR /* Attribute not found */

    case EBADMSG /* Bad message */
    case EMULTIHOP /* Reserved */
    case ENODATA /* No message available on STREAM */
    case ENOLINK /* Reserved */
    case ENOSR /* No STREAM resources */
    case ENOSTR /* Not a STREAM */
    case EPROTO /* Protocol error */
    case ETIME /* STREAM ioctl timeout */
    
    /* This value is only discrete when compiling __DARWIN_UNIX03, or KERNEL */
    case EOPNOTSUPP /* Operation not supported on socket */
    /* __DARWIN_UNIX03 || KERNEL */
    
    case ENOPOLICY /* No such policy registered */
    
    case ENOTRECOVERABLE /* State not recoverable */
    case EOWNERDEAD /* Previous owner died */
    
    case EQFULL /* Interface output queue is full */
    case ELAST /* Must be equal largest errno */    
}