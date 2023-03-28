<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body,
        input {
            font-family: "Poppins", sans-serif;
        }

        .sigin-signup {
            position: relative;
        }

        .sign-in-form, .sign-up-form {
            position: absolute;
            top:25%;
            right: 15%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .sign-up-form {
        }
        .panel.right-panel {
            /* display: none; */
            position: absolute;
            left: 18%;
            top: 20%;

        }
        .panel.left-panel {
            position: absolute;
            left: 0;
            top: 20%;
        }
        .image {
            width: 300px;
        }
        .title {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2.2rem;
        }
        .input-field {
            margin: 10px 0;
            padding: 10px 40px;
            background-color:  #f0f0f0;
            grid-template-columns: 15% 85%;
            border-radius: 55px;
            display: grid;

        }
        .input-field i {
            position: relative;
            top:3px;
            font-weight: 600;
            color:   #acacac;
        }
        .input-field input {
            outline: none;
            border: none;
            padding-left: 10px;
            color: #333;
            background-color:  #f0f0f0;;
            font-weight: 600;
            font-size: 1.1rem;
        }
        .input-field input::placeholder {
            color: #aaa;
            font-weight: 500;
        }
        .btn {
            margin: 10px 0;
            padding: 10px;
            width: 130px;
            height: 49px;
            background-color:  #5995fd;
            border: none;
            grid-template-columns: 15% 85%;
            border-radius: 55px;
            display: grid;
            text-transform: uppercase;
            color: white;
            text-align: center;
            cursor: pointer;
        }
        .btn.transparent {
            margin: 0;
            border: 2px solid #fff;
            width: 130px;
            height: 41px;
            font-weight: 600;
            font-size: 0.8rem;
            text-align: center;
            /* word-wrap: normal; */
            display: flex;
            justify-content: center;
        }
        .btn.transparent span {
            text-align: center;
        }
        .panel {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            justify-content: space-around;
            text-align: center;
            z-index: 6;
        }
        .social-icon i {
            margin-top: 20px;
            padding: 8px;
            border: 1px solid black;
            border-radius: 50%;
        }
        /* .container.sign-up-mode .sign-in-form {
            display: none;
        } */
        .container.sign-up-mode .sign-up-form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        /* .container.sign-up-mode .panel.left-panel {
            display: none;
        } */
        .container.sign-up-mode .panel.right-panel {
            display: flex;
            justify-content: center;
        }
    </style>
    <title> Sign up form</title>
</head>

<body>
<div class="container">
    <div class="signin-signup">
        <div class="sign-up-form">
            <form:form action="/account/register" method="post" class="sign-up-form" modelAttribute="user">
                <h2 class="title">Sign up</h2>
                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input autofocus id="fullName" type="text" placeholder="fullName" name="fullName"
                           value="${fn}"/>
                    <form:errors path="fullName" cssClass="error" cssStyle="color: red"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input autofocus id="email" type="email" placeholder="Email" name="username"
                    value="${un}"/>
                    <form:errors path="username" cssClass="error" cssStyle="color: red"/>
                </div>
                <c:if test="${not empty error}">
                    <p class="message" style="display: flex;align-items: center;justify-content: center;color: #c82333">
                        <i style="margin-right: 5px" class="fas fa-exclamation-triangle"></i>${registerError}</p>
                </c:if>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input autocomplete="off" type="password" placeholder="Password" name="password"
                    value="${pw}"/>
                    <form:errors path="password" cssClass="error" cssStyle="color: red"/>
                </div>


                <input type="submit" value="Sign up" id="submit" class="btn">
                <p class="social-text">
                    Or Sign up with social platforms</p>
                <div class="socical-media">
                    <a href="#" class="social-icon">
                        <i class="fab fa-facebook"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
            </form:form>

                </div>

    </div>
    <div class="panels-container">
        <div class="panel right-panel">
            <div class="content">
                <h3>One of us ?</h3>

                <a href="/login" class="btn transparent" id="sign-in-btn" style="text-decoration: none;">
                    <span>Sign in</span>
                </a>
            </div>
        </div>
    </div>

</div>
</div>
</body>

</html>