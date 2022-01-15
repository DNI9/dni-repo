# dni9-repo

add below lines to >> `/etc/pacman.conf`
```bash
[dni9-repo]
SigLevel = Optional TrustedOnly
Server = https://dni9.github.io/$repo/$arch
```
then, run `sudo pacman -Syyu`
