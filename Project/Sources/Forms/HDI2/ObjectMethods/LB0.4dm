var $foreground; $background; $alternate : Integer
var $width; $minWidth; $maxWidth : Integer
var $i : Integer

Case of 
	: (Form event code:C388=On Column Resize:K2:31)
		
		ARRAY POINTER:C280($colPtr; 4)
		$colPtr{1}:=->Column1
		$colPtr{2}:=->Column2
		$colPtr{3}:=->Column3
		$colPtr{4}:=->Column4
		
		OBJECT GET RGB COLORS:C1074(*; "LB0"; $foreground; $background; $alternate)
		
		For ($i; 1; 4)
			$width:=LISTBOX Get column width:C834($colPtr{$i}->; $minWidth; $maxWidth)
			
			$colPtr{$i}->{1}:=$width
			
			Case of 
				: ($width<=$minWidth)
					OBJECT SET RGB COLORS:C628($colPtr{$i}->; 0x00FF; $background; $alternate)
					
				: ($width>=$maxWidth)
					OBJECT SET RGB COLORS:C628($colPtr{$i}->; 0x00FF0000; $background; $alternate)
				Else 
					OBJECT SET RGB COLORS:C628($colPtr{$i}->; Foreground color:K23:1; $background; $alternate)
			End case 
			
		End for 
		
End case 