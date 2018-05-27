<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Ban IP</h4>
  <div class="row">
    <form action="<tag:frm_action />" name="ban" method="post">
      <div align="center"><tag:language.BAN_NOTE /></div>
      <div class="flow-text"><tag:language.BAN_INSERT /></div>
      <div class="col input-field">
        <i class="material-icons prefix">chevron_left</i>
        <input type="text" name="firstip" id="firstip" />
        <label for="firstip"><tag:language.BAN_FIRSTIP /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">chevron_right</i>
        <input type="text" name="lastip" id="lastip" />
        <label for="lastip"><tag:language.BAN_LASTIP /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">comment</i>
        <input type="text" name="comment" id="comment" />
        <label for="comment"><tag:language.BAN_COMMENTS /></label>
      </div>
      <div class="col block">
        <input type="submit" name="write" class="btn" value="<tag:language.FRM_CONFIRM />" />&nbsp;&nbsp;&nbsp;
        <input type="submit" name="write" class="btn" value="<tag:language.FRM_CANCEL />" />
      </div>
  <br />
  <table class="lista" width="100%" align="center">
    <tr>
      <td class="header"><tag:language.BAN_ADDED /></td>
      <td class="header" align="left"><tag:language.BAN_FIRSTIP /></td>
      <td class="header" align="left"><tag:language.BAN_LASTIP /></td>
      <td class="header" align="left"><tag:language.BAN_BY /></td>
      <td class="header" align="left"><tag:language.BAN_COMMENTS /></td>
      <td class="header"><tag:language.BAN_REMOVE /></td>
    </tr>
    <if:no_records>
    <tr>
      <td colspan="6" align="center"><tag:language.BAN_NOIP /></td>
    </tr>
    <else:no_records>
    <loop:bannedip>
    <tr>
      <td class="lista"><tag:bannedip[].date /></td>
      <td class="lista" align="left"><tag:bannedip[].first_ip /></td>
      <td class="lista" align="left"><tag:bannedip[].last_ip /></td>
      <td class="lista" align="left"><tag:bannedip[].by /></td>
      <td class="lista" align="left"><tag:bannedip[].comments /></td>
      <td class="lista"><tag:bannedip[].remove /></td>
    </tr>
    </loop:bannedip>
    </if:no_records>
  </table>
  <br />
  <br />
</form>
    </div>
  </div>