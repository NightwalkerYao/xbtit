<!DOCTYPE html>
<html lang="fr-CI">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="my fav Tracker">
    <meta name="author" content="inspirates.io.ci">
    <title><tag:main_title /></title>
    <link href="style/elephanto/asset/css/font.css" rel="stylesheet" type="text/css">
    <link href="style/elephanto/asset/css/materialize.min.css" rel="stylesheet" type="text/css">
    <link href="style/elephanto/main.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- we need some older JS so we are keeping this tag in place until phased out -->
    <tag:main_jscript />
</head>
<body class="blue-grey-text text-lighten-3">
    <header class="whitie">
        <div class="row" >
            <a class="navbar-brand brand-logo" href="index.php"><tag:site_name /></a>
        </div>
        <div class="row navbar">
            <div class="navbar-header center rounded ccustom-show-off">
                <h3>Elephan.to!</h3>
            </div>
            <nav class="top-nav-bar">
                <div class="nav-wrapper right"><!-- 
                    <tag:main_dropdown /> <!-- //ceci est un hack -->
                </div>
            </nav>
            <tag:main_slideIt />
        </div>
    </header>
    <main>
        <tag:main_header /> <!-- toolbars -->
        <div class="row">
            <!-- Content Column -->
            <div class="col l3 m4 hide-on-small-only lateral-left card-panel bg-like-head">
                <if:HAS_LEFT_COL>
                    <div><tag:main_left /></div>
                </if:HAS_LEFT_COL>
            </div>
            <div class="col s12 m8 l9 central-milieu">
                <div><tag:main_content /></div>
            </div>
            <!-- <div class="col">
                <i//f:HAS//_RIGHT_COL>
                    <div><//tag:m//ain_right /></div>
                </i//f:HAS//_RIGHT_COL>
            </div> -->
        </div>
        <div class="row">
            <div class="card-panel s12 m12 l12 transparent"><tag:main_footer /></div>
        </div>
    </main>
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col s12 l12 m12 transparent"> 
                <p align="center"><tag:style_copyright /></p>
            </div>
        </div>
    </footer>
    <!-- <script src="style/elephanto/asset/js/jquery-3.3.1.min.js"></script> -->
    <script type="text/javascript" src="style/elephanto/asset/js/materialize.min.js"></script>
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function() {
        //DD = DropDown
            var DDelems = document.querySelectorAll('.dropdown-trigger');
            var DDinstances = M.Dropdown.init(DDelems, {hover:true, alignment:'right', closeOnClick:false});
        });
        document.addEventListener('DOMContentLoaded', function() {
            var FSelems = document.querySelectorAll('select');
            var FSinstances = M.FormSelect.init(FSelems, {/*classes: ''*/});
          });
    </script>
</body>
</html>
