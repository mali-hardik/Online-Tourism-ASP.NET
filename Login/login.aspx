<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login_login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TRAVELER</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main" style="padding: 20px 0;">
    <form class="register-form" runat="server">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
            <asp:Panel ID="sign_in_panel" runat="server">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <%--<a href="registration.aspx" class="signup-image-link">Create an account</a>--%>
                        <%--<asp:Button ID="Button1" runat="server" Text="Create an account" class="signup-image-link"></asp:Button>--%>
                        <%--<asp:HyperLink ID="sign_up_link" runat="server" class="signup-image-link" onClick="sign_up_click">Create an account</asp:HyperLink>--%>
                        <asp:LinkButton ID="sign_up_link" runat="server" class="signup-image-link" onClick="sign_up_click" style="text-decoration: none;">Create an account</asp:LinkButton>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <%--<form method="POST" class="register-form" id="login-form">--%>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <%--<input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                                <asp:TextBox ID="txtemailid" runat="server" type="email" placeholder="Your Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <%--<input type="password" name="your_pass" id="your_pass" placeholder="Password"/>--%>
                                <asp:TextBox ID="txtpass" runat="server" type="password" placeholder="Password"></asp:TextBox>
                            </div>
                            <%--<div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>--%>
                            <div class="form-group">
                               <%-- <label for="remember-me" class="label-agree-term"><span><span></span></span>Fogot Password</label>--%>
                               <asp:LinkButton ID="btn_forgotPass" runat="server" class="signup-image-link" 
                                    style="text-decoration: none;text-align: left;" onclick="btn_forgotPass_Click">Forgot Password</asp:LinkButton>
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>--%>
                                <asp:Button ID="btn_signin" runat="server" Text="Log in" class="form-submit" 
                                    onclick="btn_signin_Click1" style="margin-top: 0px;"></asp:Button>
                            </div>
                        <%--</form>--%>
                        <div class="social-login" style="margin-top: 20px;">
                            <span class="social-label">Back with</span>
                            <ul class="socials">
                                <%--<li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>--%>
                                <li><a href="../user/home.aspx"><i class="display-flex-center zmdi zmdi-home zmdi-hc-fw" style="background: #3b5998;"></i></a></li>
                                <%--<li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="sign_up_panel" runat="server" Visible="False" ><%--style="height: 710px;"--%>
                <div class="signup-content" ><%--style="height: 645px;"--%>
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <%--<form method="POST" class="register-form" id="register-form">--%>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <%--<input type="text" name="name" id="name" placeholder="Your Name"/>--%>
                                <asp:TextBox ID="txtusername" runat="server" type="text" placeholder="Your Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <%--<input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                                <asp:TextBox ID="txtemail" runat="server" type="email" placeholder="Your Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <%--<input type="password" name="pass" id="pass" placeholder="Password"/>--%>
                                 <asp:TextBox ID="txtpassword" runat="server" type="password" placeholder="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <%--<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>--%>
                                <asp:TextBox ID="txtre_pass" runat="server" type="password" placeholder="Repeat your password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>--%>
                                <asp:Button ID="btn_signup" runat="server" Text="Register" class="form-submit" 
                                    onclick="btn_signup_Click"></asp:Button>
                            </div>
                        <%--</form>--%>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <%--<a href="login.aspx" class="signup-image-link">I am already member</a>--%>
                        <%--<asp:HyperLink ID="sign_in_link" runat="server">I am already member</asp:HyperLink>--%>
                        <asp:LinkButton ID="sign_in_link" runat="server" class="signup-image-link" 
                            onclick="sign_in_link_Click" style="text-decoration: none;">I am already member</asp:LinkButton>
                         <%--<asp:Panel ID="panel_success" runat="server" >
                             <div class="alert alert-success" role="alert">
                               You have succesfully created Account. For continue<asp:HyperLink ID="hyperSuccess" runat="server">Login</asp:HyperLink>
                            </div>
                         </asp:Panel>--%>   
                    </div>
                </div>
            </asp:Panel>

            <!-- forgot password -->

            <asp:Panel ID="forgot_password_panel" runat="server" Visible="False">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Forgot Password</h2>
                        <%--<form method="POST" class="register-form" id="register-form">--%>
                        <asp:Panel ID="panel_forgot" runat="server">
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <%--<input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                                <asp:TextBox ID="txtemailpass" runat="server" type="email" placeholder="Your Registered Email"></asp:TextBox>
                            </div>
                            <div class="form-group form-button">
                                <%--<input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>--%>
                                <asp:Button ID="btn_forgot_pass" runat="server" Text="Forgot Password" 
                                    class="form-submit" onclick="btn_forgot_pass_Click"></asp:Button><br /><br />
                            </div>
                            </asp:Panel>
                            <asp:Label ID="Labmsg" runat="server"></asp:Label>
                            <div class="social-login" style="margin-top: 20px;margin-left: 10px;">
                                    <span class="social-label">Back with</span>
                                    <ul class="socials">
                                        <%--<li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>--%>
                                        <li><a href="../Login/login.aspx"><i class="display-flex-center zmdi zmdi-account" style="background: #3b5998;"></i></a></li>
                                        <%--<li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                        <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>--%>
                                    </ul>
                                </div>
                        <%--</form>--%>
                    </div>
                    
                    <div class="signup-image">
                        <figure><img src="images/forgot-password.jpg" alt="sing up image"></figure>
                        <%--<a href="login.aspx" class="signup-image-link">I am already member</a>--%>
                        <%--<asp:HyperLink ID="sign_in_link" runat="server">I am already member</asp:HyperLink>--%>
                        <%--<asp:LinkButton ID="LinkButton1" runat="server" class="signup-image-link" style="text-decoration: none;">I am already member</asp:LinkButton>--%>
                    </div>
                    
                </div>
                
            </asp:Panel>

            </div>
        </section>
        </form>
    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>