<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
--%>

<style>
form{
   background-color : olive;
   width: 300px;
   height : 250px;
   border-style : solid;
   border-color : green;
   padding : 8 px;
   text-align: center;
   position: center;

   
}
</style>
<div>
<form action="/set-user" method="post">
<h2>Registration Page!!!</h2>
<div>Name:<input type="text" name= "userName" value=""></div><br>
<%--
<c:if test="${not empty error}">
<div><h5>${error}</h5></div>
<div><br></div>
</c:if>
--%>
<div>Password:      <input type="text" name= "password" value=""></div><br>
<div>Confirm Password:      <input type="text" name= "password2" value=""></div><br>
<%-- <div>Acknowledgment:<input type="number" name= "ACK" value=""></div><br><br> --%>
<div><input type="submit" name= "register" value="submit" style="background-color:orange"></div><br>

</form>
</div>




