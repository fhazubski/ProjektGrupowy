PROGRAM _INIT
	Parameters.PumpSpeed := 500;
	
	Ship.coPump1        := 0;
	Ship.coPump2        := 0;
	Ship.cpSystemActive := FALSE;
END_PROGRAM

PROGRAM _CYCLIC
	IF Ship.cpButtonCalibrate THEN
		Ship.cpEncoderZero := Ship.aiEncoder;
	END_IF;
	
	Ship.cpSystemActive :=
	( NOT Ship.cpButtonStop ) AND
	( Ship.cpButtonStart OR Ship.cpSystemActive );


	IF ( Ship.cpSystemActive ) AND
		( Ship.aiEncoder < Ship.cpEncoderZero ) THEN
		Ship.coPump1 := Parameters.PumpSpeed;
	ELSE
		Ship.coPump1 := 0;
	END_IF;
	
	IF ( Ship.cpSystemActive ) AND
		( Ship.aiEncoder > Ship.cpEncoderZero ) THEN
		Ship.coPump2 := Parameters.PumpSpeed;
	ELSE
		Ship.coPump2 := 0;
	END_IF;


	Ship.cpButtonStart := FALSE;
	Ship.cpButtonStop := FALSE;
	Ship.cpButtonCalibrate := FALSE;	
END_PROGRAM

PROGRAM _EXIT
	Ship.coPump1 := 0;
	Ship.coPump2 := 0;
END_PROGRAM

