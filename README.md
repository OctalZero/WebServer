# WebServer
A C++ Lightweight Web Server.
# 目录树
```
.
├── base                            // Linux 下网络编程的基础接口的测试
│   ├── network                     // 网络相关
│   ├── process                     // 进程相关
│   └── thread                      // 线程相关
├── CMakeLists.txt                  
├── database                        // 数据库
│   ├── CMakeLists.txt
│   ├── sql_connection_pool.cpp    
│   └── sql_connection_pool.h
├── doc                             // 文档和项目流程图
│   ├── arch                        
|   |── readme_assert   
│   └── test
├── http                            // 客户端的 http 请求解析封装类
│   ├── CMakeLists.txt
│   ├── http_conn.cpp
│   └── http_conn.h
├── LICENSE
├── lock                            // 线程同步机制封装类
│   └── locker.h
├── log                             // 服务器日志封装类
│   ├── block_queue.h
│   ├── CMakeLists.txt
│   ├── log.cpp
│   └── log.h
├── readme_assert               
├── README.md
├── root                            // 服务器静态资源
│   ├── css
│   ├── img
│   └── page
├── test_tools                      // 压测工具
│   └── webbench-1.5
├── threadpool                      // 线程池
│   └── threadpool.h
├── timer                           // 定时器
│   ├── heap_lst_timer.cpp
│   ├── heap_lst_timer.h
│   └── lst_timer.h
└── WebServer.cpp                  
```
# 功能模块逻辑
## 项目架构
![项目架构](https://github.com/OctalZero/WebServer/blob/master/doc/arch/%E6%9E%B6%E6%9E%84%E5%9B%BE.png)
## 项目逻辑
![项目逻辑](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E9%A1%B9%E7%9B%AE%E9%80%BB%E8%BE%91.jpg)
## 同步机制封装
![同步机制封装](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E5%90%8C%E6%AD%A5%E6%9C%BA%E5%88%B6%E5%B0%81%E8%A3%85.jpg)
## 线程池
![线程池](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E7%BA%BF%E7%A8%8B%E6%B1%A0.jpg)
## 数据库连接池
![数据库连接池](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E6%95%B0%E6%8D%AE%E5%BA%93%E8%BF%9E%E6%8E%A5%E6%B1%A0.jpg)
## HTTP 解析
### 详细流程
![主从状态机模型](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E4%B8%BB%E4%BB%8E%E7%8A%B6%E6%80%81%E6%9C%BA%E6%A8%A1%E5%9E%8B.jpg)
![HTTP 解析详细流程](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/HTTP%E8%A7%A3%E6%9E%90%E8%AF%A6%E7%BB%86%E6%B5%81%E7%A8%8B.png)
## 定时器非活检测
![定时器非活检测](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E5%AE%9A%E6%97%B6%E5%99%A8.jpg)
## 同步异步日志系统
![同步异步日志系统](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E9%A1%B9%E7%9B%AE%E6%B5%81%E7%A8%8B%E5%9B%BE/%E5%90%8C%E6%AD%A5%E5%BC%82%E6%AD%A5%E6%97%A5%E5%BF%97%E7%B3%BB%E7%BB%9F.jpg)
# 运行效果
## 首页
![首页](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E9%A6%96%E9%A1%B5.jpg)
## 登录界面
![登录界面](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E7%99%BB%E5%BD%95%E7%95%8C%E9%9D%A2.jpg)
## 注册界面
![注册界面](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E6%B3%A8%E5%86%8C%E9%A1%B5%E9%9D%A2.jpg)
## 功能测试界面
![功能测试界面](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E5%8A%9F%E8%83%BD%E6%B5%8B%E8%AF%95%E7%95%8C%E9%9D%A2.jpg)
## 获取图片
![获取图片](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E5%9B%BE%E7%89%87%E8%8E%B7%E5%8F%96%E6%B5%8B%E8%AF%95.jpg)
## 获取视频
![获取视频](https://github.com/OctalZero/WebServer/blob/master/doc/readme_assert/%E7%95%8C%E9%9D%A2%E6%95%88%E6%9E%9C/%E8%A7%86%E9%A2%91%E8%8E%B7%E5%8F%96%E6%B5%8B%E8%AF%95.jpg)
# WebBench 压测
![压测](https://github.com/OctalZero/WebServer/blob/master/doc/test/testQPS.jpg)