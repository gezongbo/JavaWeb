# JavaWeb
学习JavaWeb学习笔记和代码
# 一、JavaWeb概述
-  Client/S架构
- Browser(html css js)/Server架构
- Servlet技术
- JSP技术
# 二、Web服务器
学习Web开发，服务器是必不可少的。
Web开发常用的服务器软件：
- (1)WebLogic服务器，是BEA公司的产品，也是目前Web开发使用最广泛的服务器之一。
- (2)WebSphere服务器，是IBM公司的产品。
- (3)Tomcat服务器，是中小型的应用系统中使用最广泛的服务器，是开源免费的，是Apache公司的产品。
# 三、Tomcat服务器的下载、配置
## 1、Tomcat服务器的下载
下载地址:http://tomcat.apahce.org
(1)zip (pgp, sha512)  是Window操作系统下的Tomcat免安装版本的压缩文件
(2)tar.gz (pgp, sha512)  Linux操作系统下的版本
(3)32-bit Windows zip (pgp, sha512)  Window系统下32位安装版本
(4)64-bit Windows zip (pgp, sha512) Window系统下64位安装版本
Tomcat服务器运行需要JDK的支持
Tomcat5  jdk4以上版本
Tomcat6   jdk5以上版本
Tomcat7   jdk6以上版本
## 2、介绍一下Tomcat目录结构
- (1)bin目录  -- 存储Tomcat的命令
- (2)conf目录  -- Tomcat的配置文件，最重要的是server.xml文件
- (3)webapps目录  -- 存储web项目
## 3、将Tomcat服务器部署到开发工具中
**Tomcat服务器的默认端口号是8080**
浏览器地址栏访问:http://localhost:8080
# 四、Servlet技术
## 1、Servlet是什么？
Servlet是sun公司提供的一门用于开发动态web资源的技术
Servlet可以在服务器端接收浏览器端发送过来的请求，也可以向浏览器端响应内容，同时Servlet也用于和数据库做连接。
## 2、使用开发工具开发第一个web程序—HelloServlet
- Step1：新建一个web项目
- Step2：新建包，在包下创建类，HelloServlet类
- Step3：让HelloServlet去继承HttpServlet，在该类中调出- service方法，在service方法完成该servlet要做的事情
- Step4：在web.xml文件中对HelloServlet进行配置
- Step5：将web项目部署到tomcat服务器中
- Step6：在浏览器地址栏中输入地址访问：
     http://localhost:8080/web项目名/url-pattern地址
     http://localhost:8080/servlet/hello
## 3、servlet的调用过程
（1）浏览器地址栏输入地址，会向服务器发送请求
（2）服务器端先检查web项目中的web.xml文件，根据配置找到要调用执行哪个servlet
（3）接下来会执行servlet中的service方法，将结果返回到浏览器端显示。
		B---->S---->B
      整个调用执行过程都是服务器自动进行的，开发人员只需要写好servlet以及web.xml相关配置即可，无需关注底层的实现，这个也是容器，框架的思想。

## 4、servlet的配置细节
### (1)基本配置

```xml
<servlet >
    <servlet-name></servlet-name>
    <servlet-class></servlet-class>
</servlet>
<servlet-mapping>
    <servlet-name></servlet-name>
    <url-pattern></url-pattern>
</servlet-mapping>
```
   其中一个<servlet>可以对应多个<servlet-mapping>
### (2)带星号的通配符配置

```xml
语法：1) *.加内容的配置
        <url-pattern>*.do</url-pattern>
      2)以/开头，以/*结尾的配置
        <url-pattern>/mytest/*</url-pattern>
	localhost:8080/web项目名/mytest/xxx
```

### （3）缺省配置
   

```xml
   url-pattern的路径中，只有一个/
   <url-pattern>/</url-pattern>
```
   如果一个servlet的对外访问路径设置为/，则该servlet就是一个缺省servlet，其它servlet不处理的请求都由它来处理。





