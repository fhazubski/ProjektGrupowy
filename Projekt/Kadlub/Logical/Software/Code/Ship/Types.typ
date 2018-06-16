
TYPE
	ParametersStruct : 	STRUCT 
		PumpSpeed : UINT;
		Password : STRING[80];
		PasswordCheck : BOOL;
		HideLayer : USINT;
		CalibrationCheck : BOOL;
		Algorithm : STRING[80];
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
		cpUpdatePumpTon : TON;
		cpKeepPumpTon : TON;
		cpPrevEncoder : INT;
		cpButtonRestart : BOOL;
	END_STRUCT;
END_TYPE
