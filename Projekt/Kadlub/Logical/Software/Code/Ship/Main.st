
PROGRAM _INIT
	(* Insert code here *)
	 Plant[0].uiTemperaturaHiHi[0]:=370; //Temperatura alarmowa
END_PROGRAM

PROGRAM _CYCLIC
	Plant[0].uiTemperatura[0]:=INT_TO_REAL(Plant[0].aiTemperatura[0]);
	
	IF Plant[0].uiTemperatura[0]> Plant[0].uiTemperaturaHiHi[0] THEN
		Plant[0].doLampAlarmHiHi[0] := TRUE;
	ELSE
		Plant[0].doLampAlarmHiHi[0] := FALSE;
	END_IF
	
		
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

