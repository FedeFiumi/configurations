# VSCode configuration

## User Settings

### Install user settings

Copy the content of `vscode/user/settings.json` in the VSCode user settings
json (Ctrl + Shift + P, then Digit User settings and click on the result).

## Extensions

### Install extensions

Run `install-extensions.bash`

### Update configurations settings.json file

Open Linux terminal in this repo root and digit:

``` bash
code --list-extensions |
xargs -L 1 echo code --install-extension |
sed "s/$/ --force/" |
sed "\$!s/$/ \&/" > ./vscode/install-extensions.bash
```
