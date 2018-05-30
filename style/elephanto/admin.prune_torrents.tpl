<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Prune Torrents</h4>
  <div class="row">
<if:pruned_done>
  <div class="flow-text italic"><tag:prune_done_msg /></div>
<else:pruned_done>
<if:prune_list>
<script type="text/javascript">
 <!--
 function SetAllCheckBoxes(FormName, FieldName, CheckValue)
 {
   if(!document.forms[FormName])
     return;
   var objCheckBoxes = document.forms[FormName].elements[FieldName];
   if(!objCheckBoxes)
     return;
   var countCheckBoxes = objCheckBoxes.length;
   if(!countCheckBoxes)
     objCheckBoxes.checked = CheckValue;
   else
     // set the check value for all check boxes
     for(var i = 0; i < countCheckBoxes; i++)
       objCheckBoxes[i].checked = CheckValue;
 }
 // -->
</script>
  <form action="<tag:frm_action />" name="prune" method="post">
  <table class="lista" width="100%">
    <tr>
      <td class="header" align="center"><tag:language.FILE_NAME /></td>
      <td class="header" align="center"><tag:language.LAST_UPDATE /></td>
      <td class="header" align="center"><tag:language.SEEDS /></td>
      <td class="header" align="center"><tag:language.LEECHERS /></td>
      <td class="header" align="center">
        <div class="input-field">
          <p>
            <label for="all1">
              <input type="checkbox" id="all1" class="filled-in" name="all" onclick="SetAllCheckBoxes('prune','hash[]',this.checked)" />
              <span>&nbsp;&nbsp;&nbsp;</span>
            </label>
          </p>
        </div>
      </td>
    </tr>
    <if:no_records>
    <tr>
      <td class="lista" align="center" colspan="5"><tag:language.NO_RECORDS /></td>
    </tr>
    <else:no_records>
    <loop:torrents>
    <tr>
      <td class="lista" align="left"><tag:torrents[].filename /></td>
      <td class="lista" align="center"><tag:torrents[].lastupdate /></td>
      <td class="lista" align="center"><tag:torrents[].seeds /></td>
      <td class="lista" align="center"><tag:torrents[].leechers /></td>
      <td class="lista" align="center">
        <div class="input-field">
          <p>
            <label for="chbox<tag:torrents[].info_hash />">
              <input type="checkbox" name="hash[]" id="chbox<tag:torrents[].info_hash />" value="<tag:torrents[].info_hash />" />
              <span>&nbsp;&nbsp;&nbsp;</span>
            </label>
          </p>
        </div>
      </td>
    </tr>
    </loop:torrents>
    </if:no_records>
    <tr>
      <td class="lista" align="right" colspan="5"><input type="submit" class="btn" name="action" value="GO" /></td>
    </tr>
  </table>
</form>
<else:prune_list>
<form action="<tag:frm_action />" name="prune" method="post">
  <div class="flow-text italic"><tag:language.PRUNE_TORRENTS_INFO /></div>
    <br />
  <div class="input-field col">
    <i class="material-icons prefix">motorcycle</i>
    <input type="text" name="days" value="<tag:prune_days />" class="validate" id="days" maxlength="3" />
    <label for="days">Input days</label>
  </div>
  <div class="col">
    <input type="submit" class="btn" name="action" value="View" />
  </div>
  <!-- </div> -->
</form>
</if:prune_list>
</if:pruned_done>
    </div>
  </div>