<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
--%>

<style>
form{
   background-color : skyblue;
   width: 280px;
   height : 250px;
   border-style : solid;
   border-color : blue;
   padding : 8 px;
   text-align: center;
   position: center;

   
}
</style>
<div>
<form action="log" method="post">
<h2>Login Page!!!</h2>
<div>Name:<input type="text" name= "userName" value=""></div><br>
<%--
<c:if test="${not empty error}">
<div><h5>${error}</h5></div>
<div><br></div>
</c:if>
--%>
<div>Password:      <input type="text" name= "password" value=""></div><br>
<div>Acknowledgment:<input type="number" name= "ACK" value=""></div><br><br>
<div><input type="submit" name= "login" value="login" style="background-color:lime"></div><br>
<div><input type="button" name= "Register" value="Register" onclick="gotoRegister()" style="background-color:orange" ></div>
</form>
</div>

<script type="text/javascript">
function gotoRegister()
{
alert("going to register")
window.location.href="/register";
}
</script>




