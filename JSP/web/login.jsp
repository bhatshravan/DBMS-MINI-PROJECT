<%-- 
    Document   : login
    Created on : 21 Sep, 2018, 4:10:13 PM
    Author     : shravan
    --%>

    <%@page import ="java.sql.*" %>
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


        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/login.css" rel="stylesheet">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>

    <body>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div class="login-box col-md-12">

                            <h2 class="text-center text-info">Registration</h2><br/>


                            <%        
                            String userid = request.getParameter("email");
                            session.setAttribute("userid", userid);
                            String pwd = request.getParameter("pwd");
                            String username;

                            String used = "select * from users where email='" + userid + "';";
                            out.println(used);

                            ResultSet rs = st.executeQuery("select * from users where email='" + userid + "';");

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
                                response.sendRedirect("stock/index.html");
                            }
                            else
                            {
                                %>
                                <p class="text-info">
                                    Invalid Password, Go Back and try again!
                                    <br></p>

                                    <%
                                }
                            } 
                            catch (IOException e)
                            {

                                        //  throw new InvalidImplementationException(
                                        //Fail

                                    }
                                }
                                else 
                                    {
                                        %>
                                        <p class="text-info">
                                            Invalid User ID, Go Back and try again!
                                            <br></p>
                                            <%
                                        }
                                        /%>



                                        <a href="login.html" name="Log In" class="btn btn-success btn-md" style="text-align:'center';">Log In </a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </body>
                </html>

