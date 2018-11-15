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
        <title>JSP Page</title>
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
                                String pwd = request.getParameter("password");
                                String name = request.getParameter("name");
                                String email = request.getParameter("email");
                                String phone = request.getParameter("phone");
                                String bank = request.getParameter("bank");

                                Random rand = new Random((new Date()).getTime());
                                BASE64Encoder encoder = new BASE64Encoder();
                                byte[] salt = new byte[8];
                                rand.nextBytes(salt);

                                String encpass = encoder.encode(salt) + encoder.encode(pwd.getBytes());

                                ResultSet rs = st.executeQuery("select * from users where email='" + email + "';");
                                if (rs.next()) {
                                    //out.println(rs);


                            %>


                            <p class="text-info">User is already present<br></p>
                                <%                                   
                                    }
                                    else {

                                    String inser = "insert into users(`name`,`email`,`password`,`phone`,`bank`) values('" + name + "','" + email + "','" + encpass + "','" + phone + "','" + bank + "');";
                                    //out.println(inser);
                                    //int i = st.executeUpdate(inser);
                                    CallableStatement cstat = con.prepareCall("{call register (?,?,?,?,?)}");
                                    cstat.setString(1, name);
                                    cstat.setString(2, email);
                                    cstat.setString(3, encpass);
                                    cstat.setString(4, phone);
                                    cstat.setString(5, bank);
                                    
                                    out.println(cstat);
                                    ResultSet rs2 =cstat.executeQuery();
                                    con.close();
                                    cstat.close();
                                    /*if (i > 0) {
                                        response.sendRedirect("success.html");
                                    } else {
                                        response.sendRedirect("register.html");
                                    }*/

                                %>

                            <p class="text-info">User is successfully registered<br></p>
                                <%                                                                    }
                                %>


                            <a href="login.html" name="Log In" class="btn btn-success btn-md" style="text-align:'center';">Log In </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
