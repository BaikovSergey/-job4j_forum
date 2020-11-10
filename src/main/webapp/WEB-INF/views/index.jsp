<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script>

        $(document).ready(function () {
            $("#allPosts").on("click", "#btn-update", function () {
                var $row = $(this).closest("tr");
                var $id = $row.find("td:nth-child(1)").text().trim();
                var $name = $row.find("td:nth-child(2)").text().trim();
                var desc = $row.find("td:nth-child(3)").text().trim();
                var $created = $row.find("td:nth-child(4)").text().trim();
                window.location.replace("<c:url value='/update'/>" + "?id=" + $id + "&name=" + $name
                    + "&desc=" + desc + "&created=" + $created);
            });
        });

    </script>

    <title>Форум job4j</title>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="d-flex flex-row-reverse">
                <div class="p-2">Login as : ${user.username}</div>
            </div>
        </div>
        <div class="card-body">
            <div class="container pt-2">
                <a href="<c:url value='/create'/>" class="btn btn-success btn-lg">Create new
                    post</a>
            </div>
            <div class="container pt-1">
                <table class="table" id="allPosts" style="table-layout: fixed">
                    <thead class="thead-light">
                    <tr>
                        <th style="display: none">Id</th>
                        <th style="width: 40%">Name</th>
                        <th style="width: 40%">Description</th>
                        <th style="width: 10%">Date</th>
                        <th style="width: 10%"> </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${posts}" var="post">
                        <tr>
                            <td style="display: none" id="id"><c:out value="${post.id}"/></td>
                            <td id="name"><c:out value="${post.name}"/></td>
                            <td id="desc"><c:out value="${post.desc}"/></td>
                            <td id="created"><c:out value="${post.created}"/></td>
                            <td><button class="btn btn-primary" id="btn-update">Updt</button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-footer">

        </div>
    </div>
</div>
</body>
</html>
</html>