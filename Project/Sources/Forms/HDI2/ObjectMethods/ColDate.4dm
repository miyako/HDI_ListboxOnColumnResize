C_POINTER:C301($p)
C_LONGINT:C283($width)

Case of 
	: (Form event code:C388=On Column Resize:K2:31)
		
		$p:=OBJECT Get pointer:C1124(Object named:K67:5; "ColDate")
		$width:=LISTBOX Get column width:C834($p->)
		
		Case of 
				
			: ($width>200)
				OBJECT SET FORMAT:C236($p->; Char:C90(System date long:K1:3))
				
			: ($width>140)
				OBJECT SET FORMAT:C236($p->; Char:C90(System date abbreviated:K1:2))
				
			Else   // <= 120
				OBJECT SET FORMAT:C236($p->; Char:C90(System date short:K1:1))
				
		End case 
		
End case 
