PROGRAM _INIT
	Parameters.PumpSpeed := 500;
	Parameters.PasswordCheck := FALSE;
	Parameters.CalibrationCheck := FALSE;
	Parameters.Algorithm := ' Korzystasz z algorytmu PID ';
	Ship.coPump1            := 0;
	Ship.coPump2            := 0;
	Ship.cpSystemActive     := FALSE;
	Ship.cpPrevEncoder      := Ship.aiEncoder;
	Ship.cpEncoderZero      := 0;
	Ship.cpUpdatePumpTon.PT := T#100ms;
	Ship.cpKeepPumpTon.PT   := T#50ms;
	Ship.cpButtonRestart	:= FALSE;
	previousDistanceChange	:= 0;
	distanceChange	        := 0;
	previousEncoder	        := Ship.aiEncoder;
	acceleration            := 0;
	pumpOut                 := 0;
	
	usePID := TRUE;
	
	PID.Enable := TRUE; (* Aktywacja algorytmu PID*)
	
	(* Parametry algorytmu PID*)
	PID.PIDParameters.Gain:= 2.05; //Wzmocnienie Kp
	PID.PIDParameters.IntegrationTime:= 3.0; //Czas zdwojenia Ti - stale ladowanie funkcji
	PID.PIDParameters.DerivativeTime:= 0.1; //Czas wyprzedzenia Td
	PID.PIDParameters.FilterTime:= 0.16; //Sta³a czasowa filtracji bloku D

	(* Ograniczenia sygna³u CV*)
	PID.MinOut:= -1000.0;
	PID.MaxOut:= 1000.0;

END_PROGRAM

