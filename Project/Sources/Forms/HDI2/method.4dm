var $i : Integer

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY LONGINT:C221(Column1; 1)
		ARRAY LONGINT:C221(Column2; 1)
		ARRAY LONGINT:C221(Column3; 1)
		ARRAY LONGINT:C221(Column4; 1)
		
		Column1{1}:=LISTBOX Get column width:C834(*; "Column1")
		Column2{1}:=LISTBOX Get column width:C834(*; "Column2")
		Column3{1}:=LISTBOX Get column width:C834(*; "Column3")
		Column4{1}:=LISTBOX Get column width:C834(*; "Column4")
		
		
		ARRAY DATE:C224(_date; 0)
		ARRAY TIME:C1223(_time; 0)
		ARRAY REAL:C219(_value; 0)
		ARRAY TEXT:C222(_phone; 0)
		
		For ($i; 1; 10)
			APPEND TO ARRAY:C911(_date; Add to date:C393(!00-00-00!; 2016; (Random:C100%12)+1; (Random:C100%30)+1))
			APPEND TO ARRAY:C911(_time; (Random:C100*Random:C100)%(3600*24))
			APPEND TO ARRAY:C911(_value; 100000+(Random:C100*Random:C100)+(Random:C100/Pi:K30:1))
			APPEND TO ARRAY:C911(_phone; Substring:C12(String:C10(Random:C100*100)+String:C10(Random:C100*100)+String:C10(Random:C100*100)+String:C10(Random:C100*100); 1; 11))
		End for 
		
End case 

