<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
                  http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
           version="3.0">

  <servlet>
    <servlet-name>RoninServlet</servlet-name>
    <servlet-class>ronin.RoninServletWrapper</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>default</servlet-name>
    <url-pattern>/public/*</url-pattern>
  </servlet-mapping>
  <servlet-mapping>
    <servlet-name>RoninServlet</servlet-name>
    <url-pattern>/*</url-pattern>
  </servlet-mapping>
</web-app>