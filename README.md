# 教材管理网站项目说明

## 项目简介
本项目是一个基于Vue2.0和Django2.0开发的教材管理网站，包含前台展示和后台管理功能，采用前后端分离架构，旨在提供便捷的教材管理解决方案。

## 技术栈

### 前端技术
- Vue2.0：用于构建用户界面的渐进式JavaScript框架
- Element-ui：基于Vue2.0的桌面端组件库
- Vue Router：用于前端路由管理
- Axios：用于发送HTTP请求
- ECharts：用于数据可视化展示
- Sass：用于样式编写

### 后端技术
- Python3.7：后端开发语言
- Django2.0：Python Web应用框架
- Django REST framework：用于构建RESTful API
- MySQL5.7：关系型数据库

## 运行环境要求

### 开发工具
- PyCharm：用于后端Python/Django开发
- VSCode：用于前端Vue开发

### 软件环境
- Python：3.7版本
- Node.js：14版本
- MySQL：5.7版本
- 数据库管理工具：Navicat10+

## 项目结构

### 前端结构
- 前端代码位于`项目名称/templates`目录下
- `front/admin`：后台管理系统前端代码
  - `src/components`：通用组件目录
  - `src/views`：页面视图目录
  - `src/router`：路由配置目录
  - `src/utils`：工具函数目录
  - `src/assets`：静态资源目录（css、img等）

### 后端结构
- `django47nia/dj2`：Django项目主目录
  - `views.py`：视图处理函数
  - `urls.py`：URL路由配置
  - `settings.py`：项目配置
- `main`：主要应用模块

## 部署与运行步骤

### 后端部署
1. 克隆项目到本地
   ```bash
   git clone https://github.com/Zhouyuhong-123/work2.git
   cd work2/django47nia
   ```

2. 安装依赖包
   ```bash
   pip install -r requirements.txt
   ```

3. 配置数据库
   - 修改`config.ini`文件中的数据库配置信息
   - 确保MySQL5.7服务已启动

4. 启动Django服务
   ```bash
   python manage.py runserver 8080
   ```

### 前端部署
1. 进入前端目录
   ```bash
   cd templates/front/admin
   ```

2. 安装依赖
   ```bash
   npm install
   ```

3. 运行开发环境
   ```bash
   npm run serve
   ```

4. 构建生产环境
   ```bash
   npm run build
   ```

## 访问方式

### 演示地址
- 地址：http://localhost:8080/django47nia/admin/dist/index.html#/login

## 账号密码

### 管理员账号
- 用户名：admin
- 密码：admin

### 学生账号
- 用户名：学号1
- 密码：123456

### 教师账号
- 用户名：教师工号1
- 密码：123456

## 主要功能模块
- 教材信息管理
- 用户权限管理（管理员、教师、学生）
- 数据统计与可视化展示
- 个人信息管理与密码修改

## 注意事项
- 开发环境中前后端通过代理进行通信，配置位于`vue.config.js`
- 生产环境需注意静态资源路径配置
- 数据库连接信息需根据实际环境修改
