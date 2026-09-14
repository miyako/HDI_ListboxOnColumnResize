var $p : Pointer
var $width : Integer

Case of 
	: (Form event code:C388=On Column Resize:K2:31)
		
		$p:=OBJECT Get pointer:C1124(Object named:K67:5; "ColValue")
		$width:=LISTBOX Get column width:C834($p->)
		
		Case of 
				
			: ($width<=100)
				OBJECT SET FORMAT:C236($p->; "############ ")
				
			: ($width<=120)
				OBJECT SET FORMAT:C236($p->; "###,###,###,### ")
				
			: ($width<=150)
				OBJECT SET FORMAT:C236($p->; "###,###,###,###.00 ")
				
			Else   // > 150
				OBJECT SET FORMAT:C236($p->; "###,###,###,###.00 $")
				
		End case 
		
End case 