PROGRAM _CYCLIC
	// sprawdzam haslo
	IF (  Parameters.Password = 'grupa30b' ) THEN
		Parameters.PasswordCheck := TRUE;
	ELSE
		Parameters.PasswordCheck := FALSE;
	END_IF

	
	
	IF Ship.cpButtonRestart THEN
		Parameters.CalibrationCheck := FALSE;
		Ship.coPump1            := 0;
		Ship.coPump2            := 0;
		Ship.cpSystemActive     := FALSE;
		Ship.cpPrevEncoder      := Ship.aiEncoder;
		Ship.cpEncoderZero      := 0;
		usePID := TRUE;
	END_IF;
	
	IF Ship.cpButtonCalibrate THEN
		Parameters.PasswordCheck := TRUE;
		Parameters.CalibrationCheck := Ship.cpButtonCalibrate;
		Ship.cpEncoderZero := Ship.aiEncoder;
	END_IF;
	
	//zrobione tak, aby byla mozliwosc zmiany algorytmu przed wlaczeniem systemu
	IF ( usePID ) THEN
		Parameters.Algorithm := ' Korzystasz z algorytmu PID ';
	ELSE
		Parameters.Algorithm := ' Korzystasz z algorytmu autorow ';
	END_IF;
		
		
	Ship.cpSystemActive :=
	( NOT Ship.cpButtonStop ) AND
	( Ship.cpButtonStart OR Ship.cpSystemActive );
	
	(* Do przetestowania:
	   - funkcja PID z biblioteki MTBasics
	   - PID ISA 
	   - PD, ustawic update na false *)
	IF ( Ship.cpSystemActive AND ( NOT manualPump1 ) AND ( NOT manualPump2 ) ) THEN
		(* Zaktualizuj predkosci pomp *)
		
		
		IF ( usePID ) THEN
				PID.SetValue := Ship.cpEncoderZero; //Sygna³ SP
			PID.ActValue := Ship.aiEncoder;     //Sygna³ PV

			(* Wywo³anie algorytmu – FUB*)
			PID();

			pumpOut := PID.Out * (-1.0);// Sygna³ CV
			IF (pumpOut < 0.0) THEN
				pumpOut := pumpOut - 100.0;
			ELSE
				pumpOut := pumpOut + 100.0;
			END_IF
		ELSE
			Parameters.Algorithm := ' Korzystasz z algorytmu autorow ';
			IF ( Ship.cpUpdatePumpTon.Q ) THEN
				previousDistanceChange := distanceChange;
				distanceChange := INT_TO_REAL(Ship.aiEncoder - previousEncoder);
				previousEncoder := Ship.aiEncoder;
			END_IF
			acceleration := previousDistanceChange - distanceChange;
			pumpOut := acceleration;
		
			IF ( ABS(pumpOut) <= 3.0 ) THEN
				pumpOut := INT_TO_REAL(Ship.aiEncoder - Ship.cpEncoderZero);	
			ELSE
				pumpOut := pumpOut * 7.0;
			END_IF
			
			IF ( ABS(pumpOut) > 50.0 ) THEN
				Ship.cpKeepPumpTon.PT   := T#10ms;
				pumpOut := pumpOut * 2.0;
			ELSIF ( ABS(pumpOut) > 40.0 ) THEN
				Ship.cpKeepPumpTon.PT   := T#10ms;
				pumpOut := pumpOut * 2.0;
			ELSIF ( ABS(pumpOut) > 30.0 ) THEN
				Ship.cpKeepPumpTon.PT   := T#10ms;
				pumpOut := pumpOut * 1.5;
			ELSE
				Ship.cpKeepPumpTon.PT   := T#10ms;
				pumpOut := pumpOut * 1.0;
			END_IF
						
			IF ( pumpOut < 0.0 ) THEN
				pumpOut := pumpOut - 95.0;
			ELSE 
				pumpOut := pumpOut + 95.0;
			END_IF
			
			IF ( pumpOut < -1000.0 ) THEN
				pumpOut := -1000.0;
			ELSIF ( pumpOut > 1000.0 ) THEN
				pumpOut := 1000.0;
			END_IF
		END_IF
		
		IF ( pumpOut > 100.0 ) THEN
			IF ( pumpOut > UINT_TO_INT(Ship.coPump2) ) OR
				( Ship.cpKeepPumpTon.Q AND ( NOT usePID ) ) THEN
				Ship.coPump1 := 100;
				Ship.coPump2 := REAL_TO_INT(pumpOut);
				Ship.cpKeepPumpTon.IN := FALSE;
				Ship.cpKeepPumpTon();
				Ship.cpKeepPumpTon.IN := TRUE;
				Ship.cpKeepPumpTon();
			END_IF
		ELSIF ( pumpOut < -100.0 ) THEN
			IF ( pumpOut * (-1.0) > UINT_TO_INT(Ship.coPump1) ) OR
				( Ship.cpKeepPumpTon.Q AND ( NOT usePID ) ) THEN
				Ship.coPump1 := REAL_TO_INT(pumpOut * (-1.0));
				Ship.coPump2 := 100;
				Ship.cpKeepPumpTon.IN := FALSE;
				Ship.cpKeepPumpTon();
				Ship.cpKeepPumpTon.IN := TRUE;
				Ship.cpKeepPumpTon();
			END_IF
		ELSE
			Ship.coPump1 := 100;
			Ship.coPump2 := 100;
		END_IF
		
		Ship.cpPrevEncoder := Ship.aiEncoder;
	ELSE
		Ship.coPump1 := 0;
		Ship.coPump2 := 0;
	END_IF
	
	IF ( manualPump1 ) THEN
		Ship.coPump1 := 1000;
	END_IF
	IF ( manualPump2 ) THEN
		Ship.coPump2 := 1000;
	END_IF
	
	
		
	(* Miganie lampki - Timer zmieniajacy wartosc lampki *)
	Ship.cpUpdatePumpTon.IN := 
	( Ship.cpSystemActive ) AND
	( NOT Ship.cpUpdatePumpTon.Q );
	Ship.cpUpdatePumpTon();
	
	
(*
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
*)

	Ship.cpButtonStart := FALSE;
	Ship.cpButtonStop := FALSE;
	Ship.cpButtonCalibrate := FALSE;	
END_PROGRAM

PROGRAM _EXIT
	Ship.coPump1 := 0;
	Ship.coPump2 := 0;
END_PROGRAM

