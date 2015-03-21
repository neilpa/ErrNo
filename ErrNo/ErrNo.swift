//  Copyright (c) 2015 Neil Pankey. All rights reserved.

import Darwin.C.errno

/// Wraps the most recent `errno` value
public func lastError() -> ErrNo? {
    return ErrNo(rawValue: errno)
}

/// Wrapper around errno values from the C standard library.
public enum ErrNo : errno_t {
    // MARK: Basic

    /// Operation not permitted
    case EPERM      = 1
    /// No such file or directory
    case ENOENT     = 2
    /// No such process
    case ESRCH      = 3
    /// Interrupted system call
    case EINTR      = 4
    /// Input/output error
    case EIO        = 5
    /// Device not configured
    case ENXIO      = 6
    /// Argument list too long
    case E2BIG      = 7
    /// Exec format error
    case ENOEXEC    = 8
    /// Bad file descriptor
    case EBADF      = 9
    /// No child processes
    case ECHILD     = 10
    /// Resource deadlock avoided
    case EDEADLK    = 11
    /// Cannot allocate memory
    case ENOMEM     = 12
    /// Permission denied
    case EACCES     = 13
    /// Bad address
    case EFAULT     = 14
    /// Block device required
    case ENOTBLK    = 15
    /// Device / Resource busy
    case EBUSY      = 16
    /// File exists
    case EEXIST     = 17
    /// Cross-device link
    case EXDEV      = 18
    /// Operation not supported by device
    case ENODEV     = 19
    /// Not a directory
    case ENOTDIR    = 20
    /// Is a directory
    case EISDIR     = 21
    /// Invalid argument
    case EINVAL     = 22
    /// Too many open files in system
    case ENFILE     = 23
    /// Too many open files
    case EMFILE     = 24
    /// Inappropriate ioctl for device
    case ENOTTY     = 25
    /// Text file busy
    case ETXTBSY    = 26
    /// File too large
    case EFBIG      = 27
    /// No space left on device
    case ENOSPC     = 28
    /// Illegal seek
    case ESPIPE     = 29
    /// Read-only file system
    case EROFS      = 30
    /// Too many links
    case EMLINK     = 31
    /// Broken pipe
    case EPIPE      = 32

    // MARK: Math software

    /// Numerical argument out of domain
    case EDOM       = 33
    /// Result too large
    case ERANGE     = 34

    // MARK: Non-blocking and interrupt i/o

    /// Resource temporarily unavailable
    case EAGAIN         = 35
    /// Operation would block
    //case EWOULDBLOCK  = 35
    /// Operation now in progress
    case EINPROGRESS    = 36
    /// Operation already in progress
    case EALREADY       = 37

    // MARK: IPC/network software -- argument errors

    /// Socket operation on non-socket
    case ENOTSOCK           = 38
    /// Destination address required
    case EDESTADDRREQ       = 39
    /// Message too long
    case EMSGSIZE           = 40
    /// Protocol wrong type for socket
    case EPROTOTYPE         = 41
    /// Protocol not available
    case ENOPROTOOPT        = 42
    /// Protocol not supported
    case EPROTONOSUPPORT    = 43
    /// Socket type not supported
    case ESOCKTNOSUPPORT    = 44
    /// Operation not supported
    case ENOTSUP            = 45
    /// Protocol family not supported
    case EPFNOSUPPORT       = 46
    /// Address family not supported by protocol family
    case EAFNOSUPPORT       = 47
    /// Address already in use
    case EADDRINUSE         = 48
    /// Can't assign requested address
    case EADDRNOTAVAIL      = 49

    // MARK: IPC/network software -- operational errors

    /// Network is down
    case ENETDOWN       = 50
    /// Network is unreachable
    case ENETUNREACH    = 51
    /// Network dropped connection on reset
    case ENETRESET      = 52
    /// Software caused connection abort
    case ECONNABORTED   = 53
    /// Connection reset by peer
    case ECONNRESET     = 54
    /// No buffer space available
    case ENOBUFS        = 55
    /// Socket is already connected
    case EISCONN        = 56
    /// Socket is not connected
    case ENOTCONN       = 57
    /// Can't send after socket shutdown
    case ESHUTDOWN      = 58
    /// Too many references: can't splice
    case ETOOMANYREFS   = 59
    /// Operation timed out
    case ETIMEDOUT      = 60
    /// Connection refused
    case ECONNREFUSED   = 61

    /// Too many levels of symbolic links
    case ELOOP          = 62
    /// File name too long
    case ENAMETOOLONG   = 63

