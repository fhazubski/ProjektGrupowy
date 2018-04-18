PROGRAM _INIT
	FOR i := 0 TO 2 BY 1 DO 
		PumpArray[i].ciIsPumpEnabled := FALSE;
		PumpArray[i].ciPumpSpeed := 0;	
		PumpArray[i].doIsPumpEnabled := FALSE;
		PumpArray[i].aoPumpSpeed := 0;
	END_FOR;
END_PROGRAM

PROGRAM _CYCLIC
		(*
	Plant[0].uiTemperatura[0]:=INT_TO_REAL(Plant[0].aiTemperatura[0]);
	
	IF Plant[0].uiTemperatura[0]> Plant[0].uiTemperaturaHiHi[0] THEN
		Plant[0].doLampAlarmHiHi[0] := TRUE;
	ELSE
		Plant[0].doLampAlarmHiHi[0] := FALSE;
	END_IF
	*)
END_PROGRAM

PROGRAM _EXIT
	// Empty
END_PROGRAM

