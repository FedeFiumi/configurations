POWERSHELLL THEME CONFIGURATION

References: https://learn.microsoft.com/en-us/windows/terminal/tutorials/custom-prompt-setup

## MAKE SURE FOR ALL THE FOLLOWING OPERATION POWERSHELL IS LAUNCHED IN ADMINISTRATOR MODE!


## Modify powershell theme

1) Download oh-posh running (this download directly from the app store and
   permits automatic updates):

		`winget install XP8K0HKJFRXGCK`

2) Edit the powershell profile

	 1) Run to see if a profile is present

			`$PROFILE`

	 2) If a profile is present, run:

				`notepad <path_of_the_profile>`

			If a profile is not present crete a file in this path and open the file:

				`C:\Users\<USER>\Documents\WindowsPowerShell\Microsoft.<PROFILE_NAME>.ps1`

			where <USER> is usually the name of the PC account (es: FedeFiumi) and the
			profile name is free, choose the one that fits most.

3) added the following line to the opening file, save and close (this example is to install
	the theme paradox for other ones substitute "paradox" in the command below with one of
	the fonts available here: https://ohmyposh.dev/docs/themes):

		`oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression`

4) Then (if you noticed an exception when opening powershell, change the restriction to with
    this command on admin powershell:

			`Set-ExecutionPolicy RemoteSigned`

	This might comport a stepdown of the windows executed scripts, hence a stepdown in security.
	Eventually to revert it:
	1) revert restriction policy:

		`Set-ExecutionPolicy AllSigned`

	2) remove profile simply deleting the following file:

		`C:\Users\federico.fiumi_light\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

5) If some character is not correctly displayed, then download the Terminal icons support:
	
	1) Run:

		`Install-Module -Name Terminal-Icons -Repository PSGallery`
	
	2) Be sure the font in the terminal is supporting characters as well:
		- check in the windows terminal what is the current one for the powershell
		- if not comprehended, then go here https://www.nerdfonts.com/font-downloads and
		  download another one with that support (e.g. the theme above named paradox has
		  Cascadia as default character set....had to download Caskaydia Cove Nerd Font
		  from the link right above)

	3) Download the set of characters from Nerd fonts, you ll get a zipped file.
	   Extract the files, select all the ones in the extracted directory
		 (apart for the license and the README...), right click and select `install`

6) Close all the open terminal and re-open it, DONEEEEEEE! YEEEEEEAH B-)



## Set up command aliases

1) Copy the directory `aliases` in `C:\`
2) Open environment variable menu
3) Add `C:\aliases`to the paths under system variable named `Path`
   (One of the voices on the left in the in the scroll menu in the lower side)
4) save, close and re-open the powershell, DONEEEEEE! YEEEEEEAH B-)
