SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Git\cmd;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.3.5.113 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Liss_5
export AS_PATH := C:/BrAutomation/AS43
export AS_BIN_PATH := C:/BrAutomation/AS43/Bin-en
export AS_PROJECT_PATH := C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub
export AS_PROJECT_NAME := Kadlub
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS43/AS/VC
export AS_TEMP_PATH := C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Temp
export AS_CONFIGURATION := CP1486
export AS_BINARIES_PATH := C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS43
export WIN32_AS_PATH := "C:\BrAutomation\AS43"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS43\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\projects\Stabilizacja_ukladu_statek\ProjektGrupowy_git\Projekt\Kadlub"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS43\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\projects\Stabilizacja_ukladu_statek\ProjektGrupowy_git\Projekt\Kadlub\Temp"
export WIN32_AS_BINARIES_PATH := "C:\projects\Stabilizacja_ukladu_statek\ProjektGrupowy_git\Projekt\Kadlub\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS43\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS43"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Kadlub.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Temp/Objects/$(AS_CONFIGURATION)/X20CP1486/#cpu.mak' -k 

