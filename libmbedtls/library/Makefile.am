VERSION_INFO = 2:0:0

AM_CFLAGS = -O2 -Wall -Werror -Wno-deprecated-declarations -fno-strict-aliasing -std=gnu99 -D_GNU_SOURCE
#AM_CFLAGS += $(PTHREAD_CFLAGS)
#
#if !USE_SYSTEM_SHARED_LIB
AM_CFLAGS +=  -I$(top_srcdir)/include
#SS_COMMON_LIBS = $(top_builddir)/libipset/libipset.la \
#                 $(top_builddir)/libcork/libcork.la \
#                 $(INET_NTOP_LIB) $(LIBPCRE_LIBS)
#

crypto_SOURCES = aes.c \
                 aesni.c \
                 arc4.c \
                 asn1parse.c \
                 asn1write.c \
                 base64.c \
                 bignum.c \
                 blowfish.c \
                 camellia.c \
                 ccm.c \
                 cipher.c \
                 cipher_wrap.c \
                 cmac.c \
                 ctr_drbg.c \
                 des.c \
                 dhm.c \
                 ecdh.c \
                 ecdsa.c \
                 ecjpake.c \
                 ecp.c \
                 ecp_curves.c \
                 entropy.c \
                 entropy_poll.c \
                 error.c \
                 gcm.c \
                 havege.c \
                 hmac_drbg.c \
                 md.c \
                 md2.c \
                 md4.c \
                 md5.c \
                 md_wrap.c \
                 memory_buffer_alloc.c \
                 oid.c \
                 padlock.c \
                 pem.c \
                 pk.c \
                 pk_wrap.c \
                 pkcs12.c \
                 pkcs5.c \
                 pkparse.c \
                 pkwrite.c \
                 platform.c \
                 ripemd160.c \
                 rsa_internal.c \
                 rsa.c \
                 sha1.c \
                 sha256.c \
                 sha512.c \
                 threading.c \
                 timing.c \
                 version.c \
                 version_features.c \
                 xtea.c


lib_LTLIBRARIES = libmbedcrypto.la
libmbedcrypto_la_SOURCES = $(crypto_SOURCES)
libmbedcrypto_la_CFLAGS  = $(AM_CFLAGS)
libmbedcrypto_la_LDFLAGS = -static
libmbedcrypto_la_LIBADD  =


x509_SOURCES = certs.c \
               pkcs11.c \
               x509.c \
               x509_create.c \
               x509_crl.c \
               x509_crt.c \
               x509_csr.c \
               x509write_crt.c \
               x509write_csr.c

lib_LTLIBRARIES += libmbedx509.la
libmbedx509_la_SOURCES = $(x509_SOURCES)
libmbedx509_la_CFLAGS  = $(AM_CFLAGS)
libmbedx509_la_LDFLAGS = -static
libmbedx509_la_LIBADD  =


mbedtls_SOURCES = debug.c \
              net_sockets.c \
              ssl_cache.c \
              ssl_ciphersuites.c \
              ssl_cli.c \
              ssl_cookie.c \
              ssl_srv.c \
              ssl_ticket.c \
              ssl_tls.c

lib_LTLIBRARIES += libmbedtls.la
libmbedtls_la_SOURCES = $(mbedtls_SOURCES)
libmbedtls_la_CFLAGS  = $(AM_CFLAGS)
libmbedtls_la_LDFLAGS = -static
libmbedtls_la_LIBADD  =

