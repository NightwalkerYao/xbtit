<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Language Settings</h4>
  <div class="row">
<if:language_add>
  <form name="language_add_new" action="<tag:frm_action />" method="post">
    <div class="col input-field">
      <i class="material-icons prefix">add</i>
      <tag:lang_combo />
      <label><tag:language.LANGUAGE_ADD /></label>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">title</i>
      <input type="text" name="new_language" maxlength="20" class="validate" id="nl" />
      <label for="nl"><tag:language.LANGUAGE /></label>
    </div>
    <div class="row block center">
      <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CONFIRM />" />&nbsp;&nbsp;&nbsp;
      <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CANCEL />" />
    </div>
  </form>
<else:language_add>
  <table class="lista" width="100%" align="center">
  <tr>
    <td class="header" align="center"><tag:language.LANGUAGE /></td>
    <td class="header" align="center"><tag:language.URL /></td>
    <td class="header" align="center"><tag:language.MEMBERS /></td>
  </tr>
  <loop:languages>
  <tr>
    <td class="lista" align="center"><tag:languages[].language /></td>
    <td class="lista" align="center"><tag:languages[].language_url /></td>
    <td class="lista" align="center"><tag:languages[].language_users /></td>
  </tr>
  </loop:languages>
  <tr>
    <td class="header" align="center" colspan="3"><tag:lang_add_new /></td>
  </tr>
  </table>
</if:language_add>
    </div>
  </div>