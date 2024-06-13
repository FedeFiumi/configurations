# POWERSHELLL THEME CONFIGURATION

[References](https://learn.microsoft.com/en-us/windows/terminal/tutorials/custom-prompt-setup)

MAKE SURE POWERSHELL IS IN ADMINISTRATOR MODE FOR ALL THE FOLLOWING OPERATIONS!

## Modify powershell theme

1. Download oh-posh running (this download directly from the app store and
   permits automatic updates):

    `winget install XP8K0HKJFRXGCK`

2. Edit the powershell profile

    1. Run to see if a profile is present

        `$PROFILE`

        Based on the command output:

        * If a profile is present, run:

            `notepad <path_of_the_profile>`

        * If a profile is not present crete a file in this path and open the file:

            `C:\Users\<USER>\Documents\WindowsPowerShell\Microsoft.<PROFILE_NAME>.ps1`

          where `<USER>` is usually the name of the PC account (es: FedeFiumi) and
          the profile name is free, choose the one that fits most.

3. Add the following line to the opening file, save and close (this example is to install
   the theme paradox for other ones substitute "paradox" in the command below with one
   of the fonts available [here](https://ohmyposh.dev/docs/themes):

    ```ps1
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression
    ```

4. Reboot Powershell

### Troubleshooting

* **When noticing an exception at powershell startup**

    1. Change the restriction to with this command on admin powershell:

        ```ps1
        Set-ExecutionPolicy RemoteSigned
        ```

        This might comport a stepdown of the windows executed scripts, hence a stepdown
        in security.

        Eventually to revert it:

        1. Revert restriction policy:

            ```ps1
            Set-ExecutionPolicy AllSigned
            ```

        2. Remove profile simply deleting the following file:

           ```ps1
           C:\Users\federico.fiumi_light\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
           ```

        3. Reboot Powershell

* **When noticing characters not correctly displayed**

    1. Download the Terminal icons support:

        ```ps1
        Install-Module -Name Terminal-Icons -Repository PSGallery
        ```

    2. Be sure the font in the terminal is supporting characters as well:

        * Check in the windows terminal what is the current one for the powershell

        * If not comprehended, then go [here](https://www.nerdfonts.com/font-downloads)
          and download another one with that support (e.g. the theme above named paradox
          has Cascadia as default character set....had to download *Caskaydia Cove Nerd
          Font* from the link right above)

    3. Download the zipped file containing the set of characters from *Nerd fonts*.
       Extract the files, select all the ones in the extracted directory (apart for the license and the README...), right click and select install

    4. Reboot Powershell

## Set up command aliases

1. Edit the powershell profile

    1. Run to see if a profile is present

        ```ps1
        $PROFILE
        ```

       Based on the command output:

        * If a profile is present, run:

            ```ps1
            notepad <path_of_the_profile>
            ```

        * If a profile is not present crete a file in this path and open the file:

           ```ps1
           C:\Users\<USER>\Documents\WindowsPowerShell\Microsoft.<PROFILE_NAME>.ps1
           ```

           where `<USER>` is usually the name of the PC account (es: FedeFiumi) and the
           profile name is free, choose the one that fits most.

2. Add the following to the opening file, save and close:

    ```ps1
    function gits{ git status @args}
    function gitd{ git diff @args}
    function gitp{ git pull @args }
    function gitl{ git log @args }
    function gitb{ git branch @args }
    function gcm{ git commit -m @args }
    function gck{ git checkout @args }
    function gsu{ git submodule update @args }
    function gsf{ git submodule foreach @args }
    ```

3. Reboot Powershell
