## 前后端分离项目  医疗管理系统
* 登录功能（支持用户名、邮箱登录）
* 注册用户（通过邮箱注册）
* 重置密码（通过邮箱重置密码）
* 角色权限分为管理员、医生、护士、药品管理员
* 每次访问验证jwt令牌
* redis缓存数据库数据
## 系统采用redis缓存和RabbitMQ消息队列
* redis端口6379
* RabbitMQ端口5672 用户名:guest 密码:guest
