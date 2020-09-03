# [gd-utils](https://github.com/iwestlin/gd-utils)的[Docker版](https://hub.docker.com/r/apocalypsor0/gd-utils),快速搭建google drive 转存工具

# 注意:

为方便持久化,源代码的`/gd-utils/config.js` 和 ` /gd-utils/gdurl.sqlite` 已经软链接到目录`/gd-utils/sa/`

Docker镜像会自动更新！

# 简单使用方法:
 1. 启动容器,假设挂载目录为`/root/gd-utils/sa`
 ```
docker run --restart=always  -d \
-p 23333:23333 \
--name gd-utils \
-v /root/gd-utils/sa:/gd-utils/sa \
apocalypsor0/gd-utils
```
  2. 修改配置文件`/root/gd-utils/sa/config.js`
  3. 上传sa文件到`/root/gd-utils/sa/`
  4. 重启容器

**持久化目录:** 

/gd-utils/sa/
为方便持久化,源代码的`/gd-utils/config.js` 和 ` /gd-utils/gdurl.sqlite` 已经软链接到目录`/gd-utils/sa/`

## 原项目
[gd-utils](https://github.com/iwestlin/gd-utils)

## 相关项目

[gd-utils](https://github.com/iwestlin/gd-utils)
