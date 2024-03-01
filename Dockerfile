
# 使用官方的 Java 运行时作为父镜像
FROM openjdk:8-jdk-alpine

# 设置工作目录为 /usr/src/myapp
WORKDIR /usr/src/myapp

# 将本地文件 HelloWorld.java 复制到 Docker 容器中的工作目录
COPY HelloWorld.java .

# 编译 HelloWorld.java 文件
RUN javac HelloWorld.java

# 在容器启动时运行 HelloWorld.class
CMD ["java", "HelloWorld"]

