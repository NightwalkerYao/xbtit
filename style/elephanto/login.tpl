<script type="text/javascript">
function form_control()
  {
    if (document.getElementById('want_username').value.length==0)
      {
      var want_username=document.createElement('span');
      want_username.innerHTML='<tag:language.INSERT_USERNAME />';
      alert(want_username.innerHTML);
      document.getElementById('want_username').focus();
      return false;
      }

    if (document.getElementById('want_password').value == "")
      {
      var want_password=document.createElement('span');
      want_password.innerHTML='<tag:language.INSERT_PASSWORD />';
      alert(want_password.innerHTML);
      document.getElementById('want_password').focus();
      return false;
      }

   return true;
  }
</script>
<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">account_circle</i> Connexion: membre</h4>
  <div class="row formulairee user-spacee">
    <br>
    <!-- <div class="container"><div class="divider"></div></div> -->
    <br>
    <form method="post" onsubmit="return form_control()" action="<tag:login.action />">
        <if:FALSE_USER>
          <div class="row">
            <div class="col l2 s3 m3 right-align"><i class="material-icons center red-text text-lighten-2">error</i></div>
            <div class="col l10 s9 m9"><span style="color:#FF0000;"><tag:login_username_incorrect /></span></div>
          </div>
        </if:FALSE_USER>
        <if:FALSE_PASSWORD>
          <div class="row">
            <div class="col l2 s3 m3 right-align"><i class="material-icons center red-text text-lighten-2">error</i></div>
            <div class="col l10 s9 m9"><span style="color:#FF0000;"><tag:login_password_incorrect /></span></div>
          </div>
        </if:FALSE_PASSWORD>
        <div class="row container">
          <div class="col left-align input-field">
            <i class="material-icons prefix">account_box</i>
            <input type="text" size="40" name="uid" id="want_username" value="<tag:login.username />" maxlength="40" class="champ-de-saisiee validate" required />
            <label for="want_username"><tag:language.USER_NAME /></label>
          </div>
          <div class="col left-align input-field">
            <i class="material-icons prefix">security</i>
            <input type="password" size="40" name="pwd" id="want_password" maxlength="40" class="champ-de-saisiee validate" required />
            <label for="want_password"><tag:language.USER_PWD /></label>
          </div>
        <div class="row">
          <div class="col l4 s4 m4 right-align"><button type="submit" class="btn btn-flat waves-effect waves-light blue darken-3 white-text" value="<tag:language.FRM_CONFIRM />"><tag:language.FRM_CONFIRM /></button></div>
          <div class="col l8 s8 m8"><i><tag:language.NEED_COOKIES /></i></div>
        </div>
      </div>
    </form>
  </div>
  <div class="card-panel bg-like-head">
      <a href="<tag:login.create />" class="btn transparent waves-light waves-effect"><tag:language.ACCOUNT_CREATE /></a>&nbsp;<a href="<tag:login.recover />" class="btn transparent waves-light waves-effect"><tag:language.RECOVER_PWD /></a>
  </div>
</div>