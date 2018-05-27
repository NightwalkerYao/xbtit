<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Language Settings</h4>
  <div class="row">
    <div class="flow-text"><tag:language.STYLE_NOTE /></div>
      <if:style_add>
        <form name="language_add_new" action="<tag:frm_action />" method="post">
          <div class="col input-field">
            <i class="material-icons prefix">folder_special</i>
            <tag:style_combo />
            <label><tag:language.STYLE_FOLDER /></label>
          </div>
          <div class="input-field col">
            <i class="material-icons prefix">title</i>
            <input type="text" name="style_name" maxlength="20" value="<tag:style_name />" class="validate" id="stlN" />
            <label for="stlN"><tag:language.STYLE_NAME /></label>
          </div>
          <div class="col input-field">
            <i class="material-icons prefix">style</i>
            <tag:style_type />
            <label><tag:language.STYLE_TYPE /></label>
          </div>
          <div class="row block center">
            <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CONFIRM />" />&nbsp;&nbsp;&nbsp;
            <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CANCEL />" />
          </div>
        </form>
      <else:style_add>
  <table class="lista" width="100%" align="center">
  <tr>
    <td class="header" align="center"><tag:language.STYLE_NAME /></td>
    <td class="header" align="center"><tag:language.STYLE_URL /></td>
    <td class="header" align="center"><tag:language.STYLE_TYPE /></td>
    <td class="header" align="center"><tag:language.MEMBERS /></td>
    <td class="header" align="center"><tag:language.EDIT /></td>
    <td class="header" align="center"><tag:language.DELETE /></td>
  </tr>
  <loop:styles>
  <tr>
    <td class="lista" align="center"><tag:styles[].style /></td>
    <td class="lista" align="center"><tag:styles[].style_url /></td>
    <td class="lista" align="center"><tag:styles[].style_type /></td>
    <td class="lista" align="center"><tag:styles[].style_users /></td>
    <td class="lista" align="center"><tag:styles[].edit /></td>
    <td class="lista" align="center"><tag:styles[].delete /></td>
  </tr>
  </loop:styles>
  <tr>
    <td class="header" align="center" colspan="6"><tag:style_add_new /></td>
  </tr>
  </table>
</if:style_add>
    </div>
  </div>
