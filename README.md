# MyHomePage（我的个人主页）
你好,这是我的个人主页最新版,分支为`master`

部署全局使用腾讯云Serverless框架托管，提高了国内的访问速度

功能如下：

1. 国际化切换，在页面的右下角可切换多种语言。并且根据浏览器的cookie功能提供记忆性选择。提高用户体验
2. 对接[hitokoto](https://hitokoto.cn/)，处理网站随机短语
<<<<<<< HEAD
3. 新版本UI的改进，扁平化的支持。采用bootstrap框架code，兼容PC/PAD/Phone等多设备分辨率兼容，随时保证访问体验。



# 使用Docker部署

已内置Dockerfile，直接构建部署即可

## 构建镜像

```shell
docker build -t home-page .
```

## 启动容器

```
docker run -d -p 80:80 --name home-page home-page
```

## 测试

```shell
curl http://127.0.0.1
```