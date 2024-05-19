# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 维护者信息
LABEL maintainer="zshuaike@outlook.com"

# 删除默认的 Nginx 网站内容
RUN rm -rf /usr/share/nginx/html/*

# 将本地的静态网站内容复制到 Nginx 的 HTML 目录
COPY . /usr/share/nginx/html

# 暴露端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
