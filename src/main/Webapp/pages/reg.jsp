<!DOCTYPE html>
<!-- Website - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Register</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="center">
      <h1>Register here</h1>
      <form  action="data" method="post" enctype=multipart/form-data>

        <div class="txt_field">
          <input type="text" name="username" required />
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="text" name="email" required />
          <span></span>
          <label>Email</label>
        </div>
        <div class="txt_field">
          <input type="text" name="location" required />
          <span></span>
          <label>Location</label>
        </div>

        <div class="txt_field">
          <input type="file" name="profileupload" required />
          <span></span>
          <label>Upload Profile Image</label>
        </div>

         <div class="txt_field">
          <input type="text" name="about" required />
          <span></span>
          <label>About You</label>
        </div>







        <div class="txt_field">
          <input type="password" name="password" required />
          <span></span>
          <label>Password</label>
        </div>
         <div class="txt_field">
          <input type="password" name="cpassword" required />
          <span></span>
          <label> Confirm Password</label>
        </div>

        <input type="submit" value="Register" />

      </form>
    </div>















    <style>@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      body {
        background: #2980b9;
        height: 100vh;
      }
      .center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        max-width: 420px;
        width: 100%;
        background: white;
        border-radius: 10px;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.05);
      }
      .center h1 {
        text-align: center;
        padding: 20px 0;
        border-bottom: 1px solid silver;
      }
      .center form {
        padding: 0 40px;
        box-sizing: border-box;
      }
      form .txt_field {
        position: relative;
        border-bottom: 2px solid #adadad;
        margin: 30px 0;
      }
      .txt_field input {
        width: 100%;
        padding: 0 5px;
        height: 40px;
        font-size: 16px;
        border: none;
        background: none;
        outline: none;
      }
      .txt_field label {
        position: absolute;
        top: 50%;
        left: 5px;
        color: #adadad;
        transform: translateY(-50%);
        font-size: 16px;
        pointer-events: none;
        transition: 0.5s;
      }
      .txt_field span::before {
        content: "";
        position: absolute;
        top: 40px;
        left: 0;
        width: 0%;
        height: 2px;
        background: #2691d9;
        transition: 0.5s;
      }
      .txt_field input:focus ~ label,
      .txt_field input:valid ~ label {
        top: -5px;
        color: #2691d9;
      }
      .txt_field input:focus ~ span::before,
      .txt_field input:valid ~ span::before {
        width: 100%;
      }
      .pass {
        margin: -5px 0 20px 5px;
        color: #a6a6a6;
        cursor: pointer;
      }
      .pass:hover {
        text-decoration: underline;
      }
      input[type="submit"] {
        width: 100%;
        height: 50px;
        background: #2691d9;
        border-radius: 25px;
        font-size: 18px;
        color: #e9f4fb;
        font-weight: 700;
        cursor: pointer;
        outline: none;
        transition: 0.5s;
        border: none;
      }
      input[type="submit"]:hover {
        border-color: #2691d9;
      }
      .signup_link {
        margin: 30px 0;
        text-align: center;
        font-size: 16px;
        color: #666666;
      }
      .signup_link a {
        color: #2691d9;
        text-decoration: none;
      }
      .signup_link a:hover {
        text-decoration: underline;
      }
      </style>
  </body>
</html>