<script type="text/javascript">
var newwindow;

function popusers(url)
{
  newwindow=window.open(url,'popusers','height=100,width=450');
  if (window.focus) {newwindow.focus()}
}
</script>
<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top">
    <i class="material-icons left cyan-text" style="font-size: 27pt">account_box</i>
    <tag:language.USER_CP />
  </h4>
  <div class="row">
  <div class="flow-text"><tag:language.UCP_NOTE_1 /> <tag:language.UCP_NOTE_2 /></div>
  <div class="col l3 s4 m4"><tag:language.USER_NAME /></div>
  <div class="col l9 s8 m8 left-align"><tag:ucp.username /></div>
  <if:AVATAR>
    <div class="card-panel left" valign="middle" style="clear: both;"><tag:ucp.avatar /></div>
  </if:AVATAR>
  <if:CAN_EDIT>
    <div class="col l3 s4 m4"><tag:language.EMAIL /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.email /></div>
    <div class="col l3 s4 m4"><tag:language.LAST_IP /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.lastip /></div>
  </if:CAN_EDIT>
    <div class="col l3 s4 m4"><tag:language.USER_LEVEL /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.userlevel /></div>
    <div class="col l3 s4 m4"><tag:language.USER_JOINED /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.userjoin /></div>
    <div class="col l3 s4 m4"><tag:language.USER_LASTACCESS /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.lastaccess /></div>
    <div class="col l3 s4 m4"><tag:language.PEER_COUNTRY /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.country /></div>
    <div class="col l3 s4 m4"><tag:language.DOWNLOADED /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.download /></div>
    <div class="col l3 s4 m4"><tag:language.UPLOADED /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.upload /></div>
    <div class="col l3 s4 m4"><tag:language.RATIO /></div>
    <div class="col l9 s8 m8 left-align"><tag:ucp.ratio /></div>
  <if:INTERNAL_FORUM>
    <div class="col l3 s4 m4"><tag:language.FORUM /> <tag:language.POSTS /></div>
    <div class="col l9 s8 m8 left-align"><tag:posts /></div>
  </if:INTERNAL_FORUM>
</div>
<br>
<h4 class="bg-like-head no-margin-top">
    <i class="material-icons left cyan-text" style="font-size: 27pt">cloud_upload</i>
    Torrents
</h4>

<tag:pagertop />

<table width="100%" class="lista">
  <tr>
    <td class="block" align="center" colspan="8"><b><tag:language.UPLOADED /> <tag:language.MNU_TORRENT /></b></td>
  </tr>
  <tr>
    <td align="center" class="header"><tag:language.FILE /></td>
    <td align="center" class="header"><tag:language.ADDED /></td>
    <td align="center" class="header"><tag:language.SIZE /></td>
    <td align="center" class="header"><tag:language.SHORT_S /></td>
    <td align="center" class="header"><tag:language.SHORT_L /></td>
    <td align="center" class="header"><tag:language.SHORT_C /></td>
    <td align="center" class="header"><tag:language.EDIT /></td>
    <td align="center" class="header"><tag:language.DELETE /></td>
  </tr>
<if:RESULTS>
<loop:uptor>
  <tr>
    <td class="lista" style="padding-left:10px;"><tag:uptor[].filename /></td>
    <td class="lista" align="center" style="text-align: center;"><tag:uptor[].added /></td>
    <td class="lista" align="center" style="text-align: center;"><tag:uptor[].size /></td>
    <td class="<tag:uptor[].seedcolor />" align="center" style="text-align: center;"><tag:uptor[].seeds /></td>
    <td class="<tag:uptor[].leechcolor />" align="center" style="text-align: center;"><tag:uptor[].leechers /></td>
    <td class="lista" align="center" style="text-align: center;"><tag:uptor[].completed /></td>
    <td class="lista" align="center" style="text-align: center;"><a href="<tag:uptor[].editlink />"><tag:uptor[].editimg /></a></td>
    <td class="lista" align="center" style="text-align: center;"><a href="<tag:uptor[].dellink />"><tag:uptor[].delimg /></a></td>
  </tr>
</loop:uptor>
<else:RESULTS>
  <tr>
    <td class="lista" align="center" colspan="8"><tag:language.NO_TORR_UP_USER /></td>
  </tr>
</if:RESULTS>
</table>
</div>