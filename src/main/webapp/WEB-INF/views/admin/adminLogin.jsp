<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>后台登录</title>

    <!-- Bootstrap core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://v3.bootcss.com/examples/signin/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://v3.bootcss.com/assets/js/ie-emulation-modes-warning.js"></script>

</head>

<body>

<div class="container">

    <form class="form-signin" id="adminlogin_form" action="http://localhost:8080/springMVC/user/adminLogin" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <label for="username" class="sr-only">用户名</label>
        <input type="username" id="username" name="username" value="" class="form-control" placeholder="用户名" required autofocus>
        <label for="password" class="sr-only">密码</label>
        <input type="password" id="password" name="password" value="" class="form-control" placeholder="密码" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="remember_me" checked="checked" value="1"> 记住我
            </label>&nbsp;&nbsp;&nbsp;&nbsp;
            <b style="color:red"></b>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>

    <script type="text/javascript">
        function uniencode(text) {
            text = escape(text.toString()).replace(/\+/g, "%2B");
            var matches = text.match(/(%([0-9A-F]{2}))/gi);
            if (matches) {
                for (var matchid = 0; matchid < matches.length; matchid++) {
                    var code = matches[matchid].substring(1, 3);
                    if (parseInt(code, 16) >= 128) {
                        text = text.replace(matches[matchid], '%u00' + code);
                    }
                }
            }
            text = text.replace('%25', '%u0025');
            return text;
        }
    </script>

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="http://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
