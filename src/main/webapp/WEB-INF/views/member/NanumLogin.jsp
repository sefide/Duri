<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/duri/resources/board/css/NanumLogin.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
    
<head>
	<title>둘이두리-로그인페이지(행복)</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
<div class="flex-wrap">
    <fieldset>
        <form action novalidate>
            <input type="radio" name="rg" id="sign-in" checked/>
            <input type="radio" name="rg" id="sign-up" />
            <input type="radio" name="rg" id="reset" />        

            <label for="sign-in">Sign in</label>
            <label for="sign-up">Sign up</label>
            <label for="reset">Reset</label>  

            <input class="sign-up sign-in reset" type="email" placeholder="Email" />
            <input class="sign-up sign-in" type="password" placeholder ="Password" />
            <input class="sign-up" type="password" placeholder ="Repeat Password" />
            <button>Submit</button>        
            
            <p>In response to <a href="https://codepen.io/IanHazelton/details/bgwEPa/" target="_blank">this pen</a></p>
        </form>
    </fieldset>
</div>
</body>
</html>
