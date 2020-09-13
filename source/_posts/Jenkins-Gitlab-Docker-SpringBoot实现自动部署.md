---
title: Jenkins + Gitlab + Docker + Spring Boot 实现自动部署
pin: true
toc: true
icons: []
tags: [Jenkins,Gitlab,Docker]
categories: [自动部署]
keywords: [Jenkins,Gitlab,Docker,Spring Boot,自动部署]
abbrlink: 3fe685e0
date: 2020-09-13 16:26:48
headimg: https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article-headimg/Jenkins自动部署.png
thumbnail: https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article-thumbnail/Jenkins.png
description:
---

本文主要介绍持续集成的搭建方式，采用 Docker 的方式去搭建 Jenkins 环境，另外会涉及到 Spring Boot 和 Git 等技术。（不多废话直接介绍安装步骤）

<!-- more -->

## :fire: Docker安装

本文中我们使用 Centos7.x 进行 Docker 安装，所以我们需要在 Vagrant 中先安装 Centos7，这一步请阅读者自行安装。

### :tada: Docker安装步骤

```shell
# 1. yum 包更新到最新。
sudo yum update

# 2. 安装需要的软件包，yum-util提供yun-config-manager功能，另外两个是devicemapper驱动依赖的。
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# 3. 设置yum源为阿里云。
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

# 4. 安装docker。
sudo yum install docker-ce

# 5. 安装完成后查看docker版本。
docker -v
```

### :tada: 设置Docker镜像源（加速访问）

编辑该文件（没有该文件则新建）：
```shell
vim /etc/docker/daemon.json
```

在该文件中输入如下内容：
```yml
{
"registry-mirrors": ["https://9cpn8tt6.mirror.aliyuncs.com"]
}
```

### :tada: Docker的启动与停止

```shell
# 启动docker
systemctl start docker

# 停止docker
systemctl stop docker

# 重启docker
systemctl restart docker

# 查看docker状态
systemctl status docker

# 开机启动docker
systemctl enable docker
```

## :fire: Gitlab安装

GitLab是一个利用 Ruby on Rails 开发的开源应用程序，实现一个自托管的Git项目仓库，可通过Web界面进行访问公开的或者私人项目安装。类似GitHub，能够浏览源代码，管理缺陷和注释，可以管理团队对仓库的访问。

### :tada: 查询并拉取镜像

```shell
# 查询gitlab镜像版本
docker search gitlab
# 拉取镜像
docker pull gitlab/gitlab-ce:latest
```

### :tada: 创建GitLab的配置 (config) 、 日志 (log) 、数据 (data) 三个文件夹，放到容器之外， 便于日后升级， 因此请先准备这三个目录

```shell
mkdir -p /apps/Devops/gitlab/config
mkdir -p /apps/Devops/gitlab/log
mkdir -p /apps/Devops/gitlab/data
```

### :tada: 运行GitLab容器

运行成功后，此时会在上面我们创建的目录中生成一些文件，后面需要修改文件。
```shell
docker run --detach \
--publish 8443:443 --publish 8090:80 --publish 2222:22 \
--name gitlab \
--restart always \
--volume /apps/Devops/gitlab/config:/etc/gitlab \
--volume /apps/Devops/gitlab/logs:/var/log/gitlab \
--volume /apps/Devops/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce:latest
```
8090端口是页面访问端口。

【注意】：gitlab初次启动比较慢，耐心等待后再访问页面！

### :tada: 修改配置文件

（1）修改 `/apps/Devops/gitlab/config/gitlab.rb`
```shell
进入文件后，把external_url改成部署机器的域名或者IP地址，并取消注释。

vim /apps/Devops/gitlab/config/gitlab.rb
external_url 'http://192.168.31.25'      #ip为部署机器的IP或域名
```
如图：

![gitlab配置域名](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article/abbrlink-3fe685e0/gitlab配置域名.png)

（2）修改 `/apps/Devops/gitlab/data/gitlab-rails/etc/gitlab.yml`
```shell
vim /apps/Devops/gitlab/data/gitlab-rails/etc/gitlab.yml
找到关键字 * ## Web server settings * 
将host的值改成映射的外部主机ip地址和端口，这里会显示在gitlab克隆地址
```
如图：

![gitlab配置ip](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article/abbrlink-3fe685e0/gitlab配置ip.png)

（3）执行以下几步，因为没有重启Docker可能导致报错(重要)
1. 停止容器 `docker stop 容器id`
2. 删除容器 `doeker rm 容器id`
3. 重启Docker服务 `systemctl restart docker`
4. 关闭防火墙 `systemctl stop firewalld`

### :tada: 更改完配置文件运行以下命令再次启动容器
```shell
docker run --detach \
--publish 8443:443 --publish 8090:80 --publish 2222:22 \
--name gitlab \
--restart always \
--volume /apps/Devops/gitlab/config:/etc/gitlab \
--volume /apps/Devops/gitlab/logs:/var/log/gitlab \
--volume /apps/Devops/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce:latest
```
通过浏览器访问，默认账号root, 需要设置一个新密码。
访问报502说明容器还没启动完成，等待片刻即可访问到如下页面。

![gitlab登录页](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/article/abbrlink-3fe685e0/gitlab登录页.png)

至此，Gitlab搭建完成。

未完待续...
