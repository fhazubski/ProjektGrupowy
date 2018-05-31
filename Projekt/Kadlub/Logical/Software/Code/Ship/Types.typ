
TYPE
	ParametersStruct : 	STRUCT 
		PumpSpeed : UINT;
	END_STRUCT;
	ShipStruct : 	STRUCT 
		aiEncoder : INT;
		cpEncoderZero : INT;
		coPump1 : UINT;
		coPump2 : UINT;
		cpButtonStart : BOOL;
		cpButtonStop : BOOL;
		cpButtonCalibrate : BOOL;
		cpSystemActive : BOOL;
		aiPassword : USINT;
	END_STRUCT;
END_TYPE
