# Java Installer for OpenJDK 16.0.1


param (
	[string]$command = 'get',
	[string]$type = 'jdk',
	[string]$arch = 'x86_64',
	[string]$os = 'Windows',
	[string]$out
)


$ErrorActionPreference = "Stop"


Switch ("$os $arch $type") {
	"Linux x86_64 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-amd64.tar.gz"
		$JDK_SHA256 = "898562489c1540fc2573f283aff13fa0641cb63c37f178f5189bcd5da6a8c4eb"
	}
	"Linux i686 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-i586.tar.gz"
		$JDK_SHA256 = "a33a9b92380759e0e9efc6f3f08cf403cd9dfa4b3fbdefe77bbee67b431b3370"
	}
	"Linux aarch64 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-aarch64.tar.gz"
		$JDK_SHA256 = "8c96ff899fd0916ac94337dde4d45fea5bb932badde2ee427dedc40ad8534286"
	}
	"Linux armv7l jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-arm32-vfp-hflt.tar.gz"
		$JDK_SHA256 = "3b701e52122419e6dd66e1086a2cba7613d63e6fd9073afcce1dfe7e9f1404b7"
	}
	"Linux ppc64le jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-linux-ppc64le.tar.gz"
		$JDK_SHA256 = "197b45dd685212307fa8affa9bdba0549b826dcafd770e4b20c2feaffd4b787b"
	}

	"Linux x86_64 jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-amd64.tar.gz"
		$jre_SHA256 = "606e63173c0325734d5475d1dd987d5debeed1aa1817632f31edaed9372fd12f"
	}
	"Linux i686 jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-i586.tar.gz"
		$jre_SHA256 = "dc7c1fc600790506f4ffa707605d1202ec1f362e4be74945cea1a24bb807dd38"
	}
	"Linux aarch64 jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-aarch64.tar.gz"
		$jre_SHA256 = "cdb1da7d98ce4c71ff90fa09ce53a45a82e69ccc06386182f675e58edc865346"
	}
	"Linux armv7l jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-arm32-vfp-hflt.tar.gz"
		$jre_SHA256 = "af3a1d0852361879263fc164a71a008fb891c90aadd01f4b759e758d7ef8857a"
	}
	"Linux ppc64le jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-linux-ppc64le.tar.gz"
		$jre_SHA256 = "ce743577b9fcc8002354d4ecff42b4657ced98db958a10cd24f6866492649bd3"
	}	

	"Darwin x86_64 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-macos-amd64.zip"
		$JDK_SHA256 = "a42eab3978fa02f239fb4106d58340e83464080e91b131dbd88477185b422fba"
	}

	"Darwin x86_64 jre" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-macos-amd64.zip"
		$JDK_SHA256 = "3695ca637adf73993a1b33fcda686715451a9c23fa805120ca80af586042917e"
	}

	"Windows x86_64 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-amd64.zip"
		$JDK_SHA256 = "2e11bba34456e02d65f85cb02fc7f0c713209f24214c7537ef1de9fc2307c495"
	}
	"Windows x86 jdk" {
		$JDK_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-i586.zip"
		$JDK_SHA256 = "429c96779a94a7e9e266acc304c77e79c5524f4d7c1410c62869e1720459e7c7"
	}

	"Windows x86_64 jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-amd64.zip"
		$jre_SHA256 = "9e6de85d5ca021f46074ca10559ff7e467cc1b5f72991f95031ba10f100ec122"
	}
	"Windows x86 jre" {
		$jre_URL = "https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-i586.zip"
		$jre_SHA256 = "8e8fc65d632a6d62dd0892b377598c58249de6f0a3716f3a2cf70a83c4ecf53f"
	}

	"Linux x86_64 jfx" {
		$JDK_URL = "https://download2.gluonhq.com/openjfx/16/openjfx-16_linux-x64_bin-jmods.zip"
		$JDK_SHA256 = "6d9d974119efafc9d3634c588dc4c94315db76d41693d09470b43922557bcfb4"
	}
	"Darwin x86_64 jfx" {
		$JDK_URL = "https://download2.gluonhq.com/openjfx/16/openjfx-16_osx-x64_bin-jmods.zip"
		$JDK_SHA256 = "054f850ed72a959f524ffa2adbbf7aa13292d85f1e09f414a754e6d40e43ecbc"
	}
	"Windows x86_64 jfx" {
		$JDK_URL = "https://download2.gluonhq.com/openjfx/16/openjfx-16_windows-x64_bin-jmods.zip"
		$JDK_SHA256 = "29b5b3086a03e4d991be761be887d6a878cdc5edeab896d9f2e0587a97f7f03f"
	}

	default {
		throw "CPU architecture not supported."
	}
}


# fetch JDK
if ($out) {
	$JDK_TAR_GZ = $out
} else {
	$JDK_TAR_GZ = Split-Path -Leaf $JDK_URL	
}


if (!(test-path $JDK_TAR_GZ)) {
	Write-Output "Download $JDK_URL"
	(New-Object System.Net.WebClient).DownloadFile($JDK_URL, $JDK_TAR_GZ)
}


# verify archive via SHA-256 checksum
$JDK_SHA256_ACTUAL = (Get-FileHash -Algorithm SHA256 $JDK_TAR_GZ).hash.toLower()
Write-Output "Expected SHA256 checksum: $JDK_SHA256"
Write-Output "Actual SHA256 checksum: $JDK_SHA256_ACTUAL"

if ($JDK_SHA256 -ne $JDK_SHA256_ACTUAL) {
	throw "ERROR: SHA256 checksum mismatch"
}


# extract and link only if explicitly requested
if ($command -ne "install") {
	Write-Output "Download complete: $JDK_TAR_GZ"
	return
}


# extract zip archive
Write-Output "Extract $JDK_TAR_GZ"
Expand-Archive -Path $JDK_TAR_GZ -DestinationPath .


# find java executable
$JAVA_EXE = Get-ChildItem -recurse -include java.exe | Sort-Object LastWriteTime | Select-Object -ExpandProperty FullName -Last 1

# test
Write-Output "Execute ""$JAVA_EXE"" -XshowSettings -version"
& $JAVA_EXE -XshowSettings -version


# set %JAVA_HOME% and add java to %PATH%
$JAVA_HOME = Split-Path -Parent (Split-Path -Parent $JAVA_EXE)

Write-Output "`nPlease add JAVA_HOME\bin to the PATH if you have not done so already:"
Write-Output "`n`t%JAVA_HOME%\bin"
Write-Output "`nPlease set JAVA_HOME:"
Write-Output "`n`tsetx JAVA_HOME ""$JAVA_HOME"""
