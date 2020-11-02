# Ansible-playbook
## Introduction
転職なりでマシンを変えるときに開発環境を整える作業が面倒なのでSetup方法を記載しておく。  

## SetUp
### Install XCode
まずはXCodeのインストール。  
以下からダウンロードする。  
https://developer.apple.com/download/more/

> Xcode自体のインストールは不要な可能性もある。

### Install Xcode CommandLineTool for XCode
以下からダウンロードする。  
https://developer.apple.com/download/more/

### Install homebrew
以下のコマンドでhomebrewをインストールする。  
sudoのパスワードが聞かれるので用意しておく。  
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Apply Ansible Playbook
#### Install pip
pipがinstalledでない場合は以下のコマンドでインストールする。
```
$ sudo easy_install pip
```

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

### Install vim-plugin
vim-plugでいくつかのパッケージをインストールする必要があるので以下のようにしてインストールする。  
- vimを開く
- :PlugInstall でインストールする。

## Appendix
### System&Securityの設定変更
いくつかのソフトウェアについて提供者がAppleでないため別途提供者を信頼する設定が必要になる。管理者権限が必要になるため注意すること。  
具体的には以下のソフトウェアについて設定が必要である。  
- VirtualBox
- DockerDesktop
- Wireshark

#### VirtualBoxのインストール
VirtualBoxについては以下二つの提供者を追加しないといけないので注意すること。  
- Oracle inc.
- Oracke America

