<%@ page import="java.util.Date" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Reemet
  Date: 02-Jun-19
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

<%
    /**
     * The request object provides methods to get the HTTP header information
     * including form data, cookies, HTTP methods etc.
     */
    HttpServletRequest request1 = request;

    /**
     * The response object also defines the interfaces that deal with creating new HTTP headers.
     * Through this object the JSP programmer can add new cookies or date stamps, HTTP status codes, etc.
     */
    HttpServletResponse response1 = response;

    /**
     * The out implicit object is an instance of a javax.servlet.jsp.JspWriter object and
     * is used to send content in a response.
     */
    JspWriter printWriter = out;

    /**
     * The session object is used to track client session between client requests
     */
    HttpSession httpSession = session;

    /**
     * This object is a representation of the JSP page through its entire lifecycle
     */
    ServletContext servletContext = application;

    /**
     * This object allows the JSP programmer access to the Servlet or JSP engine
     * initialization parameters such as the paths or file locations etc.
     */
    ServletConfig servletConfig = config;

    /**
     * This object is intended as a means to access information about the page while avoiding most of the
     * implementation details. This object stores references to the request and response objects for each request.
     * The application, config, session, and out objects are derived by accessing attributes of this object.
     * The pageContext object also contains information about the directives issued to the JSP page,
     * including the buffering information, the errorPageURL, and page scope.
     */
    PageContext context = pageContext;

    /**
     * This object is an actual reference to the instance of the page.
     * It can be thought of as an object that represents the entire JSP page.
     */
    page.toString();
    
%>

</body>
</html>
