
<%@page import="com.cjc.main.model.Loan"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="admindash/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Bars Css -->
    <link rel="stylesheet" href="admindash/css/bar.css">
    <!--// Bars Css -->
    <!-- Calender Css -->
    <link rel="stylesheet" type="text/css" href="admindash/css/pignose.calender.css" />
    <!--// Calender Css -->
    <!-- Common Css -->
    <link href="admindash/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Nav Css -->
    <link rel="stylesheet" href="admindash/css/style4.css">
    <!--// Nav Css -->
    <!-- Fontawesome Css -->
    <link href="admindash/css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->

</head>
<body>
  <div class="se-pre-con"></div>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a href="index">Admin</a>
                </h1>
                <span>M</span>
            </div>
            <div class="profile-bg"></div>
            <ul class="list-unstyled components">
                <li class="active">
                    <a href="backtohome">
                        <i class="fas fa-th-large"></i>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="fas fa-laptop"></i>
                        Loan Information
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                          <li>
                            <a href="activloan">Active Loan</a>
                        </li>
                      
                         <li>
                            <a href="inactivloan">Inactive Loan</a>
                        </li>
                        <li>
                            <a href="bikeloan">Vehicle Loan</a>
                        </li>
                        <li>
                            <a href="homeloan">Home Loan</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="npa">
                        <i class="fas fa-chart-pie"></i>
                        NPA
                    </a>
                </li>
                <li>
                    <a href="loanproduct">
                        <i class="fas fa-th"></i>
                        Loan Product
                    </a>
                </li>
                  <li>
                    <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">
                        <i class="far fa-file"></i>
                       Confirmation
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu1">
                        <li>
                            <a href="newclientconfirmation">New Client Confirmation</a>
                        </li>
                        
                    </ul>
                </li>
              
                <li>
                         </li>
                <li>
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                        <i class="fas fa-users"></i>
                        Employee 
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3">
                        <li>
                            <a href="register">Add Employee</a>
                        </li>
                        <li>
                            <a href="listofemployee">List Of Employee</a>
                        </li>
                       
                    </ul>
                </li>
                
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                    <!-- Search-from -->
                     
                            <a  href="/" style="color: red;">Logout </a>
                    
                    <!--// Search-from -->
                    
                </div>
            </nav>
            <!--// top-bar -->
                    <!--// Stats -->
                    <!-- Pie-chart -->
                    <div class="outer-w3-agile col-xl ml-xl-3 mt-xl-0 mt-3">
                        <h4 class="tittle-w3-agileits mb-4">Pie Chart</h4>
                        <div id="chartdiv"></div>
                    </div>
                    <!--// Pie-chart -->
                    
                     <!-- Simple-chart -->
                     <%List<Loan> list=(List<Loan>)request.getAttribute("list"); 
            %>
            <div class="outer-w3-agile mt-3">
                <h4 class="tittle-w3-agileits mb-4">List Of Npa Client</h4>
                
                
                <div id="Hybridgraph" class="simple-chart1">
                         <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Client Name</th>
                                            <th>Loan Type</th>
                                            <th>Loan amount</th>

                                            <th>Status</th>
                                            <th>ROI(%)</th>
                                            <th>Duration(months)</th>
                                            <th>EMI Amount</th>
                                            <th>EMI Paid</th>
                                            <th>Eligible For Next Loan</th>
                                            <th>Defaulter</th>
 
                                        </tr>
                                    </thead>
                                    <tbody>
                                   <%for(Loan ll:list) 
                    {	
                    %>
                    <tr>
                    <td><%out.print(ll.getCname());%></td>
                    <td><%out.print(ll.getLtype());%></td>
                    <td><% out.print(ll.getLamout());%></td>
                    <td><%out.print(ll.getLstatus());%></td>
                    <td><%out.print(ll.getROI());%></td>
                    <td><% out.print(ll.getLduration());%></td>
                    <td><%out.print(ll.getEmiamount());%></td>
                    <td><% out.print(ll.getLemipaid());%></td>
                    <td><%out.print(ll.getEligiblefornextloan());%></td>
                    <td><%out.print(ll.getDefaulter());%></td>   
                    </tr>
                    <% }%>
                 </tbody>   
                </table>
                
                   </div>
                </div>
            </div>
            <!--// Simple-chart -->
                    
                </div>
            </div>
            
           
              </div>
    </div>


    <!-- Required common Js -->
    <script src='admindash/js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->
    
    <!-- loading-gif Js -->
    <script src="admindash/js/modernizr.js"></script>
    <script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>
    <!--// loading-gif Js -->

    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!--// Sidebar-nav Js -->

    <!--// Graph -->
    <!-- Bar-chart -->
    <script src="admindash/js/rumcaJS.js"></script>
    <script src="admindash/js/example.js"></script>
    <!--// Bar-chart -->
    <!-- Calender -->
     <!--// Calender -->

    <!-- profile-widget-dropdown js-->
    <script src="admindash/js/script.js"></script>
    <!--// profile-widget-dropdown js-->

    <!-- Count-down -->
    <script src="admindash/js/simplyCountdown.js"></script>
    <link href="admindash/css/simplyCountdown.css" rel='stylesheet' type='text/css' />
    <script>
        var d = new Date();
        simplyCountdown('simply-countdown-custom', {
            year: d.getFullYear(),
            month: d.getMonth() + 2,
            day: 25
        });
    </script>
    <!--// Count-down -->

    <!-- pie-chart -->
    <script src='admindash/js/amcharts.js'></script>
    <script>
        var chart;
        var legend;

        var chartData = [{
                country: "profit",
                value:<%=request.getAttribute("kk") %>
            },
            {
                country: "loss",
                value:<%=request.getAttribute("ii") %>
            }
        ];

        AmCharts.ready(function () {
            // PIE CHART
            chart = new AmCharts.AmPieChart();
            chart.dataProvider = chartData;
            chart.titleField = "country";
            chart.valueField = "value";
            chart.outlineColor = "";
            chart.outlineAlpha = 0.8;
            chart.outlineThickness = 2;
            // this makes the chart 3D
            chart.depth3D = 20;
            chart.angle = 30;

            // WRITE
            chart.write("chartdiv");
        });
    </script>
    <!--// pie-chart -->

    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="admindash/js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>
</html>