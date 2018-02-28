<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Demo Application</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/additional-methods.js">

</head>
<script>$(document).ready(function() {
                jQuery.validator.addMethod("countryTypeRequired", function(
                        value, element) {
                    var val = value;
                    alert(val);
                    if (val === "Select Country") {
                        return false;
                    } else {
                        return true;
                    }
                }, "Please Select Country");
                $("#user").validate({
                alert("called");
                    rules : {
                        country : {
                            required : true,
                            countryTypeRequired : true
                        },
                        firstName : {
                                  required : true
                                },
                                 lastName : {
                                           required : true
                                          },
                        date : {
                            required : true
                        }
                    },
                    // Specify the validation error messages
                    messages : {
                    firstName: "Please Enter First Name",
                      firstName: "Please Enter Last Name",
                        country : "Please Select Country",
                        date : "Please select Date"
                    },
                    submitHandler : function(form) {
                        alert("submit");
        				}
        			});
        		});
</script>
  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">User Demo Application</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
    </br>
    </br>
 <form:form method="POST" action= "/main"  id="user" ondragstart="return false;" ondrop="return false;" class="form-control">
          <table class="table table-bordered" >
              <tbody>
                  <tr><th>First Name</th>
                          <td>
                          <form:input type="text" path="firstName" ></form:input>
                  </td></tr>
                  <tr><th>Last Name</th><td><form:input type="text" path="lastName" ></form:input></td></tr>
                  <tr><th>Country</th><td>
      <form:select class="form-control" itemValue="country" id="country" path="country"   style="width: 21%">
      											<form:option value="Select Name">Select Country</form:option>
      											<c:forEach var="countryList" items="${listOfCountries}">
      												<form:option id="${country}" value="${countryList.name}">${countryList.name}</form:option>
      											</c:forEach>
      										</form:select>
                  </td></tr>
                  <tr><th>Date</th><td>
                  <form:input class="date-picker" id="date" path="date" />
                  											            </td></tr>
                  <tr><td colspan="2">
                  <button class="btn orange_bg" type="submit"> Submit</button>
                  </tr>
              </tbody>
          </table>
          </table>
      </form:form>
    </div>
    <!-- /.container -->

</br>
    </br></br></br></br>  </br></br></br>
                                             </br></br></br>
                                                               </br></br>
             </br>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white"></p>
      </div>
      <!-- /.container -->

    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>

  </body>

</html>
<script >
$(function() {
  //$(".date-picker").datepicker();
  $(".date-picker").datepicker({
      showOn: 'button'
  }).next('button').button({
      icons: {
          primary: 'ui-icon-calendar'
      }, text:false
  });
});
		</script>