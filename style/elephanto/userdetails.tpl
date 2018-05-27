<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top">
    <i class="material-icons left cyan-text" style="font-size: 27pt;">account_box</i>
    <tag:userdetail_username /> - <tag:userdetail_send_pm /> <tag:userdetail_edit /> <tag:userdetail_delete />
  </h4>
  <div class="row torrent-infos">
    <if:userdetail_has_avatar>
      <div class="card-panel bg-like-head left" style="clear: both;">
        <tag:userdetail_avatar />
      </div>
    <else:userdetail_has_avatar>
    </if:userdetail_has_avatar>
    <if:userdetail_edit_admin>
      <div class="col l3 s4 m4"><tag:language.EMAIL />:</div>
      <div class="col l9 s8 m8 left-align"><tag:userdetail_email /></div>
      <div class="col l3 s4 m4"><tag:language.LAST_IP /></div>
      <div class="col l9 s8 m8 left-align"><tag:userdetail_last_ip /></div>
      <div class="col l3 s4 m4"><tag:language.USER_LEVEL /></div>
      <div class="col l9 s8 m8 left-align"><tag:userdetail_level_admin /></div>
    <else:userdetail_edit_admin>
      <div class="col l3 s4 m4"><tag:language.USER_LEVEL /></div>
      <div class="col l9 s8 m8 left-align"><tag:userdetail_level /></div>
    </if:userdetail_edit_admin>
    <div class="col l3 s4 m4"><tag:language.USER_JOINED /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_joined /></div>
    <div class="col l3 s4 m4"><tag:language.USER_LASTACCESS /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_lastaccess /></div>
    <div class="col l3 s4 m4"><tag:language.PEER_COUNTRY /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_country /></div>
    <div class="col l4 s6 m5"><tag:language.USER_LOCAL_TIME /></div>
    <div class="col l8 s6 m7 left-align"><tag:userdetail_local_time /></div>
    <div class="col l3 s4 m4"><tag:language.DOWNLOADED /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_downloaded /></div>
    <div class="col l3 s4 m4"><tag:language.UPLOADED /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_uploaded /></div>
    <div class="col l3 s4 m4"><tag:language.RATIO /></div>
    <div class="col l9 s8 m8 left-align"><tag:userdetail_ratio /></div>
    <if:userdetail_forum_internal>
      <div class="col l3 s4 m3"><b><tag:language.FORUM /> - <tag:language.POSTS /></b></div>
      <div class="col l9 s8 m9 left-align"><b><tag:userdetail_forum_posts /></b></div>
    <else:userdetail_forum_internal>
    </if:userdetail_forum_internal>
  </div>
  <br>
  <br>
  <!-- <div class="container" style="clear: both;"><div class="divider bg-dark-neon"></div></div>
  <br> -->

  <tag:pagertop />

  <h4 class="bg-like-head no-margin-top">
    <i class="material-icons left cyan-text" style="font-size: 27pt;">cloud_upload</i>
    Torrents par <tag:userdetail_username /> 
  </h4>

    <table width="100%" class="lista">
      <tr>
        <td class="block" align="center" colspan="6"><h5><tag:language.UPLOADED /> <tag:language.TORRENTS /></h5></td>
      </tr>
      <tr>
        <td align="center" class="header"><tag:language.FILE /></td>
        <td align="center" class="header"><tag:language.ADDED /></td>
        <td align="center" class="header"><tag:language.SIZE /></td>
        <td align="center" class="header"><tag:language.SHORT_S /></td>
        <td align="center" class="header"><tag:language.SHORT_L /></td>
        <td align="center" class="header"><tag:language.SHORT_C /></td>
      </tr>
      <if:RESULTS>
        <loop:uptor>
          <tr>
            <td class="lista" align="center" style="padding-left:10px;"><tag:uptor[].filename /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:uptor[].added /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:uptor[].size /></td>
            <td class="<tag:uptor[].seedcolor />" align="center" style="text-align: center;"><tag:uptor[].seeds /></td>
            <td class="<tag:uptor[].leechcolor />" align="center" style="text-align: center;"><tag:uptor[].leechs /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:uptor[].completed /></td>
          </tr>
        </loop:uptor>
      <else:RESULTS>
        <tr>
          <td class="lista" align="center" colspan="6"><tag:language.NO_TORR_UP_USER /></td>
        </tr>
      </if:RESULTS>
    </table>
    <br />
    <tag:pagertopact />
    <table width="100%" class="stripped">
      <tr>
        <td class="block" align="center" colspan="9"><h5><tag:language.ACTIVE_TORRENT /></h5></td>
      </tr>
      <tr>
        <td align="center" class="header"><tag:language.FILE /></td>
        <td align="center" class="header"><tag:language.SIZE /></td>
        <td align="center" class="header"><tag:language.PEER_STATUS /></td>
        <td align="center" class="header"><tag:language.DOWNLOADED /></td>
        <td align="center" class="header"><tag:language.UPLOADED /></td>
        <td align="center" class="header"><tag:language.RATIO /></td>
        <td align="center" class="header"><tag:language.SHORT_S /></td>
        <td align="center" class="header"><tag:language.SHORT_L /></td>
        <td align="center" class="header"><tag:language.SHORT_C /></td>
      </tr>
      <if:RESULTS_1>
      <loop:tortpl>
      <tr>
        <td align="center" class="lista" style="padding-left:10px;"><tag:tortpl[].filename /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].size /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].status /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].downloaded /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].uploaded /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].peerratio /></td>
        <td align="center" class="<tag:tortpl[].seedscolor />" style="text-align: center;"><tag:tortpl[].seeds /></td>
        <td align="center" class="<tag:tortpl[].leechcolor />" style="text-align: center;"><tag:tortpl[].leechs /></td>
        <td align="center" class="lista" style="text-align: center;"><tag:tortpl[].completed /></td>
      </tr>
      </loop:tortpl>
      <else:RESULTS_1>
      <tr>
        <td class="lista" align="center" colspan="9"><tag:language.NO_ACTIVE_TORR /></td>
      </tr>
      </if:RESULTS_1>
    </table>
    <br />
  <tag:pagertophist />
  <table width="100%" class="lista">
    <tr>
      <td class="block" align="center" colspan="10"><h5><tag:language.HISTORY /></h5></td>
    </tr>
    <tr>
      <td align="center" class="header"><tag:language.FILE /></td>
      <td align="center" class="header"><tag:language.SIZE /></td>
      <td align="center" class="header"><tag:language.PEER_CLIENT /></td>
      <td align="center" class="header"><tag:language.PEER_STATUS /></td>
      <td align="center" class="header"><tag:language.DOWNLOADED /></td>
      <td align="center" class="header"><tag:language.UPLOADED /></td>
      <td align="center" class="header"><tag:language.RATIO /></td>
      <td align="center" class="header"><tag:language.SHORT_S /></td>
      <td align="center" class="header"><tag:language.SHORT_L /></td>
      <td align="center" class="header"><tag:language.SHORT_C /></td>
    </tr>
    <if:RESULTS_2>
    <loop:torhistory>
    <tr>
      <td align="center" class="lista" style="padding-left:10px;"><tag:torhistory[].filename /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].size /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].agent /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].status /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].downloaded /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].uploaded /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].ratio /></td>
      <td align="center" class="<tag:torhistory[].seedscolor />" style="text-align: center;"><tag:torhistory[].seeds /></td>
      <td align="center" class="<tag:torhistory[].leechcolor />" style="text-align: center;"><tag:torhistory[].leechs /></td>
      <td align="center" class="lista" style="text-align: center;"><tag:torhistory[].completed /></td>
    </tr>
    </loop:torhistory>
    <else:RESULTS_2>
    <tr>
      <td class="lista" align="center" colspan="10"><tag:language.NO_HISTORY /></td>
    </tr>
    </if:RESULTS_2>
  </table>
<br />
<br />
<center><tag:userdetail_back /></center>
</div>