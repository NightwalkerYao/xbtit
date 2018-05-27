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
////////////////////////////////////////////////////////////////////////////////////

global $CURUSER, $FORUMLINK, $language;

   print("<div class='collection in-lateral-lft'><a class=\"menu collection-item\" href=\"index.php\"><i class='material-icons left'>home</i>".$language["MNU_INDEX"]."</a>\n");

   if ($CURUSER["view_torrents"]=="yes")
      {
      print("<a class=\"menu collection-item\" href=\"index.php?page=torrents\"><i class='material-icons left'>cloud_download</i>".$language["MNU_TORRENT"]."</a>\n");
      print("<a class=\"menu collection-item\" href=\"index.php?page=extra-stats\"><i class='material-icons left'>pie_chart</i>".$language["MNU_STATS"]."</a>\n");
      }
   if ($CURUSER["can_upload"]=="yes")
      print("<a class=\"menu collection-item\" href=\"index.php?page=upload\"><i class='material-icons left'>cloud_upload</i>".$language["MNU_UPLOAD"]."</a>\n");
   if ($CURUSER["view_users"]=="yes")
      print("<a class=\"menu collection-item\" href=\"index.php?page=users\"><i class='material-icons left'>account_box</i>".$language["MNU_MEMBERS"]."</a>\n");
   if ($CURUSER["view_news"]=="yes")
      print("<a class=\"menu collection-item\" href=\"index.php?page=viewnews\"><i class='material-icons left'>subtitles</i>".$language["MNU_NEWS"]."</a>\n");
   if ($CURUSER["view_forum"]=="yes")
      {
        if ($FORUMLINK=="" || $FORUMLINK=="internal" || substr($FORUMLINK,0,3)=="smf" || $FORUMLINK=="ipb")
           print("<a class=\"menu collection-item\" href=\"index.php?page=forum\"><i class='material-icons left'>public</i>".$language["MNU_FORUM"]."</a>\n");
        else
            print("<a class=\"menu collection-item\" href=\"".$FORUMLINK."\"><i class='material-icons left'>public</i>".$language["MNU_FORUM"]."</a>\n");
      }
   if ($CURUSER["uid"]==1 || !$CURUSER)
      print("<a class=\"menu collection-item\" href=\"index.php?page=login\"><i class='material-icons left'>power</i>".$language["LOGIN"]."</a>\n</div>\n");
   else
       print("<a class=\"menu collection-item\" href=\"logout.php\"><i class='material-icons left'>power_settings_new</i>".$language["LOGOUT"]."</a>\n</div>\n");
?>