# Unofficial Java Installer
[![Github Releases](https://img.shields.io/github/downloads/panther7/java-installer/total.svg)](https://github.com/panther7/java-installer/releases)
[![GitHub release](https://img.shields.io/github/release/panther7/java-installer.svg)](https://jdk.java.net/)


## Introduction
Synology DSM package for installing the latest Oracle Java binaries on Synology NAS devices.


## Installation on Synology NAS
Add the following __Package Source__ to Synology DSM ► Package Center ► Settings ► Package Sources:

https://get.filebot.net/syno/

On install, the package will download the latest [OpenJDK](https://jdk.java.net/) (250 MB) for your platform. This may take a while.


## Installation on Linux
The [get-java.sh](https://github.com/panther7/java-installer/blob/latest/release/get-java.sh) shell script should work on any Linux device:

```bash
# Download the latest JDK into the current directory & link java to /usr/local/bin
curl -O https://raw.githubusercontent.com/panther7/java-installer/latest/release/get-java.sh
sh get-java.sh install
```


## Installation on Windows
The [get-java.ps1](https://github.com/panther7/java-installer/blob/latest/release/get-java.ps1) PowerShell script requires Windows 8 or higher:

```powershell
Invoke-WebRequest https://raw.githubusercontent.com/panther7/java-installer/latest/release/get-java.ps1 -OutFile get-java.ps1 -UseBasicParsing
powershell -File get-java.ps1 install
```

The script uses `7z` to extract the `*.tar.gz` archive, but it will _not_ modify `JAVA_HOME` or the `PATH`.


## Supported Platforms
* Linux ARM v6/v7 Hard Float ABI (`armv7l`)
* Linux ARM v8 Hard Float ABI (`armv8`)
* Linux x86 (`i686`)
* Linux x64 (`x86_64`)
* Windows x86	(`x86`)
* Windows x64	(`AMD64`)
* macOS x64(`x86_64`)


## Package Sources
* [OpenJDK](https://jdk.java.net/)
* [OpenJFX](https://gluonhq.com/products/javafx/)
* [Liberica JDK](https://bell-sw.com/pages/downloads/)
