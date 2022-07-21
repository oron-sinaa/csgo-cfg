$drive = Read-Host -Prompt "`nSteam in which drive?"

New-Item -Force -Type Directory "${drive}:\Program Files (x86)\Steam\userdata\1104107224"
New-Item -Force -Type Directory "${drive}:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo"

$confirm = Read-Host -Prompt "`nEnter Y to confirm"

if ($confirm -eq "y" -or "Y") {

	try {
		Copy-Item -Force -Recurse -Path "1104107224" -Destination "${drive}:\Program Files (x86)\Steam\userdata"
		Copy-Item -Force -Recurse -Path "cfg" -Destination "${drive}:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo"
	}

	catch {
		Write-Output "`nAn error occured"
	}

	finally {
		Write-Output "`nSuccess!" 
		Write-Output "Press any key to exit..." 
		Read-Host
	}
}

else {
	Write-Output "`nPress any key to exit..." 
	Read-Host
}
