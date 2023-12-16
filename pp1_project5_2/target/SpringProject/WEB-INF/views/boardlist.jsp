<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="com.example.board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        h1 {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
            margin: 0;
        }

        table {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("Do you really want to delete?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>Movie Recommendation Site </h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Genre</th>
        <th>One-line review</th>
        <th>Register date</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td><a href="viewform/${u.seq}">${u.seq}</a></td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.category}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
<%--            <td><a href="deleteok.jsp?seq=${u.seq}" onclick="return confirm('Do you really want to delete?')">delete</a></td>--%>
<%--            <td>--%>
<%--                <a href="$deleteok.jsp?seq=${u.seq}"--%>
<%--&lt;%&ndash;                   &lt;%&ndash;%>--%>
<%--&lt;%&ndash;                       System.out.println();&ndash;%&gt;--%>
<%--&lt;%&ndash;                   %>&ndash;%&gt;--%>
<%--                   onclick="return confirm('Do you really want to delete?')">delete</a>--%>
<%--            </td>--%>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">Add new post</button>
</body>
</html>