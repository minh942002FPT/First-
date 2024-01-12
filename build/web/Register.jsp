<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="css/register.css"> <!-- Thay đổi từ login.css thành register.css -->
</head>
<body>
    <h2>Create Account</h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="RegisterCustomerController" method="post">
                <!-- Form fields for registration -->
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registration</span>
                <input type="text" placeholder="Account" name="user" required="true" />
                <input type="email" name="email" placeholder="Email" />
                <input type="password" name="pass" placeholder="Password" required="true" />
                <input type="password" name="repass" placeholder="Re-password" required="true" />
                <button type="submit">Sign Up</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <a href="login.jsp"><button class="ghost" id="signIn">Sign In</button></a>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>
            Created with <i class="fa fa-heart"></i> by
            <a target="_blank" href="https://www.facebook.com/profile.php?id=100006695251254">Nhật Minh</a>
            - Read how I created this and how you can join the challenge
            <a target="_blank" href="https://www.facebook.com/tien.ta.311">here</a>.
        </p>
    </footer>

    <script type="text/javascript">
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });
    </script>
</body>
</html>
