# LINUX CONFIGURATION GUIDE

## Set up command aliases

1. Add the following snippet to ~/.bashrc:

      ```bash
      # Alias definitions.
      # You may want to put all your additions into a separate file like
      # ~/.bash_aliases, instead of adding them here directly.
      # See /usr/share/doc/bash-doc/examples in the bash-doc package.

      if [ -f ~/.bash_aliases ]; then
          . ~/.bash_aliases
      fi
      ```

2. Copy the file `aliases\.bash_aliases` in the root directory (~)

3. Copy directory `aliases\utilities` in the root directory (~)

4. Close all the open terminal and re-open it, DONEEEEEEE! YEEEEEEAH B-)

## Set up easter eggs

### Random fortune by cowsay

1. Run: `sudo apt install fortune cowsay`

2. Add this to ~/.bashrc:

    ```bash
    # Random fortune printing
    fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)
    ```

### Sudo insults

1. Run: `sudo visudo`

2. In the opened document add this: `Defaults   insults`
