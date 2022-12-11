#ifndef	_ANSIDECL_H
#define _ANSIDECL_H	1

/* Every source file includes this file,
   so they will all get the switch for lint.  */
/* LINTLIBRARY */

/* Using MACRO(x,y) in cpp #if conditionals does not work with some
   older preprocessors.  Thus we can't define something like this:

#define HAVE_GCC_VERSION(MAJOR, MINOR) \
  (__GNUC__ > (MAJOR) || (__GNUC__ == (MAJOR) && __GNUC_MINOR__ >= (MINOR)))

and then test "#if HAVE_GCC_VERSION(2,7)".

So instead we use the macro below and test it against specific values.  */

/* This macro simplifies testing whether we are using gcc, and if it
   is of a particular minimum version. (Both major & minor numbers are
   significant.)  This macro will evaluate to 0 if we are not using
   gcc at all.  */
#ifndef GCC_VERSION
#define GCC_VERSION (__GNUC__ * 1000 + __GNUC_MINOR__)
#endif /* GCC_VERSION */

#if defined (__STDC__) || defined (_AIX) || (defined (__mips) && defined (_SYSTYPE_SVR4)) || defined(_WIN32) || (defined(__alpha) && defined(__cplusplus))
/* All known AIX compilers implement these things (but don't always
   define __STDC__).  The RISC/OS MIPS compiler defines these things
   in SVR4 mode, but does not define __STDC__.  */
/* eraxxon@alumni.rice.edu: The Compaq C++ compiler, unlike many other
   C++ compilers, does not define __STDC__, though it acts as if this
   was so. (Verified versions: 5.7, 6.2, 6.3, 6.5) */

#define ANSI_PROTOTYPES	1
#define PTR		void *
#define PTRCONST	void *const
#define LONG_DOUBLE	long double

#define PARAMS(ARGS)		ARGS
#define VPARAMS(ARGS)		ARGS
#define VA_START(VA_LIST, VAR)	va_start(VA_LIST, VAR)

/* variadic function helper macros */
/* "struct Qdmy" swallows the semicolon after VA_OPEN/VA_FIXEDARG's
   use without inhibiting further decls and without declaring an
   actual variable.  */
#define VA_OPEN(AP, VAR)	{ va_list AP; va_start(AP, VAR); { struct Qdmy
#define VA_CLOSE(AP)		} va_end(AP); }
#define VA_FIXEDARG(AP, T, N)	struct Qdmy
 
#undef const
#undef volatile
#undef signed

/* inline requires special treatment; it's in C99, and GCC >=2.7 supports
   it too, but it's not in C89.  */
#undef inline
#if __STDC_VERSION__ > 199901L
/* it's a keyword */
#else
# if GCC_VERSION >= 2007
#  define inline __inline__   /* __inline__ prevents -pedantic warnings */
# else
#  define inline  /* nothing */
# endif
#endif

/* These are obsolete.  Do not use.  */
#ifndef IN_GCC
#define CONST		const
#define VOLATILE	volatile
#define SIGNED		signed

#define PROTO(type, name, arglist)	type name arglist
#define EXFUN(name, proto)		name proto
#define DEFUN(name, arglist, args)	name(args)
#define DEFUN_VOID(name)		name(void)
#define AND		,
#define DOTS		, ...
#define NOARGS		void
#endif /* ! IN_GCC */

#else	/* Not ANSI C.  */

#undef  ANSI_PROTOTYPES
#define PTR		char *
#define PTRCONST	PTR
#define LONG_DOUBLE	double

#define PARAMS(args)		()
#define VPARAMS(args)		(va_alist) va_dcl
#define VA_START(va_list, var)	va_start(va_list)

#define VA_OPEN(AP, VAR)		{ va_list AP; va_start(AP); { struct Qdmy
#define VA_CLOSE(AP)			} va_end(AP); }
#define VA_FIXEDARG(AP, TYPE, NAME)	TYPE NAME = va_arg(AP, TYPE)

/* some systems define these in header files for non-ansi mode */
#undef const
#undef volatile
#undef signed
#undef inline
#define const
#define volatile
#define signed
#define inline

#ifndef IN_GCC
#define CONST
#define VOLATILE
#define SIGNED

#define PROTO(type, name, arglist)	type name ()
#define EXFUN(name, proto)		name()
#define DEFUN(name, arglist, args)	name arglist args;
#define DEFUN_VOID(name)		name()
#define AND		;
#define DOTS
#define NOARGS
#endif /* ! IN_GCC */

#endif	/* ANSI C.  */

/* Define macros for some gcc attributes.  This permits us to use the
   macros freely, and know that they will come into play for the
   version of gcc in which they are supported.  */

#if (GCC_VERSION < 2007)
# define __attribute__(x)
#endif

/* Attribute __malloc__ on functions was valid as of gcc 2.96. */
#ifndef ATTRIBUTE_MALLOC
# if (GCC_VERSION >= 2096)
#  define ATTRIBUTE_MALLOC __attribute__ ((__malloc__))
# else
#  define ATTRIBUTE_MALLOC
# endif /* GNUC >= 2.96 */
#endif /* ATTRIBUTE_MALLOC */

/* Attributes on labels were valid as of gcc 2.93. */
#ifndef ATTRIBUTE_UNUSED_LABEL
# if (GCC_VERSION >= 2093)
#  define ATTRIBUTE_UNUSED_LABEL ATTRIBUTE_UNUSED
# else
#  define ATTRIBUTE_UNUSED_LABEL
# endif /* GNUC >= 2.93 */
#endif /* ATTRIBUTE_UNUSED_LABEL */

#ifndef ATTRIBUTE_UNUSED
#define ATTRIBUTE_UNUSED __attribute__ ((__unused__))
#endif /* ATTRIBUTE_UNUSED */

#ifndef ATTRIBUTE_NORETURN
#define ATTRIBUTE_NORETURN __attribute__ ((__noreturn__))
#endif /* ATTRIBUTE_NORETURN */

#ifndef ATTRIBUTE_PRINTF
#define ATTRIBUTE_PRINTF(m, n) __attribute__ ((__format__ (__printf__, m, n)))
#define ATTRIBUTE_PRINTF_1 ATTRIBUTE_PRINTF(1, 2)
#define ATTRIBUTE_PRINTF_2 ATTRIBUTE_PRINTF(2, 3)
#define ATTRIBUTE_PRINTF_3 ATTRIBUTE_PRINTF(3, 4)
#define ATTRIBUTE_PRINTF_4 ATTRIBUTE_PRINTF(4, 5)
#define ATTRIBUTE_PRINTF_5 ATTRIBUTE_PRINTF(5, 6)
#endif /* ATTRIBUTE_PRINTF */

/* We use __extension__ in some places to suppress -pedantic warnings
   about GCC extensions.  This feature didn't work properly before
   gcc 2.8.  */
#if GCC_VERSION < 2008
#define __extension__
#endif

/* Bootstrap support:  Adjust certain macros defined by Autoconf,
   which are only valid for the stage1 compiler.  If we detect
   a modern version of GCC, we are probably in stage2 or beyond,
   so unconditionally reset the values.  Note that const, inline,
   etc. have been dealt with above.  */
#if (GCC_VERSION >= 2007)
# ifndef HAVE_LONG_DOUBLE
#  define HAVE_LONG_DOUBLE 1
# endif
#endif /* GCC >= 2.7 */

#endif	/* ansidecl.h	*/
