<!DOCTYPE html>
<!-- Website - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<% HttpSession h1=request.getSession(false);%>



<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="images/<%out.print(h1.getAttribute("profile"));%>" alt="">
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <%out.print(h1.getAttribute("username"));%>
                                    </h5>


                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                    <p> <%out.print(h1.getAttribute("about"));%></p>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="logout">Logout</a>



                        <br>
                        <br>

                       <a href="edit/<%out.println(h1.getAttribute("id"));%>">Edit Profile</a>

                      <div class="col-md-2">

                    </div>
                    </div>




                </div>

                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Username</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%out.print(h1.getAttribute("username"));%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%out.print(h1.getAttribute("email"));%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Location</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%out.print(h1.getAttribute("location"));%></p>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Password</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%out.print(h1.getAttribute("password"));%></p>
                                            </div>
                                        </div>
                            </div>


        <style>body{
          background: -webkit-linear-gradient(left, #3931af, #00c6ff);
      }
      .emp-profile{
          padding: 3%;
          margin-top: 3%;
          margin-bottom: 3%;
          border-radius: 0.5rem;
          background: #fff;
      }
      .profile-img{
          text-align: center;
      }
      .profile-img img{
          width: 70%;
          height: 100%;
      }
      .profile-img .file {
          position: relative;
          overflow: hidden;
          margin-top: -20%;
          width: 70%;
          border: none;
          border-radius: 0;
          font-size: 15px;
          background: #212529b8;
      }
      .profile-img .file input {
          position: absolute;
          opacity: 0;
          right: 0;
          top: 0;
      }
      .profile-head h5{
          color: #333;
      }
      .profile-head h6{
          color: #0062cc;
      }
      .profile-edit-btn{
          border: none;
          border-radius: 1.5rem;
          width: 70%;
          padding: 2%;
          font-weight: 600;
          color: #6c757d;
          cursor: pointer;
      }
      .proile-rating{
          font-size: 12px;
          color: #818182;
          margin-top: 5%;
      }
      .proile-rating span{
          color: #495057;
          font-size: 15px;
          font-weight: 600;
      }
      .profile-head .nav-tabs{
          margin-bottom:5%;
      }
      .profile-head .nav-tabs .nav-link{
          font-weight:600;
          border: none;
      }
      .profile-head .nav-tabs .nav-link.active{
          border: none;
          border-bottom:2px solid #0062cc;
      }
      .profile-work{
          padding: 14%;
          margin-top: -15%;
      }
      .profile-work p{
          font-size: 12px;
          color: #818182;
          font-weight: 600;
          margin-top: 10%;
      }
      .profile-work a{
          text-decoration: none;
          color: #495057;
          font-weight: 600;
          font-size: 14px;
      }
      .profile-work ul{
          list-style: none;
      }
      .profile-tab label{
          font-weight: 600;
      }
      .profile-tab p{
          font-weight: 600;
          color: #0062cc;
      }</style>
   </body>
</html>