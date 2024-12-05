<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    /* Custom styles */
    body {
        background-color: #f8f9fa; /* Light background for the page */
    }
    .form-container {
        max-width: 500px; /* Container width */
        margin: 50px auto; /* Center the form */
        padding: 30px;
       background: linear-gradient(120deg, #f3e5f5, #e1bee7); /* Light purple-lavender gradient */

        border-radius: 20px; /* More rounded corners */
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1); /* Softer shadow */
        transition: transform 0.3s; /* Smooth transform on hover */
    }
    .form-container:hover {
        transform: scale(1.02); /* Slightly scale up on hover */
    }
    h3 {
        text-align: center; /* Center the header */
        margin-bottom: 20px; /* Space below the header */
        color: #2c3e50; /* Dark color for header */
    }
    .btn-primary {
        background: linear-gradient(45deg, #6ab04c, #1dd1a1); /* Gradient colors */
        border: none; /* Remove border */
        color: white; /* White text for better contrast */
    }
    .btn-secondary {
        background: linear-gradient(45deg, #ff6b6b, #f79d00); /* Gradient colors */
        border: none; /* Remove border */
        color: white; /* White text for better contrast */
    }
</style>

</head>
<body>
  <%@include file="mainnavbar.jsp" %>
  <div class="form-container">
      <h3><b>Employee Registration</b></h3>
      <form method="post" action="insertemp">
          <div class="form-group">
              <label for="ename">Enter Name</label>
              <input type="text" class="form-control" id="ename" name="ename" required/>
          </div>
          <div class="form-group">
              <label>Select Gender</label><br/>
              <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" id="male" name="egender" value="MALE" required/>
                  <label class="form-check-label" for="male">Male</label>
              </div>
              <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" id="female" name="egender" value="FEMALE" required/>
                  <label class="form-check-label" for="female">Female</label>
              </div>
              <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" id="others" name="egender" value="OTHERS" required/>
                  <label class="form-check-label" for="others">Others</label>
              </div>
          </div>
          <div class="form-group">
              <label for="edob">Enter Date of Birth</label>
              <input type="date" class="form-control" id="edob" name="edob" required/>
          </div>
          <div class="form-group">
              <label for="edept">Select Department</label>
              <select class="form-control" id="edept" name="edept" required>
                  <option value="">---Select---</option>
                  <option value="TECHNICAL">Technical</option>
                  <option value="MARKETING">Marketing</option>
                  <option value="SALES">Sales</option>
              </select>
          </div>
          <div class="form-group">
              <label for="esalary">Enter Salary</label>
              <input type="number" class="form-control" id="esalary" name="esalary" step="0.01" required/>
          </div>
          <div class="form-group">
              <label for="elocation">Enter Location</label>
              <input type="text" class="form-control" id="elocation" name="elocation" required/>
          </div>
          <div class="form-group">
              <label for="eemail">Enter Email ID</label>
              <input type="email" class="form-control" id="eemail" name="eemail" required/>
          </div>
          <div class="form-group">
              <label for="epwd">Enter Password</label>
              <input type="password" class="form-control" id="epwd" name="epwd" required/>
          </div>
          <div class="form-group">
              <label for="econtact">Enter Contact</label>
              <input type="number" class="form-control" id="econtact" name="econtact" required/>
          </div>
          <div class="form-group text-center">
              <input type="submit" class="btn btn-primary" value="Register"/>
              <input type="reset" class="btn btn-secondary" value="Clear"/>
          </div>
      </form>
  </div>
</body>
</html>
