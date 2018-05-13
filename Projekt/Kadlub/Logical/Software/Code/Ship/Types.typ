
TYPE
	ParametersStruct : 	STRUCT 
		PumpSpeed : REAL;
	END_STRUCT;
	ShipStruct : 	STRUCT 
		aiEncoder : REAL;
		cpEncoderZero : REAL;
		coPump1 : REAL;
		coPump2 : REAL;
		cpButtonStart : BOOL;
		cpButtonStop : BOOL;
		cpButtonCalibrate : BOOL;
		cpSystemActive : BOOL;
	END_STRUCT;
END_TYPE
