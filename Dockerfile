# 基础镜像：满足 Node >=16
FROM node:21-alpine

# 容器内工作目录
WORKDIR /app

# 先复制依赖描述文件（最大化利用缓存）
COPY package*.json ./

# 安装依赖
RUN npm install

# 再复制全部源代码
COPY . .

# 应用监听端口
EXPOSE 3000

# 启动开发模式
CMD ["npm", "run", "dev","--","--host"]
