<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@include file="connect.jsp"%>

<%@page import="java.io.IOException" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Random" %>
<%@page import="sun.misc.BASE64Decoder" %>
<%@page import="sun.misc.BASE64Encoder" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="icon" type="image/png" href="../Photos/whiteLogo.png">


    <link href = "/WebApplication1/Stylize/boot/bootstrap.min.css" rel = "stylesheet">
    <script src="/WebApplication1/Stylize/boot/bootstrap.min.js"></script>
    <script src="/WebApplication1/Stylize/boot/jquery.min.js"></script>
    <!--Font awesome-->
<link rel="stylesheet" href="/WebApplication1/Stylize/fa/css/all.min.css">

    <link href="Stylize/css/login.css" rel="stylesheet">

</head>

<body>
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div class="login-box col-md-12">

                        <h2 class="text-center text-info">Login failure</h2><br/>


                        <%

                        String userid = request.getParameter("email");
                        String pwd = request.getParameter("pwd");
                        String username;

                        String query = "select * from users where email=?";
                        PreparedStatement psm = con.prepareStatement(query);
                        psm.setString(1,userid);
                        ResultSet rs=psm.executeQuery();

                        if (rs.next()) {

                        String entpass = rs.getString("password");
                        String cipher = entpass.substring(12);

                        BASE64Decoder decoder = new BASE64Decoder();

                        try {

                        String decoded = new String(decoder.decodeBuffer(cipher));
                        if (decoded.equals(pwd))
                        {
                            username = rs.getString(3);
                            session.setAttribute("userid", rs.getString("user_id"));
                            session.setAttribute("username", username);
                            response.sendRedirect("stocks/index.jsp");
                        }
                        else
                        {
                            %>
                            <p class="text-info text-center">
                                Invalid Password, Go Back and try again!
                                <br></p>

                                <%
                            }
                        }
                        catch (IOException e)
                        { %>

                            <p class="text-info">
                                Database connection error, Go Back and try again!
                                <br></p>
                            <%

                            }
                        }
                        else
                            {
                                %>
                                <p class="text-info text-center">
                                    Invalid User ID, Go Back and try again!
                                    <br></p>
                                    <%
                                }
                                %>


                                <center>
                                <a href="login.html" name="Log In" class="btn btn-danger btn-md text-center" style="align:'center';">Log In </a>
                            </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </body>
        </html>
