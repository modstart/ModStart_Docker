

<p align="center">
  <a href="https://modstart.com">
    <img src="https://ms-assets.modstart.com/data/image/2021/09/08/23652_1f1j_9825.png" alt="layui" width="360">
  </a>
</p>
<p align="center">
  ModStart的Docker一键启动环境
</p>

# ModStart的Docker一键启动环境

##  💡 系统简介

本仓库提供了 ModStart下Docker一键启动脚本。

在使用前必须先了解Docker的基础知识，具体可参考：

- [https://docs.docker.com/](https://docs.docker.com/)



## 🔧 使用步骤

### 1. 下载本仓库到本地

**Linux参考命令**

```shell
# 国外
git clone https://github.com/modstart/ModStart_Docker.git
# 国内
git clone https://gitee.com/modstart/ModStart_Docker.git
```

**Windows参考**

> 按照描述自行操作



### 2. 下载ModStartCMS代码

下载ModStartCMS相关程序到环境目录，命名为 modstart


```shell
cd ModStart_Docker
# 国外
git clone https://github.com/modstart/ModStartCMS.git modstart
# 国内
git clone https://gitee.com/modstart/ModStartCMS.git modstart
```

**Windows参考**

> 按照描述自行操作

准备好的文件目录结构如下所示为：

```
├── README.md								# 帮助文档
├── docker-compose.yml      # 
├── docker_config           # 程序配置
│   ├── mysql_init.sql      # 数据库初始化脚本
│   └── tengine.conf        # tengine配置
└── modstart                # ModStart相关程序
    ├── app
    ├── bootstrap
    ├── ...
    └── public
```



### 3. 使用Docker脚本一键启动

```shell
docker-compose up
```



### 4. 进入系统安装引导程序

访问地址：[http://localhost:20080/](http://localhost:20080/)，数据库地址请按如下信息填写：

- 主机：`ms_mysql`
- 数据库名：`modstart`
- 用户名：`root`
- 密码：`123456`



## ✨ 注意事项

本一键启动脚本安装的程序数据库默认密码为123456，如需生产环境使用，请自行配置。
