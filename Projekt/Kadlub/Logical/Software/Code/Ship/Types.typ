
TYPE
	PlantStruct : 	STRUCT 
		uiTemperaturaHiHi : ARRAY[0..10]OF REAL;
		uiTemperatura : ARRAY[0..10]OF REAL;
		aiTemperatura : ARRAY[0..10]OF INT;
		doLampAlarmHiHi : ARRAY[0..10]OF BOOL;
	END_STRUCT;
	SystemStruct : 	STRUCT 
		uiStop : BOOL;
		uiStart : BOOL;
		diStop : BOOL;
		diStart : BOOL;
		uiSystemAktywny : BOOL;
		doSystemAktywny : BOOL;
	END_STRUCT;
END_TYPE
