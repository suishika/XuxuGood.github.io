---
title: CentOS搭建Gitlab的详细教程
pin: false
toc: true
thumbnail: https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article-thumbnail/gitlab.png
tags: [CentOS,Gitlab]
categories: [Gitlab]
keywords: [CentOS,Gitlab,服务器]
abbrlink: a460b91e
date: 2020-04-16 14:05:16
description: 记录一次CentOS搭建gitlab服务器的经历。
---

记录一次CentOS搭建gitlab服务器的经历。

## :sun_with_face: 前期准备
1. 服务器：CentOS7
2. 安装文件：[gitlab-ce-12.6.3-ce.0.el7.x86_64.rpm](https://packages.gitlab.com/gitlab/gitlab-ce/packages/el/7/gitlab-ce-12.6.3-ce.0.el7.x86_64.rpm)

## :sun_with_face: 安装gitlab
介绍一下两种安装方式 yum安装、rmp安装（个人喜欢第二种方式，有时候yum下载的有点慢）。

### :tada: yum安装
这里直接参考[官网](https://about.gitlab.com/install/#centos-7)安装教程

![gitlab安装教程](https://s1.ax1x.com/2020/04/16/JkuM6O.png)

打开linux系统终端，首先安装gitlab必须的ssh，以及在系统防火墙中打开HTTP、HTTPS和SSH访问。
```
sudo yum install -y curl policycoreutils-python openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
```

然后是安装发送邮件功能的postfix
```
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
```

添加gitlab的包仓库（ee改成ce）
```
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
```

安装gitlab（EXTERNAL_URL指的是你的gitlab访问地址，这里改为http://+你的linux系统ip）
```
sudo EXTERNAL_URL="https://gitlab.example.com" yum install -y gitlab-ce
```

### :tada: rpm安装
使用官网的安装方式下载很慢（亲测网上的阿里站点，清华站点也不是很快），这里教大家直接下载rmp安装包手动安装。

首先去[官网安装包仓库](https://packages.gitlab.com/gitlab/gitlab-ce/)下载我们所需的安装包版本

![官网安装包仓库](https://s1.ax1x.com/2020/04/16/JkK08x.png)

下载完成之后将文件拷贝至你的linux服务器，同样需要配置ssh、防火墙、postfix，
```
//安装gitlab必须的ssh，以及在系统防火墙中打开HTTP、HTTPS和SSH访问。
sudo yum install -y curl policycoreutils-python openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
//安装发送邮件功能的postfix
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
```

然后cd进入你的安装包路径进行安装
```
//安装 example.rpm 包并在安装过程中显示正在安装的文件信息及安装进度
rpm -ivh example.rpm 
```

出现下图即为安装成功

![安装成功图](https://s1.ax1x.com/2020/04/16/JkJiXq.jpg)

这种方式需要我们手动进入配置文件中修改访问地址
```
sudo vim /etc/gitlab/gitlab.rb

//修改文件中external_url 'http://你linux的ip'
```

并且我们还需要修改默认的gitlab clone地址，要不每次都得自己修改

![](https://s1.ax1x.com/2020/04/16/JklUaQ.png)

修改文件配置
```
sudo vim /opt/gitlab/embedded/service/gitlab-rails/config/gitlab.yml
```

将图片上标红处的Host替换成你的域名或ip

![](https://s1.ax1x.com/2020/04/16/JklLIH.png)

## :sun_with_face: 访问
重置并启动GitLab，执行以下命令
```
gitlab-ctl reconfigure

gitlab-ctl restart
```
提示  "ok: run:"表示启动成功

![](https://s1.ax1x.com/2020/04/16/JkY5zd.jpg)

然后浏览器上输入你的访问地址（第一次访问会让你输入新密码，用户名默认为root）

![](https://s1.ax1x.com/2020/04/16/Jk1j7F.png)

## :sun_with_face: 安装过程中遇到的问题
1. 在浏览器中访问GitLab出现502错误：
原因：内存不足。
解决办法：检查系统的虚拟内存是否随机启动了，如果系统无虚拟内存，则增加虚拟内存，再重新启动系统。

2. 8080端口冲突：
原因：由于unicorn默认使用的是 `8080` 端口。
解决办法：打开 `/etc/gitlab/gitlab.rb` ，打开 `# unicorn['port'] = 8080` 的注释，将 `8080` 修改为 `9999` ，保存后运行 `sudo gitlab-ctl reconfigure` 即可。

以上为CentOS搭建Gitlab的全部教程，如有不对欢迎指出。
