<?php
/////////////////////////////////////////////////////////////////////////////////////
// xbtit - Bittorrent tracker/frontend
//
// Copyright (C) 2004 - 2016  DPWS Media LTD
//
//    This file is part of xbtit.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//   1. Redistributions of source code must retain the above copyright notice,
//      this list of conditions and the following disclaimer.
//   2. Redistributions in binary form must reproduce the above copyright notice,
//      this list of conditions and the following disclaimer in the documentation
//      and/or other materials provided with the distribution.
//   3. The name of the author may not be used to endorse or promote products
//      derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
// WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
// TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
// EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// You can see there are plenty of extra spaces for more menu links,
// you will need to simply create a language setting for your links and then insert them into
// the menu, as I have below. (TreetopClimber)
//
////////////////////////////////////////////////////////////////////////////////////
global $CURUSER, $btit_settings, $language;

//print("<div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>");
print("--><ul>");

print("<li><a href='index.php'><i class='material-icons left'>home</i>".$language["MNU_INDEX"]."</a></li>\n");
         
if ($CURUSER["view_torrents"]=="yes")    
{    
	print("<li class='dropdowni'><a href='#!' class='dropdown-trigger' data-target='droptorrents'><i class='material-icons left'>cloud_download</i>".$language["MNU_TORRENT"]."<i class='material-icons right'>arrow_drop_down</i></a></li>\n"); //dropdown initializer

    //the content to drop down
    print("<ul class='dropdown-content' id='droptorrents'>\n");
    print("<li><a href='index.php?page=torrents&search=&category=0&active=0'>".$language["ALL"]."</a></li>\n");
    print("<li><a href='index.php?page=torrents&search=&category=0&active=1'>".$language["ACTIVE_ONLY"]."</a></li>\n");
    print("<li><a href='index.php?page=torrents&search=&category=0&active=2'>".$language["DEAD_ONLY"]."</a></li>\n");
    print("<li><a href='index.php?page=extra-stats'>".$language["MNU_STATS"]."</a></li>\n");
    
if ($CURUSER["can_upload"]=="yes")                
{

    print("<li><a href='index.php?page=upload'>".$language["MNU_UPLOAD"]."</a></li>\n");

}	
	
    print("</ul>"); //end dropdown content

if ($CURUSER["view_users"]=="yes")
    print("<li class='dropdowni'><a href='#!' class='dropdown-trigger' data-target='dropdowncommunity'><i class='material-icons left'>public</i>Communauté<i class='material-icons right'>arrow_drop_down</i></a></li>\n");

    print("<ul class='dropdown-content' id='dropdowncommunity'>\n");    
if ($CURUSER["view_forum"]=="yes")
    {
        if ($GLOBALS["FORUMLINK"]=="" || $GLOBALS["FORUMLINK"]=="internal" || substr($GLOBALS["FORUMLINK"],0,3)=="smf" || $GLOBALS["FORUMLINK"]=="ipb")
            print("<li><a href='index.php?page=forum'>".$language["MNU_FORUM"]."</a></li>\n");
        else
            print("<li><a href='".$GLOBALS["FORUMLINK"]."'>".$language["MNU_FORUM"]."</a></li>\n");
    }
if ($CURUSER["view_users"]=="yes")
    {
        print("<li><a href='index.php?page=users'>".$language["MNU_MEMBERS"]."</a><b></b></li>\n");
    }    
    print("</ul>");
    
if ($CURUSER["view_news"]=="yes")
    {
        print("<li><a href='index.php?page=viewnews'><i class='material-icons left'>subtitles</i>".$language['MNU_NEWS']."</a></li>\n");
    }


/* there is already a my panel to edit profiles no need to waste space unless really needed in top menu*/

/*  just tidying up a little here */ 

/*print("<li><a href='#'>".$language['USER_MENU']."</a>\n");
    print("<ul>\n");*/

	
if ($CURUSER["view_users"]=="yes")
		{
    print("<li class='dropdowni'><a href='#!' class='dropdown-trigger' data-target='dropdownMyAccount'><i class='material-icons left'>account_box</i>Mon Compte<i class='material-icons right'>arrow_drop_down</i></a></li>\n");

    print("<ul class='dropdown-content' id='dropdownMyAccount'>\n");
    print("<li><a href='index.php?page=usercp&amp;uid=".$CURUSER["uid"]."'>".$language['MNU_UCP_HOME']."</a></li>\n");
    print("<li><span class='blue-grey-text text-lighten-1'>".$language["MNU_UCP_PM"]."</span></li>\n");
    //print("<li class='divider' tabindex='-1'></li>\n");
    //print("<ul class='dropdown-contente' id='mAsub1e'>\n");
    print("<li><a href='index.php?page=usercp&uid=".$CURUSER["uid"]."&do=pm&action=list&what=inbox'>".$language['MNU_UCP_IN']."</a></li>\n");
    print("<li><a href='index.php?page=usercp&uid=".$CURUSER["uid"]."&do=pm&action=list&what=outbox'>".$language['MNU_UCP_OUT']."</a></li>\n");
    print("<li><a href='index.php?page=usercp&uid=".$CURUSER["uid"]."&do=pm&action=edit&uid=".$CURUSER["uid"]."&what=new'>".$language['MNU_UCP_NEWPM']."</a></li>\n");
    //print("</ul>");

    print("<li><span class='blue-grey-text text-lighten-1'>".$language["MNU_UCP_INFO"]."</span></li>\n");
    //print("<ul class='dropdown-contente' id='dpucpinfos'>\n");
    //print("<li class='divider' tabindex='-2'></li>\n");
    print("<li><a href='index.php?page=usercp&do=user&action=change&uid=".$CURUSER["uid"]."'>".$language['MNU_UCP_INFO']."</a></li>\n");
    print("<li><a href='index.php?page=usercp&do=pwd&action=change&uid=".$CURUSER["uid"]."'>".$language['MNU_UCP_CHANGEPWD']."</a></li>\n");
    print("<li><a href='index.php?page=usercp&do=pid_c&action=change&uid=".$CURUSER["uid"]."'>".$language['CHANGE_PID']."</a></li>\n");
    //print("</ul>\n");

    print("</ul>\n");

} 
    
    if ($CURUSER["admin_access"]=="yes") {
        require_once(load_language("lang_admin.php"));
        print("<li class='dropdowni'><a href='#!' class='dropdown-trigger' data-target='admdropD'>".$language["ADMIN_ACCESS"]."<i class='material-icons right'>arrow_drop_down_circle</i></a></li>\n");
        print("<ul class='dropdown-content' id='admdropD'>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."'>".$language["MNU_ADMINCP"]."</a></li>\n");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['TRACKER_SETTINGS']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=config&action=read'>".$language['TRACKER_SETTINGS']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=banip&action=read'>".$language['ACP_BAN_IP']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=language&action=read'>".$language['ACP_LANGUAGES']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=style&action=read'>".$language['ACP_STYLES']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=security_suite'>".$language["ACP_SECSUI_SET"]."</a></li>\n");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_FRONTEND']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=category&action=read'>".$language['ACP_CATEGORIES']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=poller&action=read'>".$language['ACP_POLLS']."</a></li>");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=badwords&action=read'>".$language["ACP_CENSORED"]."</a></li>");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=blocks&action=read'>".$language['ACP_BLOCKS']."</a></li>");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_USERS_TOOLS']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=groups&action=read'>".$language['ACP_USER_GROUP']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=masspm&action=write'>".$language['ACP_MASSPM']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=pruneu'>".$language['ACP_PRUNE_USERS']."</a></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=searchdiff'>".$language['ACP_SEARCH_DIFF']."</a></li>");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_TORRENTS_TOOLS']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=prunet'>".$language['ACP_PRUNE_TORRENTS']."</a></li>\n");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_FORUM']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=forum&action=read'>".$language['ACP_FORUM']."</a></li>\n");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_OTHER_TOOLS']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=dbutil'>".$language['ACP_DBUTILS']."</a></li>");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=mysql_stats'>".$language['ACP_MYSQL_STATS']."</a></li>");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=logview'>".$language['ACP_SITE_LOG']."</a></li>");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=php_log'>".$language["LOGS_PHP"]."</a></li>");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_MODULES']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=module_config&action=manage'>".$language['ACP_MODULES_CONFIG']."</a></li>");
        //print("</ul></li>");
        print("<li><a href='#!' class='blue-grey-text text-lighten-1'>".$language['ACP_HACKS']."</a></li>\n");
        //print("<ul class='dropdown-menu'>\n");
        print("<li class='divider'></li>\n");
        print("<li><a href='index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&do=hacks&action=read'>".$language['ACP_HACKS_CONFIG']."</a></li>");
        //print("</ul></li>");
        
        print("</ul>");

    }

	
	if ($CURUSER["uid"]==1 || !$CURUSER) {
        print("<li><a href='index.php?page=login' class='gotoLogin'>".$language["LOGIN"]."<i class='material-icons right cyan'>power</i></a></li>\n");
    }
    else {
        print("<li><a href='logout.php' class='gotoLogout'>".$language["LOGOUT"]."<i class='material-icons right red'>power_settings_new</i></a></li>\n");
    }
    
}

print("</ul>");
//print("</div>")

?>