    /// Host is down
    case EHOSTDOWN      = 64
    /// No route to host
    case EHOSTUNREACH   = 65
    /// Directory not empty
    case ENOTEMPTY      = 66

    // MARK: Quotas & mush

    /// Too many processes
    case EPROCLIM   = 67
    /// Too many users
    case EUSERS     = 68
    /// Disc quota exceeded
    case EDQUOT     = 69

    // MARK: Network File System

    /// Stale NFS file handle
    case ESTALE         = 70
    /// Too many levels of remote in path
    case EREMOTE        = 71
    /// RPC struct is bad
    case EBADRPC        = 72
    /// RPC version wrong
    case ERPCMISMATCH   = 73
    /// RPC prog. not avail
    case EPROGUNAVAIL   = 74
    /// Program version wrong
    case EPROGMISMATCH  = 75
    /// Bad procedure for program
    case EPROCUNAVAIL   = 76

    /// No locks available
    case ENOLCK     = 77
    /// Function not implemented
    case ENOSYS     = 78

    /// Inappropriate file type or format
    case EFTYPE     = 79
    /// Authentication error
    case EAUTH      = 80
    /// Need authenticator
    case ENEEDAUTH  = 81

    // MARK: Intelligent device errors

    /// Device power is off
    case EPWROFF    = 82
    /// Device error, e.g. paper out
    case EDEVERR    = 83

    /// Value too large to be stored in data type
    case EOVERFLOW  = 84

    // MARK: Program loading errors

    /// Bad executable
    case EBADEXEC   = 85
    /// Bad CPU type in executable
    case EBADARCH   = 86
    /// Shared library version mismatch
    case ESHLIBVERS = 87
    /// Malformed Macho file
    case EBADMACHO  = 88

    /// Operation canceled
    case ECANCELED  = 89

    /// Identifier removed
    case EIDRM      = 90
    /// No message of desired type
    case ENOMSG     = 91
    /// Illegal byte sequence
    case EILSEQ     = 92
    /// Attribute not found
    case ENOATTR    = 93

    /// Bad message
    case EBADMSG    = 94
    /// Reserved
    case EMULTIHOP  = 95
    /// No message available on STREAM
    case ENODATA    = 96
    /// Reserved
    case ENOLINK    = 97
    /// No STREAM resources
    case ENOSR      = 98
    /// Not a STREAM
    case ENOSTR     = 99
    /// Protocol error
    case EPROTO     = 100
    /// STREAM ioctl timeout
    case ETIME      = 101

    /// Operation not supported on socket
    case EOPNOTSUPP = 102

    /// No such policy registered
    case ENOPOLICY  = 103

    /// State not recoverable
    case ENOTRECOVERABLE    = 104
    /// Previous owner died
    case EOWNERDEAD         = 105

    /// Interface output queue is full
    case EQFULL     = 106
    /// Must be equal largest errno
    //case ELAST    = 106
}

// MARK: Printable

extension ErrNo : Printable {

    /// Returns the error message and code.
    public var description: String {
        return "\(message) (\(rawValue))"
    }

