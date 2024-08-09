<%@page import="com.cjc.main.model.User"%>
<%@page import="com.cjc.main.model.Employee"%>
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
                    <a href="#">Financial Services</a>
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
                        User Information
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="adduser">Add User Information</a>
                        </li>
                       
                        <li>
                            <a href="userlist">User List </a>
                        </li>
                        <li>
                            <a href="uconfirm">User confirmation</a>
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
                        <li>
                            <a href="500.html">Pending Confirmation</a>
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
                            <a href="register.html">List Of Employee</a>
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
                     
                            <a  href="backtohome" style="color: red;">Back to home </a>
                    
                    <!--// Search-from -->
                    
                </div>
            </nav>
            <!--// top-bar -->
            <div class="container-fluid">
                <div class="row">
                   <div class="container-fluid">
                <div class="row">
                    <!-- Stats -->
                    <div class="outer-w3-agile col-xl">
                        <div class="work-progres">
                            <h4 class="tittle-w3-agileits mb-4">List Of User</h4>
                            <hr>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Mobileno</th>

                                            <th>Email</th>
                                            <th>Password</th>
                                            <th>Loan_type</th>
                                            <th>Loan_Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <% List<User> list=(List<User>)request.getAttribute("list"); %>
                                        <% 
                                        for(User li:list)
                                        {
                                        %>
                                        <tr>
                                            <td><%=li.getName()%></td>
                                            <td><%=li.getAddress() %></td>
                                            <td><%=li.getMobileno() %></td>

                                            <td>
                                                <%=li.getEmail() %>
                                            </td>
                                            <td>
                                               <%=li.getPassword() %>
                                            </td>
                                            <td><%=li.getLtype()%></td>
                                            <td><%=li.getLamount()%></td>
                                        </tr>
                                        <%} %>
                                                                           </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                   </div>
                    </div>
                    <!--// Stats -->
                    <!-- Pie-chart -->
                    <!--// Pie-chart -->
                </div>
            </div>
            <!-- Simple-chart -->
                        <!--// Simple-chart -->

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

    <!-- Graph -->
    <script src="admindash/js/SimpleChart.js"></script>
    <script>
        var graphdata4 = {
            linecolor: "Random",
            title: "Thursday",
            values: [{
                    X: "1996",
                    Y: 300.00
                },
                {
                    X: "1997",
                    Y: 200.98
                },
                {
                    X: "1998",
                    Y: 140.00
                },
                {
                    X: "1999",
                    Y: 340.00
                },
                {
                    X: "2000",
                    Y: 470.25
                },
                {
                    X: "2001",
                    Y: 400.56
                },
                {
                    X: "2002",
                    Y: 500.57
                },
                {
                    X: "2003",
                    Y: 632.00
                },
                {
                    X: "2004",
                    Y: 700.89
                },
                {
                    X: "2005",
                    Y: 650.57
                },
                {
                    X: "2006",
                    Y: 680.24
                },
                {
                    X: "2007",
                    Y: 750.00
                },
                {
                    X: "2008",
                    Y: 836.24
                },
                {
                    X: "2009",
                    Y: 842.58
                },
                {
                    X: "2010",
                    Y: 810.54
                },
                {
                    X: "2011",
                    Y: 750.00
                },
                {
                    X: "2012",
                    Y: 600.00
                },
                {
                    X: "2013",
                    Y: 670.89
                },
                {
                    X: "2014",
                    Y: 749.26
                },
                {
                    X: "2015",
                    Y: 809.89
                },
                {
                    X: "2016",
                    Y: 803.87
                },
                {
                    X: "2017",
                    Y: 910.00
                }
            ]
        };
        $(function () {
            $("#Hybridgraph").SimpleChart({
                ChartType: "Hybrid",
                toolwidth: "50",
                toolheight: "25",
                axiscolor: "#E6E6E6",
                textcolor: "#6E6E6E",
                showlegends: false,
                data: [graphdata4],
                legendsize: "140",
                legendposition: 'bottom',
                xaxislabel: 'Year',
                title: 'Yearly Profit',
                yaxislabel: 'Profit in INR'
            });
        });
    </script>
    <!--// Graph -->
    <!-- Bar-chart -->
    <script src="admindash/js/rumcaJS.js"></script>
    <script src="admindash/js/example.js"></script>
    <!--// Bar-chart -->
    <!-- Calender -->
    <script src="admindash/js/moment.min.js"></script>
    <script src="admindash/js/pignose.calender.js"></script>
    <script>
        //<![CDATA[
        $(function () {
            $('.calender').pignoseCalender({
                select: function (date, obj) {
                    obj.calender.parent().next().show().text('You selected ' +
                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                        '.');
                }
            });

            $('.multi-select-calender').pignoseCalender({
                multiple: true,
                select: function (date, obj) {
                    obj.calender.parent().next().show().text('You selected ' +
                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                        '~' +
                        (date[1] === null ? 'null' : date[1].format('YYYY-MM-DD')) +
                        '.');
                }
            });
        });
        //]]>
    </script>
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
                value: <%=request.getAttribute("kk") %>
            },
            {
                country: "loss",
                value: <%=request.getAttribute("ii") %>
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