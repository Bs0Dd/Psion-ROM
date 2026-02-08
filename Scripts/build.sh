#!/bin/bash

# This build script generates a zip file structured for use with MAME.

ROOT_DIRECTORY="$( cd "$( dirname "$( dirname "${BASH_SOURCE[0]}" )" )" &> /dev/null && pwd )"
BUILD_DIRECTORY="$ROOT_DIRECTORY/build"


# Clean up and recreate the build directory.
if [ -d "$BUILD_DIRECTORY" ]; then
    rm -r "$BUILD_DIRECTORY"
fi
mkdir -p "$BUILD_DIRECTORY"

cd "$BUILD_DIRECTORY"

mkdir psion3
cp "$ROOT_DIRECTORY/Series3/s3_v1.91f_multi/s3_v1.91f_multi.bin" psion3
cp "$ROOT_DIRECTORY/Series3/s3_v1.80f_multi/s3_v1.80f_multi.bin" psion3
cp "$ROOT_DIRECTORY/Series3/s3_v1.77f_eng/s3_v1.77f_eng1.bin" psion3/3504-3001-01_19-11-91v1.77f_eng.bin
cp "$ROOT_DIRECTORY/Series3/s3_v1.77f_eng/s3_v1.77f_eng2.bin" psion3/3504-3002-01_19-11-91v1.77f_eng.bin

mkdir psion3s
cp "$ROOT_DIRECTORY/Series3/s3_v1.91f_eng/s3_v1.91f_eng.bin" psion3s

mkdir psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.22f_eng/s3a_v3.22f_eng.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.41f_ger/s3a_v3.41f_ger.bin" psion3a/s3a_v3.41f_deu.bin
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.43f_rus/s3a_v3.43f_rus.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_usa/s3a_v3.40f_usa.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_ita/s3a_v3.40f_ita.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_eng/s3a_v3.40f_eng.bin" psion3a

mkdir psion3c
cp "$ROOT_DIRECTORY/Series3c/oak_v5.20f_eng/oak_v5.20f_eng.bin" psion3c

mkdir psion3mx
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.16f_eng/maple_v6.16f_eng.bin" psion3mx/maple_v6.16f_uk.bin
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.17f_nl/maple_v6.17f_nl.bin" psion3mx
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.20f_fre/maple_v6.20f_fre.bin" psion3mx

mkdir siena
cp "$ROOT_DIRECTORY/Siena/vine_v4.20f_eng/vine_v4.20f_eng.bin" siena
cp "$ROOT_DIRECTORY/Siena/vine_v4.21f_fre/vine_v4.21f_fre.bin" siena/vine_v4.21f_frn.bin

mkdir psionwa
cp "$ROOT_DIRECTORY/Workabout/w1_v2.40f_eng/w1_v2.40f_eng.bin" psionwa/w1_v2.40f.bin
cp "$ROOT_DIRECTORY/Workabout/w1_v1.00f_eng/w1_v1.00f_eng.bin" psionwa/w1_v1.00f.bin
cp "$ROOT_DIRECTORY/Workabout/w1_v0.24b_eng/w1_v0.24b_eng.bin" psionwa/w1_v0.24b.bin

mkdir psionwamx
cp "$ROOT_DIRECTORY/WorkaboutMX/w2mx_v7.20f_eng/w2mx_v7.20f_eng.bin" psionwamx/w2mx_v7.20f.bin

mkdir pocketbk
cp "$ROOT_DIRECTORY/Series3/pb_v1.91f_acn/acspell.bin" pocketbk
cp "$ROOT_DIRECTORY/Series3/pb_v1.91f_acn/pb_v1.91f_acn.bin" pocketbk

mkdir pocketbk2
cp "$ROOT_DIRECTORY/Series3a/pb2_v1.30f_acn/pb2_v1.30f_acn.bin" pocketbk2

mkdir series5mx
cp "$ROOT_DIRECTORY/5mx/5mx_v1.05(255)_10_eng/5mx_v1.05(255)_10_eng.bin" psion5mx/5mx.rom

zip -r "mame-roms.zip" *
