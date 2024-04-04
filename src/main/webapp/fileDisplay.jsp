<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Библиотека</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="static/index.css">
</head>
<body>
    <div class="show_book">
        <div class="back_button"><a href="/OOPServlLab1_war/"><button type="button">Назад</button> </a> </div>
        <div class="book">
            <pre><%= request.getAttribute("fileContent") %></pre>
        </div>
    </div>
</body>
</html>