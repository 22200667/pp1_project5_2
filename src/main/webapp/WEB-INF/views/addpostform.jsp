<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>writer:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>one-line review:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<%--    <tr><td>title:</td><td><input type="text" name="title" value="${param.title}"/></td></tr>--%>
<%--    <tr><td>writer:</td><td><input type="text" name="writer" value="${param.writer}"/></td></tr>--%>
<%--    <tr><td>one-line review:</td><td><textarea cols="50" rows="5" name="content">${param.content}</textarea></td></tr>--%>

    <tr><td>genre:</td><td>
    <input type='radio' name='category' value='action' />action
    <input type='radio' name='category' value='crime' />crime
    <input type='radio' name='category' value='sf' />SF
    <input type='radio' name='category' value='comedy' />comedy
    <input type='radio' name='category' value='music' />music
<%--    <tr><td>개봉일:</td><td><input type="date" name="releasedate"/></td></tr>--%>
<%--    <tr><td>별점:</td><td>--%>

</table>
    <button type="button" onclick="location.href='boardlist'">view list</button>
    <button type="submit">Add post</button>
</form>
<%--<form action="addok" method="post">--%>
<%--    <table id="edit">--%>
<%--        <tr><td>title:</td><td><input type="text" name="title" value="${param.title}"/></td></tr>--%>
<%--        <tr><td>writer:</td><td><input type="text" name="writer" value="${param.writer}"/></td></tr>--%>
<%--        <tr><td>one-line review:</td><td><textarea cols="50" rows="5" name="content">${param.content}</textarea></td></tr>--%>
<%--        <tr><td>genre:</td><td>--%>
<%--            <input type='radio' name='category' value='action' /><label for='action'>action</label>--%>
<%--            <input type='radio' name='category' value='crime' /><label for='crime'>crime</label>--%>
<%--            <input type='radio' name='category' value='sf' /><label for='sf'>SF</label>--%>
<%--            <input type='radio' name='category' value='comedy' /><label for='comedy'>comedy</label>--%>
<%--            <input type='radio' name='category' value='music' /><label for='music'>music</label>--%>
<%--        </td></tr>--%>
<%--    </table>--%>
<%--    <button type="button" onclick="location.href='boardlist'">view list</button>--%>
<%--    <button type="submit">Add post</button>--%>
<%--</form>--%>

</body>
</html>