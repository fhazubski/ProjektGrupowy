PROGRAM _INIT
	Parameters.PumpSpeed := 500;
	Parameters.PasswordCheck := FALSE; //
	Ship.coPump1            := 0;
	Ship.coPump2            := 0;
	Ship.cpSystemActive     := FALSE;
	Ship.cpPrevEncoder      := Ship.aiEncoder;
	Ship.cpUpdatePumpTon.PT := T#10ms;
	Ship.cpKeepPumpTon.PT   := T#50ms;
END_PROGRAM

PROGRAM _CYCLIC
	// sprawdzam haslo
	IF (  Parameters.Password = 'grupa30b' ) THEN
		Parameters.PasswordCheck := TRUE;
	ELSE
		Parameters.PasswordCheck := FALSE;
	END_IF
	IF (Parameters.PasswordCheck) THEN
		//	layer.password.moveToBeginning();
		//tutaj cos wpisac, zeby przelaczyc Layer - Password na stronie Admin z-order 3 na z-order 0
	END_IF
	
	
	IF Ship.cpButtonCalibrate THEN
		Ship.cpEncoderZero := Ship.aiEncoder;
	END_IF;
	
	Ship.cpSystemActive :=
	( NOT Ship.cpButtonStop ) AND
	( Ship.cpButtonStart OR Ship.cpSystemActive );

	
	(* Do przetestowania:
	   - funkcja PID z biblioteki MTBasics
	   - PID ISA *)
	IF ( Ship.cpSystemActive ) THEN		
		IF ( Ship.cpUpdatePumpTon.Q ) THEN
			(* Zaktualizuj predkosci pomp *)
		
			(* TODO usrednianie wartosci enkodera *)
			pumpOut := INT_TO_REAL(Ship.aiEncoder - Ship.cpEncoderZero);
			
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
		
			IF ( pumpOut > 100.0 ) THEN
				IF ( pumpOut > UINT_TO_INT(Ship.coPump2) ) OR
				   ( Ship.cpKeepPumpTon.Q ) THEN
					Ship.coPump1 := 0;
					Ship.coPump2 := REAL_TO_INT(pumpOut);
					Ship.cpKeepPumpTon.IN := FALSE;
					Ship.cpKeepPumpTon();
					Ship.cpKeepPumpTon.IN := TRUE;
					Ship.cpKeepPumpTon();
				END_IF
			ELSIF ( pumpOut < -100.0 ) THEN
				IF ( pumpOut * (-1.0) > UINT_TO_INT(Ship.coPump1) ) OR
				   ( Ship.cpKeepPumpTon.Q ) THEN
					Ship.coPump1 := REAL_TO_INT(pumpOut * (-1.0));
					Ship.coPump2 := 0;
					Ship.cpKeepPumpTon.IN := FALSE;
					Ship.cpKeepPumpTon();
					Ship.cpKeepPumpTon.IN := TRUE;
					Ship.cpKeepPumpTon();
				END_IF
			ELSE
				IF ( Ship.cpKeepPumpTon.Q ) THEN
					Ship.coPump1 := 0;
					Ship.coPump2 := 0;
				END_IF
			END_IF
		
			Ship.cpPrevEncoder := Ship.aiEncoder;
		END_IF
	ELSE
		Ship.coPump1 := 0;
		Ship.coPump2 := 0;
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

