# Ansible-playbook
## Introduction
転職なりでマシンを変えるときに開発環境を整える作業が面倒なのでSetup方法を記載しておく。  

## SetUp
### Install XCode
まずはXCodeのインストール。  
AppleIDが必要になる。  

### PythonのSetUp
Python周りのセットアップを行う。  
#### Anyenvのインストール
https://github.com/anyenv/anyenv

#### Pyenvのインストール
Anyenvインストール後以下のコマンドでpyenvはインストールできる。  
```
$ anyenv init pyenv
```

#### Pythonのインストール
Pyenv経由でPythonをインストールする。  

### Ansibleのインストール
以下のコマンドでAnsibleをインストールする。  
```
$ python -m pip install --user ansible
```

### Playbookの実行
以下のコマンドでPlaybookを適用して必要なソフトウェアをインストールする。  
```
$ ansible-playbook -i hosts/local site.yml
```

