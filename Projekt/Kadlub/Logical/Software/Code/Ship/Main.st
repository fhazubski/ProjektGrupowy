PROGRAM _INIT
	FOR i := 0 TO 2 BY 1 DO 
		PumpArray[i].ciIsPumpEnabled := FALSE;
		PumpArray[i].ciPumpSpeed := 0;	
		PumpArray[i].doIsPumpEnabled := FALSE;
		PumpArray[i].aoPumpSpeed := 0;
	END_FOR
END_PROGRAM

PROGRAM _CYCLIC
	/// switch - dwa tryby - manualny i automatyczny
	FOR i := 0 TO 2 BY 1 DO 
		PumpArray[i].doIsPumpEnabled := PumpArray[i].ciIsPumpEnabled;
		PumpArray[i].aoPumpSpeed := 1;
	END_FOR;
END_PROGRAM

PROGRAM _EXIT
	// Empty
END_PROGRAM

