
TYPE
	ParametersStruct : 	STRUCT 
		PumpSpeed : UINT;
		Password : STRING[80];
		PasswordCheck : BOOL;
		HideLayer : USINT;
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
		cpUpdatePump : BOOL;
		cpUpdatePumpTon : TON;
		cpKeepPumpTon : TON;
		cpPrevEncoder : INT;
	END_STRUCT;
END_TYPE
