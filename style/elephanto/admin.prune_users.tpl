<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Prune Users</h4>
  <div class="row">
<if:pruned_done>
<div align="center" style="font-size:12pt"><tag:prune_done_msg /></div>
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
      <td class="header" align="center"><tag:language.NAME /></td>
      <td class="header" align="center"><tag:language.USER_JOINED /></td>
      <td class="header" align="center"><tag:language.USER_LASTACCESS /></td>
      <td class="header" align="center"><tag:language.USER_LEVEL /></td>
      <td class="header" align="center">
        <div class="input-field">
          <p>
            <label for="all1">
              <input type="checkbox" id="all1" name="all" onclick="SetAllCheckBoxes('prune','id[]',this.checked)" />
              <span>&nbsp;</span>
            </label>
          </p>
        </div></td>
    </tr>
    <if:no_records>
    <tr>
      <td class="lista" align="center" colspan="5"><tag:language.NO_RECORDS /></td>
    </tr>
    <else:no_records>
    <loop:users>
    <tr>
      <td class="lista" align="left"><tag:users[].username /></td>
      <td class="lista" style="text-align:center"><tag:users[].joined /></td>
      <td class="lista" style="text-align:center"><tag:users[].lastconnect /></td>
      <td class="lista" style="text-align:center"><tag:users[].level /></td>
      <td class="lista" style="text-align:center">
        <div class="input-field">
          <p>
            <label for="idz<tag:users[].id />">
              <input type="checkbox" id="idz<tag:users[].id />" name="id[]" value="<tag:users[].id />" />
              <span>&nbsp;</span>
            </label>
          </p>
        </div>
        <input type="hidden" name="smf_fid[]" value="<tag:users[].smf_fid />" />
        <input type="hidden" name="ipb_fid[]" value="<tag:users[].ipb_fid />" />
      </td>
    </tr>
    </loop:users>
    </if:no_records>
    <tr>
      <td class="lista" style="text-align:right;" colspan="5">
        <input type="submit" class="btn" name="action" value="GO" /></td>
    </tr>
  </table>
</form>
<else:prune_list>
<form action="<tag:frm_action />" name="prune" method="post">
  <div align="center">
    <!-- <br /> -->
    <p class="flow-text italic"><tag:language.PRUNE_USERS_INFO /></p>
    <!-- <br /> -->
    <!-- <br /> -->
    <div class="col input-field">
      <i class="material-icons prefix">timer</i>
      <input type="text" name="days" value="<tag:prune_days />" id="days" maxlength="3" />
      <label for="days">Days</label>
    </div>
    <div class="col">
      <input type="submit" class="btn" name="action" value="View" />
    </div>
  </div>
</form>
</if:prune_list>
</if:pruned_done>
    </div>
  </div>