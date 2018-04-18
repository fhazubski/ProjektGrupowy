
TYPE
	PumpStruct : 	STRUCT 
		doIsPumpEnabled : BOOL;
		aoPumpSpeed : REAL;
		ciIsPumpEnabled : BOOL;
		ciPumpSpeed : REAL;
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
