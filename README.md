# 麦当劳优惠券领取助手

一个基于 React + TypeScript + Vite 的现代化 Web 应用，用于通过麦当劳 MCP Server 领取和管理优惠券。

## 📸 界面预览

![界面预览 1](screenshots/screenshot-1.jpg)

![界面预览 2](screenshots/screenshot-2.jpg)

## ✨ 功能特性

- 🔑 **MCP Token 管理**：安全存储和管理您的 MCP Token
- 🎫 **可领取优惠券**：浏览所有可领取的优惠券列表，支持一键领取所有优惠券
- 💳 **已领取的优惠券**：查看已领取的优惠券详情，包括有效期、标签等信息
- 📱 **响应式设计**：完美适配桌面端和移动端
- 🎨 **现代化 UI**：采用麦当劳品牌设计语言，界面简洁美观

## 🛠️ 技术栈

- **前端框架**：React 18 + TypeScript
- **构建工具**：Vite 5
- **HTTP 客户端**：Axios
- **样式**：CSS3（支持响应式布局）

## 📦 安装

### 前置要求

- Node.js >= 16.0.0
- npm >= 7.0.0

### 安装依赖

```bash
npm install
```

## 🚀 快速开始

### 开发模式

```bash
npm run dev
```

应用将在 `http://localhost:3000` 启动，并自动打开浏览器。

### 构建生产版本

```bash
npm run build
```

构建产物将输出到 `dist` 目录。

## 使用Docker部署到服务器
新建docker-compose.yml并输入：
```
version: "3.9"

services:
  app:
    container_name: mcd-coupon-assistant
    image: ghcr.io/destoryg/mcd-coupon-assistant
    ports:
      - "3000:3000"
    environment:
      NODE_ENV: development
    command: npm run dev -- --host
    restart: unless-stopped

```
然后在相同目录下执行命令：
```bash
docker-compose up -d
```
之后请在浏览器通过 `http://你的服务器域名:3000` 来访问。

## 📖 使用说明

### 1. 申请 MCP Token

在使用本应用之前，您需要先申请麦当劳 MCP Token：

1. 访问 [麦当劳 MCP 官网](https://open.mcd.cn/mcp)
2. 点击右上角【登录】按钮，使用手机号验证登录
3. 登录后点击【控制台】
4. 点击【激活】按钮申请 MCP Token
5. 同意服务协议后即可获得 Token

### 2. 设置 Token

1. 启动应用后，在首页输入您的 MCP Token
2. 点击【确认设置】进行验证
3. Token 验证成功后即可使用所有功能

### 3. 使用功能

- **可领取优惠券**：浏览所有可领取的优惠券列表，点击页面底部的【一键领取所有优惠券】按钮自动领取所有可用优惠券
- **已领取的优惠券**：查看已领取的优惠券详情，包括有效期、标签等信息

## 📁 项目结构

```
m/
├── src/
│   ├── components/          # React 组件
│   ├── services/            # MCP 客户端
│   ├── utils/               # 工具函数
│   └── ...
├── netlify/
│   └── functions/           # Netlify Functions
├── screenshots/             # 项目截图
└── ...
```

## 🔧 开发说明

### 开发环境

开发环境已配置 Vite 代理，自动处理 CORS 跨域问题。所有 API 请求统一使用 `/api/mcp` 路径。

### 生产环境

生产环境通过 Netlify Functions 代理解决 CORS 问题，Function 路径为 `/api/mcp`。

## 🚢 部署

项目已配置 Netlify 部署：

1. 连接 GitHub 仓库到 Netlify
2. 构建设置已自动配置（Build command: `npm run build`，Publish directory: `dist`）
3. Netlify 会自动识别 `netlify/functions/` 目录并部署 Functions

## ⚠️ 注意事项

- ⚠️ 每个 Token 每分钟最多允许 600 次请求
- 🔒 Token 存储在浏览器本地存储中，请妥善保管
- 📱 应用支持响应式设计，可在移动设备上使用
- ⚠️ 重复领取的优惠券将无效

## 👨‍💻 开发者

Developed by [Ruiying Li](https://www.ruiying.li/)

## 📄 许可证

© 2020-2025 McDonald's. All Rights Reserved
