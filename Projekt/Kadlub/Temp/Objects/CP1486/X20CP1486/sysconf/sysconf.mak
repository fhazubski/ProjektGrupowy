$(AS_CPU_PATH)/sysconf.br: \
	FORCE \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw 
	@'$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe' '$(AS_PROJECT_CONFIG_PATH)/Hardware.hw'  -c CP1486 -sysconf -S 'X20CP1486' -Z 'Acp10Arnc0: 3.18.2, mapp: 1.62.1, UnitSystem: n.d, TextSystem: n.d, Connectivity: n.d, AAS: n.d' -o '$(AS_CPU_PATH)/sysconf.br' -T SG4  -B E3.10 -P '$(AS_PROJECT_PATH)' -s 'CP1486' -secret '$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe'

FORCE:

-include $(AS_CPU_PATH)/Force.mak 
