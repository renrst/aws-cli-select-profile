# Description
Simple Bash Script to select AWS profile

It reads the aws profiles from the aws config file and uses fzf to select one.


<p align="center"><img src="/demo.gif?raw=true"/></p>


# Dependencies
- aws cli v2 using sso for authentication
- fzf for autocompletion https://github.com/junegunn/fzf 



# Installation
1. Download script
```bash
curl  https://raw.githubusercontent.com/renrst/aws-cli-select-profile/main/aws-select-profile.sh -o ~/aws-select-profile.sh
```

2. create alias in your ~/.zshrc or ~/.bashrc
The source command  is need so that the export will be available in the current shell session

```bash
alias aws-select-profile="source ~/aws-select-profile.sh"

```










