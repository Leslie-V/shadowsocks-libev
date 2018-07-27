dnl dnl Check to find the mbed TLS headers/libraries
dnl 
dnl AC_DEFUN([ss_MBEDTLS],
dnl [
dnl 
dnl   AC_ARG_WITH(mbedtls,
dnl     AS_HELP_STRING([--with-mbedtls=DIR], [mbed TLS base directory, or:]),
dnl     [mbedtls="$withval"
dnl      CFLAGS="$CFLAGS -I$withval/include"
dnl      LDFLAGS="$LDFLAGS -L$withval/lib"]
dnl   )
dnl 
dnl   AC_ARG_WITH(mbedtls-include,
dnl     AS_HELP_STRING([--with-mbedtls-include=DIR], [mbed TLS headers directory (without trailing /mbedtls)]),
dnl     [mbedtls_include="$withval"
dnl      CFLAGS="$CFLAGS -I$withval"]
dnl   )
dnl 
dnl   AC_ARG_WITH(mbedtls-lib,
dnl     AS_HELP_STRING([--with-mbedtls-lib=DIR], [mbed TLS library directory]),
dnl     [mbedtls_lib="$withval"
dnl      LDFLAGS="$LDFLAGS -L$withval"]
dnl   )
dnl 
dnl   AC_CHECK_LIB(mbedcrypto, mbedtls_cipher_setup,
dnl     [LIBS="-lmbedcrypto $LIBS"],
dnl     [AC_MSG_ERROR([mbed TLS libraries not found.])]
dnl   )
dnl 
dnl   AC_MSG_CHECKING([whether mbedtls supports Cipher Feedback mode or not])
dnl   AC_COMPILE_IFELSE(
dnl     [AC_LANG_PROGRAM(
dnl       [[
dnl #include <mbedtls/config.h>
dnl       ]],
dnl       [[
dnl #ifndef MBEDTLS_CIPHER_MODE_CFB
dnl #error Cipher Feedback mode a.k.a CFB not supported by your mbed TLS.
dnl #endif
dnl       ]]
dnl     )],
dnl     [AC_MSG_RESULT([ok])],
dnl     [AC_MSG_ERROR([MBEDTLS_CIPHER_MODE_CFB required])]
dnl   )
dnl 
dnl 
dnl   AC_MSG_CHECKING([whether mbedtls supports the ARC4 stream cipher or not])
dnl   AC_COMPILE_IFELSE(
dnl     [AC_LANG_PROGRAM(
dnl       [[
dnl #include <mbedtls/config.h>
dnl       ]],
dnl       [[
dnl #ifndef MBEDTLS_ARC4_C
dnl #error the ARC4 stream cipher not supported by your mbed TLS.
dnl #endif
dnl       ]]
dnl     )],
dnl     [AC_MSG_RESULT([ok])],
dnl     [AC_MSG_WARN([We will continue without ARC4 stream cipher support, MBEDTLS_ARC4_C required])]
dnl   )
dnl 
dnl   AC_MSG_CHECKING([whether mbedtls supports the Blowfish block cipher or not])
dnl   AC_COMPILE_IFELSE(
dnl     [AC_LANG_PROGRAM(
dnl       [[
dnl #include <mbedtls/config.h>
dnl       ]],
dnl       [[
dnl #ifndef MBEDTLS_BLOWFISH_C
dnl #error the Blowfish block cipher not supported by your mbed TLS.
dnl #endif
dnl       ]]
dnl     )],
dnl     [AC_MSG_RESULT([ok])],
dnl     [AC_MSG_WARN([We will continue without Blowfish block cipher support, MBEDTLS_BLOWFISH_C required])]
dnl   )
dnl 
dnl   AC_MSG_CHECKING([whether mbedtls supports the Camellia block cipher or not])
dnl   AC_COMPILE_IFELSE(
dnl     [AC_LANG_PROGRAM(
dnl       [[
dnl #include <mbedtls/config.h>
dnl       ]],
dnl       [[
dnl #ifndef MBEDTLS_CAMELLIA_C
dnl #error the Camellia block cipher not supported by your mbed TLS.
dnl #endif
dnl       ]]
dnl     )],
dnl     [AC_MSG_RESULT([ok])],
dnl     [AC_MSG_WARN([We will continue without Camellia block cipher support, MBEDTLS_CAMELLIA_C required])]
dnl   )
dnl ])
