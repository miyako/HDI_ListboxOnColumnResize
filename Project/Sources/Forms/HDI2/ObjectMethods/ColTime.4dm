var $p : Pointer
var $width : Integer

Case of 
	: (Form event code:C388=On Column Resize:K2:31)
		
		$p:=OBJECT Get pointer:C1124(Object named:K67:5; "ColTime")
		$width:=LISTBOX Get column width:C834($p->)
		
		If ($width>90)
			OBJECT SET FORMAT:C236($p->; Char:C90(HH MM SS:K7:1))
		Else   // <= 90
			OBJECT SET FORMAT:C236($p->; Char:C90(HH MM:K7:2))
		End if 
		
End case 