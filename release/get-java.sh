#!/bin/sh

# Java Installer for OpenJDK 16.0.1

COMMAND=${1:-get}        # get | install
TYPE=${2:-jre}           # jre | jdk
ARCH=${3:-`uname -m`}    # x86_64 | i686 | aarch64 | armv7l | etc
OS=${4:-`uname -s`}      # Linux | Darwin | Windows | etc

case "$OS $ARCH $TYPE" in
	"Linux x86_64 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-amd64.tar.gz"
		JDK_SHA256="898562489c1540fc2573f283aff13fa0641cb63c37f178f5189bcd5da6a8c4eb"
	;;
	"Linux i686 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-i586.tar.gz"
		JDK_SHA256="a33a9b92380759e0e9efc6f3f08cf403cd9dfa4b3fbdefe77bbee67b431b3370"
	;;
	"Linux aarch64 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-aarch64.tar.gz"
		JDK_SHA256="650f04865bdd3267ab7d1ae459dc34a430b6b6c2c6f04c479f01c728717bda48"
	;;
	"Linux armv7l jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-arm32-vfp-hflt.tar.gz"
		JDK_SHA256="3b701e52122419e6dd66e1086a2cba7613d63e6fd9073afcce1dfe7e9f1404b7"
	;;
	"Linux ppc64le jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-ppc64le.tar.gz"
		JDK_SHA256="197b45dd685212307fa8affa9bdba0549b826dcafd770e4b20c2feaffd4b787b"
	;;

	"Linux x86_64 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-amd64.tar.gz"
		JDK_SHA256="606e63173c0325734d5475d1dd987d5debeed1aa1817632f31edaed9372fd12f"
	;;
	"Linux i686 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-i586.tar.gz"
		JDK_SHA256="dc7c1fc600790506f4ffa707605d1202ec1f362e4be74945cea1a24bb807dd38"
	;;
	"Linux aarch64 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-aarch64.tar.gz"
		JDK_SHA256="cdb1da7d98ce4c71ff90fa09ce53a45a82e69ccc06386182f675e58edc865346"
	;;
	"Linux armv7l jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-arm32-vfp-hflt.tar.gz"
		JDK_SHA256="af3a1d0852361879263fc164a71a008fb891c90aadd01f4b759e758d7ef8857a"
	;;
	"Linux ppc64le jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-ppc64le.tar.gz"
		JDK_SHA256="ce743577b9fcc8002354d4ecff42b4657ced98db958a10cd24f6866492649bd3"
	;;
	
	"Darwin x86_64 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-macos-amd64.zip"
		JDK_SHA256="a42eab3978fa02f239fb4106d58340e83464080e91b131dbd88477185b422fba"
	;;

	"Darwin x86_64 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-macos-amd64.zip"
		JDK_SHA256="3695ca637adf73993a1b33fcda686715451a9c23fa805120ca80af586042917e"
	;;

	"Windows x86_64 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-amd64.zip"
		JDK_SHA256="2e11bba34456e02d65f85cb02fc7f0c713209f24214c7537ef1de9fc2307c495"
	;;
	"Windows x86 jdk")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-i586.zip"
		JDK_SHA256="429c96779a94a7e9e266acc304c77e79c5524f4d7c1410c62869e1720459e7c7"
	;;

	"Windows x86_64 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-amd64.zip"
		JDK_SHA256="5ded21a351d1fc8823a647b63bdd364009ab84945efcbc84ba44ec0e73133878"
	;;
	"Windows x86 jre")
		JDK_URL="https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-i586.zip"
		JDK_SHA256="8e8fc65d632a6d62dd0892b377598c58249de6f0a3716f3a2cf70a83c4ecf53f"
	;;	

	"Linux x86_64 jfx")
		JDK_URL="https://download2.gluonhq.com/openjfx/16/openjfx-16_linux-x64_bin-jmods.zip"
		JDK_SHA256="6d9d974119efafc9d3634c588dc4c94315db76d41693d09470b43922557bcfb4"
	;;
	"Darwin x86_64 jfx")
		JDK_URL="https://download2.gluonhq.com/openjfx/16/openjfx-16_osx-x64_bin-jmods.zip"
		JDK_SHA256="054f850ed72a959f524ffa2adbbf7aa13292d85f1e09f414a754e6d40e43ecbc"
	;;
	"Windows x86_64 jfx")
		JDK_URL="https://download2.gluonhq.com/openjfx/16/openjfx-16_windows-x64_bin-jmods.zip"
		JDK_SHA256="29b5b3086a03e4d991be761be887d6a878cdc5edeab896d9f2e0587a97f7f03f"
	;;

	*)
		echo "Architecture not supported: $OS $ARCH $TYPE"
		exit 1
	;;
esac


# fetch JDK
JDK_TAR_GZ=${5:-`basename $JDK_URL`}

if [ ! -f "$JDK_TAR_GZ" ]; then
	echo "Download $JDK_URL"
	curl -L -o "$JDK_TAR_GZ" --retry 5 "$JDK_URL"
fi


# verify archive via SHA-256 checksum
JDK_SHA256_ACTUAL=`openssl dgst -sha256 -hex "$JDK_TAR_GZ" | awk '{print $NF}'`
echo "Expected SHA256 checksum: $JDK_SHA256"
echo "Actual SHA256 checksum: $JDK_SHA256_ACTUAL"

if [ "$JDK_SHA256" != "$JDK_SHA256_ACTUAL" ]; then
	echo "ERROR: SHA256 checksum mismatch"
	exit 1
fi


# extract and link only if explicitly requested
if [ "$COMMAND" != "install" ]; then
	echo "Download complete: $JDK_TAR_GZ"
	exit 0
fi


echo "Extract $JDK_TAR_GZ"
tar -v -zxf "$JDK_TAR_GZ"

# find java executable
JAVA_EXE=`find "$PWD" -name "java" -type f | head -n 1`

# link executable into /usr/local/bin/java
mkdir -p "/usr/local/bin"
ln -s -f "$JAVA_EXE" "/usr/local/bin/java"

# link java home to /usr/local/java
JAVA_BIN=`dirname $JAVA_EXE`
JAVA_HOME=`dirname $JAVA_BIN`
ln -s -f "$JAVA_HOME" "/usr/local/java"

# test
echo "Execute $JAVA_EXE -XshowSettings -version"
"$JAVA_EXE" -XshowSettings -version