    /// Lookup error message specific to `ErrNo`.
    public var message: String {
        switch self {
        case EPERM:           return "Operation not permitted"
        case ENOENT:          return "No such file or directory"
        case ESRCH:           return "No such process"
        case EINTR:           return "Interrupted system call"
        case EIO:             return "Input/output error"
        case ENXIO:           return "Device not configured"
        case E2BIG:           return "Argument list too long"
        case ENOEXEC:         return "Exec format error"
        case EBADF:           return "Bad file descriptor"
        case ECHILD:          return "No child processes"
        case EDEADLK:         return "Resource deadlock avoided"
        case ENOMEM:          return "Cannot allocate memory"
        case EACCES:          return "Permission denied"
        case EFAULT:          return "Bad address"
        case ENOTBLK:         return "Block device required"
        case EBUSY:           return "Device / Resource busy"
        case EEXIST:          return "File exists"
        case EXDEV:           return "Cross-device link"
        case ENODEV:          return "Operation not supported by device"
        case ENOTDIR:         return "Not a directory"
        case EISDIR:          return "Is a directory"
        case EINVAL:          return "Invalid argument"
        case ENFILE:          return "Too many open files in system"
        case EMFILE:          return "Too many open files"
        case ENOTTY:          return "Inappropriate ioctl for device"
        case ETXTBSY:         return "Text file busy"
        case EFBIG:           return "File too large"
        case ENOSPC:          return "No space left on device"
        case ESPIPE:          return "Illegal seek"
        case EROFS:           return "Read-only file system"
        case EMLINK:          return "Too many links"
        case EPIPE:           return "Broken pipe"
        case EDOM:            return "Numerical argument out of domain"
        case ERANGE:          return "Result too large"
        case EAGAIN:          return "Resource temporarily unavailable"
        case EINPROGRESS:     return "Operation now in progress"
        case EALREADY:        return "Operation already in progress"
        case ENOTSOCK:        return "Socket operation on non-socket"
        case EDESTADDRREQ:    return "Destination address required"
        case EMSGSIZE:        return "Message too long"
        case EPROTOTYPE:      return "Protocol wrong type for socket"
        case ENOPROTOOPT:     return "Protocol not available"
        case EPROTONOSUPPORT: return "Protocol not supported"
        case ESOCKTNOSUPPORT: return "Socket type not supported"
        case ENOTSUP:         return "Operation not supported"
        case EPFNOSUPPORT:    return "Protocol family not supported"
        case EAFNOSUPPORT:    return "Address family not supported by protocol family"
        case EADDRINUSE:      return "Address already in use"
        case EADDRNOTAVAIL:   return "Can't assign requested address"
        case ENETDOWN:        return "Network is down"
        case ENETUNREACH:     return "Network is unreachable"
        case ENETRESET:       return "Network dropped connection on reset"
        case ECONNABORTED:    return "Software caused connection abort"
        case ECONNRESET:      return "Connection reset by peer"
        case ENOBUFS:         return "No buffer space available"
        case EISCONN:         return "Socket is already connected"
        case ENOTCONN:        return "Socket is not connected"
        case ESHUTDOWN:       return "Can't send after socket shutdown"
        case ETOOMANYREFS:    return "Too many references: can't splice"
        case ETIMEDOUT:       return "Operation timed out"
        case ECONNREFUSED:    return "Connection refused"
        case ELOOP:           return "Too many levels of symbolic links"
        case ENAMETOOLONG:    return "File name too long"
        case EHOSTDOWN:       return "Host is down"
        case EHOSTUNREACH:    return "No route to host"
        case ENOTEMPTY:       return "Directory not empty"
        case EPROCLIM:        return "Too many processes"
        case EUSERS:          return "Too many users"
        case EDQUOT:          return "Disc quota exceeded"
        case ESTALE:          return "Stale NFS file handle"
        case EREMOTE:         return "Too many levels of remote in path"
        case EBADRPC:         return "RPC struct is bad"
        case ERPCMISMATCH:    return "RPC version wrong"
        case EPROGUNAVAIL:    return "RPC prog. not avail"
        case EPROGMISMATCH:   return "Program version wrong"
        case EPROCUNAVAIL:    return "Bad procedure for program"
        case ENOLCK:          return "No locks available"
        case ENOSYS:          return "Function not implemented"
        case EFTYPE:          return "Inappropriate file type or format"
        case EAUTH:           return "Authentication error"
        case ENEEDAUTH:       return "Need authenticator"
        case EPWROFF:         return "Device power is off"
        case EDEVERR:         return "Device error, e.g. paper out"
        case EOVERFLOW:       return "Value too large to be stored in data type"
        case EBADEXEC:        return "Bad executable"
        case EBADARCH:        return "Bad CPU type in executable"
        case ESHLIBVERS:      return "Shared library version mismatch"
        case EBADMACHO:       return "Malformed Macho file"
        case ECANCELED:       return "Operation canceled"
        case EIDRM:           return "Identifier removed"
        case ENOMSG:          return "No message of desired type"
        case EILSEQ:          return "Illegal byte sequence"
        case ENOATTR:         return "Attribute not found"
        case EBADMSG:         return "Bad message"
        case EMULTIHOP:       return "Reserved"
        case ENODATA:         return "No message available on STREAM"
        case ENOLINK:         return "Reserved"
        case ENOSR:           return "No STREAM resources"
        case ENOSTR:          return "Not a STREAM"
        case EPROTO:          return "Protocol error"
        case ETIME:           return "STREAM ioctl timeout"
        case EOPNOTSUPP:      return "Operation not supported on socket"
        case ENOPOLICY:       return "No such policy registered"
        case ENOTRECOVERABLE: return "State not recoverable"
        case EOWNERDEAD:      return "Previous owner died"
        case EQFULL:          return "Interface output queue is full"
        }
    }
}
