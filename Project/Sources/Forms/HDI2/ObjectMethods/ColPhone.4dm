var $p : Pointer
var $width : Integer

Case of 
	: (Form event code:C388=On Column Resize:K2:31)
		
		$p:=OBJECT Get pointer:C1124(Object named:K67:5; "ColPhone")
		$width:=LISTBOX Get column width:C834($p->)
		
		Case of 
				
			: ($width<=100)
				OBJECT SET FORMAT:C236($p->; "## #########")
				
			: ($width<=110)
				OBJECT SET FORMAT:C236($p->; "## # ########")
				
			: ($width<=130)
				OBJECT SET FORMAT:C236($p->; "## # ## ## ## ##")
				
			Else   // > 130
				OBJECT SET FORMAT:C236($p->; "(##) # ## ## ## ##")
				
		End case 
		
End case 
