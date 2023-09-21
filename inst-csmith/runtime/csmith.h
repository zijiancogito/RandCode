/* -*- mode: C -*-
 *
 * Copyright (c) 2007-2011, 2013, 2014 The University of Utah
 * All rights reserved.
 *
 * This file is part of `csmith', a random generator of C programs.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef RANDOM_RUNTIME_H
#define RANDOM_RUNTIME_H

#ifdef CSMITH_MINIMAL
#include "csmith_minimal.h"
#else

/*****************************************************************************/

#include <string.h>
#include <float.h>
#include <math.h>
#include <stdlib.h>

#define __STDC_LIMIT_MACROS
#include "random_inc.h"

static uint32_t crc32_tab[256];
static uint32_t crc32_context = 0xFFFFFFFFUL;

char f_getc_binary() __attribute__((noinline));
char f_getc_hex() __attribute__((noinline));
char f_getc_long() __attribute__((noinline));

char f_getc_binary() 
{
	printf("f_getc_binary: %d", 0);
	return (char)(0b01);
}

char f_getc_hex() 
{
	printf("f_getc_hex: %d", 1);
	return 0x01;
}

char f_getc_long() 
{
	printf("f_getc_long: %d", 2);
	return 0x01L;
}


int f_geti_binary() __attribute__((noinline));
int f_geti_binary() 
{
	printf("f_geti_binary: %d", 3);
	return 0b00000001;
}

int f_geti_hex() __attribute__((noinline));
int f_geti_hex() 
{
	printf("f_geti_hex: %d", 4);
	return 0x00000001;
}

int f_geti_long() __attribute__((noinline));
int f_geti_long() 
{
	printf("f_geti_long_0: %d", 5);
	return 0x00000001L;
}

__int128_t f_geti128_binary() __attribute__((noinline));
__int128_t f_geti128_binary() 
{
	printf("f_geti128_binary: %d", 6);
	return 0b0000000000000001;
}

__int128_t f_geti128_hex() __attribute__((noinline));
__int128_t f_geti128_hex() 
{
	printf("f_geti128_hex: %d", 7);
	return 0x0000000000000001;
}

short f_getshort_binary() __attribute__((noinline));
short f_getshort_binary() 
{
	printf("f_getshort_binary: %d", 8);
	return 0b0001;
}

short f_getshort_hex() __attribute__((noinline));
short f_getshort_hex() 
{
	printf("f_getshort_hex: %d", 9);
	return 0x0001;
}

short f_getshort_long() __attribute__((noinline));
short f_getshort_long() 
{
	printf("f_getshort_long: %d", 10);
	return 0x0001L;
}

long f_getl_binary() __attribute__((noinline));
long f_getl_binary() 
{
	printf("f_getl_binary: %d", 11);
	return 0b00000001;
}

long f_getl_hex() __attribute__((noinline));
long f_getl_hex() 
{
	printf("f_getl_hex: %d", 12);
	return 0x00000001;
}

long f_getl_long() __attribute__((noinline));
long f_getl_long() 
{
	printf("f_getl_long: %d", 13);
	return 0x00000001L;
}

long long f_getll_binary() __attribute__((noinline));
long long f_getll_binary() 
{
	printf("f_getll_binary: %d", 14);
	return 0b0000000000000001LL;
}

long long f_getll_hex() __attribute__((noinline));
long long f_getll_hex() 
{
	printf("f_getll_hex: %d", 15);
	return 0x0000000000000001LL;
}

float f_getfloat() __attribute__((noinline));
float f_getfloat() 
{
	printf("f_getfloat: %d", 16);
	return 1.0;
}

float f_getf_hex() __attribute__((noinline));
float f_getf_hex() 
{
	printf("f_getf_hex: %d", 17);
	return 0x1.0p+2;
}

float f_getsf() __attribute__((noinline));
float f_getsf() 
{
	printf("f_getsf: %d", 18);
	return 0x1.0p+1;
}

unsigned int f_getuc() __attribute__((noinline));
unsigned int f_getuc() 
{
	printf("f_getuc: %d", 19);
	return (unsigned int)(unsigned char)(1);
}

unsigned short f_getus() __attribute__((noinline));
unsigned short f_getus() 
{
	printf("f_getus: %d", 20);
	return (unsigned short)(1);
}

unsigned int f_getui() __attribute__((noinline));
unsigned int f_getui() 
{
	printf("f_getui: %d", 20);
	return (unsigned int)(1);
}

unsigned long f_getul() __attribute__((noinline));
unsigned long f_getul() 
{
	printf("f_getul: %d", 21);
	return (unsigned long)(1);
}

uint64_t f_getui64() __attribute__((noinline));
uint64_t f_getui64() 
{
	printf("f_getui64: %d", 22);
	return (uint64_t)(1);
}



static void 
crc32_gentab (void)
{
	uint32_t crc;
	const uint32_t poly = 0xEDB88320UL;
	int i, j;
	
	for (i = 0; i < 256; i++) {
		crc = i;
		for (j = 8; j > 0; j--) {
			if (crc & 1) {
				crc = (crc >> 1) ^ poly;
			} else {
				crc >>= 1;
			}
		}
		crc32_tab[i] = crc;
	}
}

static void 
crc32_byte (uint8_t b) {
	crc32_context = 
		((crc32_context >> 8) & 0x00FFFFFF) ^ 
		crc32_tab[(crc32_context ^ b) & 0xFF];
}

#if defined(__SPLAT__) || defined(NO_LONGLONG)
static void 
crc32_8bytes (uint32_t val)
{
	crc32_byte ((val>>0) & 0xff);
	crc32_byte ((val>>8) & 0xff);
	crc32_byte ((val>>16) & 0xff);
	crc32_byte ((val>>24) & 0xff);
}

static void 
transparent_crc (uint32_t val, char* vname, int flag)
{
	crc32_8bytes(val);
	if (flag) {
  		printf("...checksum after hashing %s : %X\n", vname, crc32_context ^ 0xFFFFFFFFU);
	}
}
#else
static void 
crc32_8bytes (uint64_t val)
{
	crc32_byte ((val>>0) & 0xff);
	crc32_byte ((val>>8) & 0xff);
	crc32_byte ((val>>16) & 0xff);
	crc32_byte ((val>>24) & 0xff);
	crc32_byte ((val>>32) & 0xff);
	crc32_byte ((val>>40) & 0xff);
	crc32_byte ((val>>48) & 0xff);
	crc32_byte ((val>>56) & 0xff);
}

static void 
transparent_crc (uint64_t val, char* vname, int flag)
{
	crc32_8bytes(val);
	if (flag) {
  		printf("...checksum after hashing %s : %lX\n", vname, crc32_context ^ 0xFFFFFFFFUL);
	}
}

#endif

static void 
transparent_crc_bytes (char *ptr, int nbytes, char* vname, int flag)
{
    int i;
    for (i=0; i<nbytes; i++) {
        crc32_byte(ptr[i]);
    }
	if (flag) {
  		printf("...checksum after hashing %s : %lX\n", vname, crc32_context ^ 0xFFFFFFFFUL);
	}
}

/*****************************************************************************/

#endif

#endif /* RANDOM_RUNTIME_H */

/*
 * Local Variables:
 * c-basic-offset: 4
 * tab-width: 4
 * End:
 */

/* End of file. */
