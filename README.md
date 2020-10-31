# Ansible-playbook
## Introduction
転職なりでマシンを変えるときに開発環境を整える作業が面倒なのでSetup方法を記載しておく。  

## SetUp
### Install XCode
まずはXCodeのインストール。  
AppleIDが必要になる。  

### Install homebrew
以下のコマンドでhomebrewをインストールする。  
sudoのパスワードが聞かれるので用意しておく。  
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Apply Ansible Playbook
#### Install Ansible
以下のコマンドでansibleをUser領域にインストールする。  
```
$ python -m pip install --user ansible
```

#### Install community module
PATHにansible-*のDirectoryが指定されていることを前提とする。  
```
$ ansible-galaxy collection install community.general
```

#### Playbookの実行
以下のコマンドでPlaybookを適用して必要なソフトウェアをインストールする。  
```
$ ansible-playbook -i hosts/local site.yml --ask-vault-pass
```

