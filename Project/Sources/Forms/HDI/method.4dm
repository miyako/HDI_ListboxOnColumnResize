Case of 
	
	: (FORM Event.code=On Load)
		
		var $vers : Text
		$vers:=Application version
		
		If ($vers<"1600")  //1530 means 13R3   1501 means 15.1
			
			Form.quit:=True
			OBJECT SET TITLE(*; "BtnDemo"; Localized string("BtnClose"))
			OBJECT SET VISIBLE(*; "TxtSorry@"; True)
			OBJECT SET VISIBLE(*; "TxtInfo@"; False)
			
		Else 
			
			Form.quit:=False
			
		End if 
		
End case 
