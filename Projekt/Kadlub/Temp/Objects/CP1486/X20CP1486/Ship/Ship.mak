UnmarkedObjectFolder := C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/Code/Ship
MarkedObjectFolder := C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/Code/Ship

$(AS_CPU_PATH)/Ship.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/Ship/Ship.ox
	@'$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe' '$(AS_CPU_PATH)/Ship/Ship.ox' -o '$(AS_CPU_PATH)/Ship.br' -v V1.00.0 -f '$(AS_CPU_PATH)/NT.ofs' -offsetLT '$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs' -T SG4  -M IA32  -B E3.10 -extConstants -d 'runtime: V* - V*,asieccon: V* - V*' -r Cyclic4 -p 2 -s 'Software.Code.Ship' -L 'AsIecCon: V*, astime: V*, operator: V*, runtime: V*' -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.taskbuilder.exe'

$(AS_CPU_PATH)/Ship/Ship.ox: \
	$(AS_CPU_PATH)/Ship/a.out
	@'$(AS_BIN_PATH)/BR.AS.Backend.exe' '$(AS_CPU_PATH)/Ship/a.out' -o '$(AS_CPU_PATH)/Ship/Ship.ox' -T SG4 -r Cyclic4   -G V4.1.2  -B E3.10 -secret '$(AS_PROJECT_PATH)_br.as.backend.exe'

$(AS_CPU_PATH)/Ship/a.out: \
	$(AS_CPU_PATH)/Ship/Main.st.o
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' -link '$(AS_CPU_PATH)/Ship/Main.st.o'  -o '$(AS_CPU_PATH)/Ship/a.out'  -G V4.1.2  -T SG4  -M IA32  '-Wl,$(AS_SYSTEM_PATH)/E0310/SG4/libAsIecCon.a' '-Wl,$(AS_SYSTEM_PATH)/E0310/SG4/libastime.a' '-Wl,$(AS_SYSTEM_PATH)/E0310/SG4/libruntime.a' '-Wl,$(AS_SYSTEM_PATH)/E0310/SG4/liboperator.a' -specs=I386specs -Wl, -nostdlib '-Wl,$(AS_GNU_INST_PATH)/i386-elf/lib/libasiec.a' -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Ship/Main.st.o: \
	$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Main.st \
	$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Variables.var \
	$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Types.typ
	@'$(AS_BIN_PATH)/BR.AS.IecCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Main.st' -o '$(AS_CPU_PATH)/Ship/Main.st.o'  -T SG4  -M IA32  -B E3.10 -G V4.1.2  -s 'Software.Code.Ship' -t '$(AS_TEMP_PATH)' -pointers -extComments -extBitAccess -extConstants -D _SG4 -l '$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Types.typ' '$(AS_PROJECT_PATH)/Logical/Software/Code/Ship/Variables.var' -g '$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.typ' '$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.typ' '$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ' '$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.typ' '$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.fun' '$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.fun' '$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun' '$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun' '$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.var' '$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.var' '$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var' '$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.var' '$(AS_PROJECT_PATH)/Logical/Global.typ' '$(AS_PROJECT_PATH)/Logical/Global.var'  -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.ieccompiler.exe'

-include $(AS_CPU_PATH)/Force.mak 

