# Config GPG key

## Generate and Set up

1. Install GPG [tools](https://gpgtools.org)
2. Generate key <br> `gpg --full-generate-key`
3. List the GPG keys `gpg --list-secret-keys --keyid-format=long`
4. Paste the GPG key ID is `gpg --armor --export gpg-key-id`
5. Copy GPG key to GitHub account

## List GPG key 

* `gpg --list-secret-keys --keyid-format=long`
* Config git `git config --global user.signingkey gpg-key-id`
* If you aren't using the GPG suite, run the follAlternatively, if you use the bash shell, run this command:owing command in the zsh shell to add the GPG key to your .zshrc file, if it exists, or your .zprofile file:

```
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
```

* Alternatively, if you use the bash shell, run this command: 

```
if [ -r ~/.bash_profile ]; then echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.profile; fi
```
