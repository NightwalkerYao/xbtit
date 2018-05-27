<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">security</i><tag:language.MNU_UCP_CHANGEPWD /></h4>
  <div class="row">
<form method="post" name="password" action="<tag:pwd.frm_action />">    <tr>
  <div class="col input-field">
    <i class="material-icons prefix">security</i>
    <input type="password" id="old_pwd" name="old_pwd" maxlength="40" required class="validate" minlength="6" />
    <label for="old_pwd"><tag:language.OLD_PWD /></label>
  </div>
  <div class="row" style="clear: both;">
        <tag:language.SECSUI_ACC_PWD_1 /><br />
        <li><tag:language.SECSUI_ACC_PWD_2 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_char /></span> <if:pass_char_plural><tag:language.SECSUI_ACC_PWD_3A /><else:pass_char_plural><tag:language.SECSUI_ACC_PWD_3 /></if:pass_char_plural></li>
        <if:pass_lct_set><li><tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_lct /></span> <if:pass_lct_plural><tag:language.SECSUI_ACC_PWD_5A /><else:pass_lct_plural><tag:language.SECSUI_ACC_PWD_5 /></if:pass_lct_plural></li></if:pass_lct_set>
        <if:pass_uct_set><li><tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_uct /></span> <if:pass_uct_plural><tag:language.SECSUI_ACC_PWD_6A /><else:pass_uct_plural><tag:language.SECSUI_ACC_PWD_6 /></if:pass_uct_plural></li></if:pass_uct_set>
        <if:pass_num_set><li><tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_num /></span> <if:pass_num_plural><tag:language.SECSUI_ACC_PWD_7A /><else:pass_num_plural><tag:language.SECSUI_ACC_PWD_7 /></if:pass_num_plural></li></if:pass_num_set>
        <if:pass_sym_set><li><tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_sym /></span> <if:pass_sym_plural><tag:language.SECSUI_ACC_PWD_8A /><else:pass_sym_plural><tag:language.SECSUI_ACC_PWD_8 /></if:pass_sym_plural></li></if:pass_sym_set>
  </div>
  <div class="col input-field">
    <i class="material-icons prefix">new_releases</i>
    <input type="password" id="new_pwd" name="new_pwd" maxlength="40" class="validate" required minlength="6" />
    <label for="new_pwd"><tag:language.USER_PWD /></label>
  </div>
  <div class="col input-field"> 
    <i class="material-icons prefix">repeat</i>
    <input type="password" id="new_pwd1" name="new_pwd1" class="validate" required minlength="6" maxlength="40" />
    <label for="new_pwd1"><tag:language.USER_PWD_AGAIN /></label>
  </div>
  <div class="col s12 m12 l12 center">
    <button type="submit" class="btn btn-flat waves-effect waves-light blue lighten-2" name="confirm" value="<tag:language.FRM_CONFIRM />"><i class="material-icons left">save</i> <tag:language.FRM_CONFIRM /></button>
    <button type="button" class="btn btn-flat waves-effect waves-light red lighten-2" name="confirm" onclick="javascript:window.open('<tag:pwd.frm_cancel />','_self');" value="<tag:language.FRM_CANCEL />"><tag:language.FRM_CANCEL /> <i class="material-icons left">clear</i></button>
  </div>
</div>
</div>
