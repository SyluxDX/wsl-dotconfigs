# WSL dot files and configurations

## ZSH
Install ZSH
```sudo apt install zsh```

Install oh-my-zsh
```
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

Copy configurations
```
ln -s $PWD/zsh/themes/agnoster-wsl.zsh-theme $HOME/.oh-my-zsh/custom/themes/agnoster-wsl.zsh-theme
ln -s $PWD/zsh/zshrc $HOME/.zshrc
```

## GitHub

### SSH key
You can generate a new SSH key on your local machine:
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Add your SSH private key to the ssh-agent:
```
ssh-add ~/.ssh/id_ed25519
```
Copy id_ed25519.pub contens to github ssh add page.

Test key use/connection
```
ssh -T git@github.com
```

### GPG key
Generate a new key:
```
gpg --full-generate-key
```
Select the default type RSA and RSA and `4096` bit length.

Follow the prompt instructions.

List gpg keys with:
```
gpg --list-secret-keys --keyid-format=long
```
Copy key id. In the following example the id is `3AA5C34371567BD2`:
```
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot <hubot@example.com>
ssb   4096R/4BB6D45482678BE3 2016-03-10
```

Substitute key Id in the next command to get GPG key in ASCII armor format
```
gpg --armor --export 3AA5C34371567BD2
```
Copy output and use it to add new GPG key in github

Config git to use gpg key
```
git config --global user.signingkey 3AA5C34371567BD2
```
