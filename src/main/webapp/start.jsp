<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Person manager</title>
    </head>
    <body>
        <h1>Person manager</h1>
        
        <form action="add.jsp">
          <input type="text" name="name" value="${person.name}" />
          <input type="text" name="yob" value="${person.yob}" />
          <input type="submit" value=" OK " />
        </form>
    </body>
</html>
