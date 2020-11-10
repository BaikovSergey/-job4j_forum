<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function () {
            var url = new URL(window.location);
            var id = url.searchParams.get("id");
            var name = url.searchParams.get("name");
            var text = url.searchParams.get("desc");
            $("#id").prop("value", id);
            $("#name").prop("value", name);
            $("#desc").prop("value", text);
        });
    </script>

    <title>Update post</title>
</head>
<body>
<div class="container pt-3">
    <div class="row">
        <div class="card" style="width: 100%">
            <div class="card-header">
                Create new post
            </div>
            <div class="card-body">
                <form action="<c:url value='/update'/>" method="post" class="was-validate">
                    <div class="row">
                        <div>
                            <input type="hidden" class="form-control" name="id" id="id">
                        </div>
                        <div class="col-sm">
                            <input type="text" class="form-control" placeholder="Post name"
                                   name="name" id="name" required>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm">
                            <input type="text" class="form-control" placeholder="Post desc"
                                   name="desc" id="desc">
                        </div>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-success">Update post</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
