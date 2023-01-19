POWERSHELLL THEME CONFIGURATION

References: https://learn.microsoft.com/en-us/windows/terminal/tutorials/custom-prompt-setup

1) downloaded oh-posh
2) launched "notepad $PROFILE (if a profile is not present, simply say yes to the opened pop
   up and open the editor to edit the file.)
3) added the following line to the opening file, save and close (this example is to install
	the theme paradox for other ones substitute "paradox" in the command below with one of
	the fonts available
	here: https://ohmyposh.dev/docs/themes): 

	oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression

4) Then (if you noticed an exception when opening powershell, change the restriction to with
    this command on admin powershell:
		Set-ExecutionPolicy RemoteSigned

	This might comport a stepdown of the windows executed scripts, hence a stepdown in security.
	Eventually to revert it:

	1) revert restriction policy:
		Set-ExecutionPolicy AllSigned
	2) remove profile:
		should be about deleting the following file:
		C:\Users\federico.fiumi_light\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

5) If some character is not correctly displayed, then download the Terminal icons support:
	
	1) Install-Module -Name Terminal-Icons -Repository PSGallery
	
	2) Be sure the font in the terminal is supporting characters as well:
		- check in the windows terminal what is the current one for the powershell
		- if not comprehended, then go here https://www.nerdfonts.com/font-downloads and
		  download another one with that support (e.g. the theme above named paradox has
		  Cascadia as default character set....had to download Caskaydia Cove Nerd Font
		  from the link right above)