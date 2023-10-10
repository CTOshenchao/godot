 ```本文将从多个方面讲解如何使用Git配置账号密码，帮助Git初学者更好地使用Git。```

## 一、创建SSH Key
1、在Git Bash命令行中输入以下命令：
```
$ ssh-keygen -t rsa -C "your_email@example.com"
```
2、一路按Enter键，直到出现以下提示：
```
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
```
如果不需要设置密码，可以直接按Enter键。

3、之后就会在用户主目录下的.ssh文件夹中生成以下两个文件：

id_rsa
id_rsa.pub
其中id_rsa为私钥，id_rsa.pub为公钥。

## 二、将SSH Key添加到GitHub中
1、打开GitHub，登录账号，进入“Settings”页面，找到“SSH and GPG keys”选项卡；

2、点击New SSH key，将公钥内容复制到“Key”输入框中并设置一个Title；

3、点击“Add SSH key”按钮，完成添加。

## 三、配置全局用户信息
1、在Git Bash命令行中输入以下命令：
```
$ git config --global user.name "Your Name"
$ git config --global user.email "your_email@example.com"
```
2、其中user.name为你的Git用户名，user.email为你的Git邮箱；

3、以上命令将设置全局的用户信息，git在commit时会自动加上这些用户信息。

## 四、配置本地用户信息
1、在Git Bash命令行中进入项目所在目录，输入以下命令：
```
$ git config user.name "Your Name"
$ git config user.email "your_email@example.com"
```
2、以上命令将设置该项目的用户信息。

## 五、配置密码缓存
1、在Git Bash命令行中输入以下命令：
```
$ git config --global credential.helper cache
```
2、以上命令设置账号密码缓存在内存中，缓存时间为15分钟。

## 六、配置密码存储
1、在Git Bash命令行中输入以下命令：
```
$ git config --global credential.helper store
```
2、以上命令设置账号密码缓存在本地文件中。

以上就是使用Git配置账号密码的相关步骤，希望对Git初学者有所帮助。