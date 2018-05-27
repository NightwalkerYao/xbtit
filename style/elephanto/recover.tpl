<script type="text/javascript">
function form_control()
  {
    var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (document.getElementById('email').value == "")
      {
      var email=document.createElement('span');
      email.innerHTML='<tag:language.ERR_NO_EMAIL />';
      alert(email.innerHTML);
      document.getElementById('email').focus();
      return false;
      }
    else
      {
        if (!filter.test(document.getElementById('email').value))
         {
         var email=document.createElement('span');
         email.innerHTML='<tag:language.ERR_INV_EMAIL />';
         alert(email.innerHTML);
         document.getElementById('email').focus();
         return false;
         }
      }

    if (document.getElementById('captcha').value.length==0)
      {
      var captcha=document.createElement('span');
      captcha.innerHTML='<tag:language.ERR_NO_CAPTCHA />';
      alert(captcha.innerHTML);
      document.getElementById('captcha').focus();
      return false;
      }

   return true;
  }
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head"><i class="material-icons left cyan-text" style="font-size: 27pt;">settings_backup_restore</i>Récupération de mot de passe</h4>
  <p class="container"><tag:language.RECOVER_DESC /></p>
  <br>
  <div class="formlairee">
      <form action="<tag:recover.action />" name="recover" onsubmit="return form_control()" method="post">
        <div class="row">
          <div class="col input-field">
            <i class="material-icons prefix">contact_mail</i>
            <input type="email" size="40" name="email" id="email" class="champ-de-saisiee validate" required="required" />
            <label for="email"><tag:language.REGISTERED_EMAIL /></label>
          </div>
      <if:CAPTCHA>
        <div class="row bg-like-head">
          <div class="col"><br><tag:recover_captcha /></div>
          <div class="col input-field">
            <input type="text" name="private_key" id="captcha" maxlength="6" value="" />
            <label for="captcha"><tag:language.IMAGE_CODE /></label>
          </div>
        </div>
      <else:CAPTCHA>
        <div class="row bg-like-head">
          <div class="col"><tag:language.SECURITY_CODE /></div>
          <div class="col input-field">
            <tag:scode_question /> 
            <input type="text" id="captcha" name="scode_answer" maxlength="6" size="6" value="" />
          </div>
        </div>
      </if:CAPTCHA>
      <div class="row center">
        <button type="submit" value="<tag:language.FRM_CONFIRM />" class="btn btn-flat waves-effect waves-light amber lighten-2">
          <tag:language.FRM_CONFIRM />
          <i class="material-icons right">send</i>
        </button>
      </div>
    </div>
      </form>
  </div>
</div>