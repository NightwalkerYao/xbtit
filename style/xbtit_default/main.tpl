<!DOCTYPE html>
<html lang="en" xmlns:tag="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="XBTIT">
    <meta name="author" content="XBTIT">
    <title><tag:main_title /></title>
    <!-- Bootstrap Core CSS -->
    <link href="style/xbtit_default/css/bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="style/xbtit_default/css/modern.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="style/xbtit_default/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- we need some older JS so we are keeping this tag in place until phased out -->
    <tag:main_jscript />
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
<!--                 <a class="navbar-brand" href="index.php"><tag:site_name /></a> -->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <tag:main_dropdown />
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
<tag:main_header />
<!-- Content Row -->
        <div class="row">
            <!-- Content Column -->
            <div class="col-md-12">
                <div id="bodyarea" style="padding:4ex 0 0 0;">
                    <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td valign="top" width="5" rowspan="2"></td>
                            <if:HAS_LEFT_COL>
                                <td valign="top" id="col" width="220"><tag:main_left /></td>
                                <td valign="top" width="5" rowspan="2"></td>
                            </if:HAS_LEFT_COL>
                            <td id="mcol" valign="top"><tag:main_content /></td>
                            <!--<if:HAS_RIGHT_COL>
                                <td valign="top" width="5" rowspan="2"></td>
                                <td valign="top" id="col" width="150"><tag:main_right /></td>
                            </if:HAS_RIGHT_COL>-->
                            <td valign="top" width="5" rowspan="2"></td>
                        </tr>
                    </table>
                    <br />
                    <table align="center" width="100%" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td valign="top" width="5" rowspan="2"></td>
                            <td id="mcol" valign="top"><tag:main_footer /></td>
                            <td valign="top" width="5" rowspan="2"></td>
                        </tr>
                    </table>
                    <br />
                </div>
 </div>
</div>
<!-- /.row -->
    <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
				    
                    <p align="center">Copyright &copy; 2018 <a href="//inspirates.io.ci/" target="_blank">Inspirates</a><!--XBTIT <tag:style_copyright />&nbsp;<tag:xbtit_version />--></p>
					<p align="center"><tag:xbtit_debug /></p>
                </div>
            </div>
        </footer>
    </div>
    <!-- /.container -->
    <!-- jQuery -->
    <script src="style/xbtit_default/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="style/xbtit_default/js/bootstrap.min.js"></script>
</body>
</html>
