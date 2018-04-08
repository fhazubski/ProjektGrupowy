$(AS_CPU_PATH)/ashwac.br: \
	FORCE \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw 
	@'$(AS_BIN_PATH)/BR.AS.SystemConfiguration.Builder.exe' '$(AS_PROJECT_CONFIG_PATH)/Hardware.hw'  -L 'AsIecCon: V*, astime: V*, operator: V*, runtime: V*' -c '$(AS_CONFIGURATION)' -Z 'Acp10Arnc0: 3.18.2, mapp: 1.62.1, UnitSystem: n.d, TextSystem: n.d, Connectivity: n.d, AAS: n.d' -o '$(AS_CPU_PATH)/ashwac.br' -T SG4  -M IA32  -B E3.10 -P '$(AS_PROJECT_PATH)' -s 'CP1486' -secret '$(AS_PROJECT_PATH)_br.as.systemconfiguration.builder.exe'

FORCE:

-include $(AS_CPU_PATH)/Force.mak 
