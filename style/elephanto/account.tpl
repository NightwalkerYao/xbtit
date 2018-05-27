
<!-- ### Password strength javascript ### -->

<script type="text/javascript" src="jscript/passwdcheck.js"></script>

<!-- ### End ### -->

<script type="text/javascript">
function form_control()
  {
    if (document.getElementById('user').value.length==0)
      {
      var user=document.createElement('span');
      user.innerHTML='<tag:language.INSERT_USERNAME />';
      alert(user.innerHTML);
      document.getElementById('user').focus();
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

    if (document.getElementById('check_password').value == "")
      {
      var check_password=document.createElement('span');
      check_password.innerHTML='<tag:language.USER_PWD_AGAIN />';
      alert(check_password.innerHTML);
      document.getElementById('check_password').focus();
      return false;
      }

    if (document.getElementById('want_password').value !=  document.getElementById('check_password').value)
      {
      var dif_passwords=document.createElement('span');
      dif_passwords.innerHTML='<tag:language.DIF_PASSWORDS />';
      alert(dif_passwords.innerHTML);
      return false;
      }

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
          email.innerHTML='<tag:language.ERR_NO_EMAIL />';
          alert(email.innerHTML);
          document.getElementById('email').focus();
          return false;
         }
      }


    if (document.getElementById('email_again').value == "")
      {
      var email_again=document.createElement('span');
      email_again.innerHTML='<tag:language.ERR_NO_EMAIL_AGAIN />';
      alert(email_again.innerHTML);
      document.getElementById('email_again').focus();
      return false;
      }
    else
      {
        if (!filter.test(document.getElementById('email_again').value))
         {
          var email_again=document.createElement('span');
          email_again.innerHTML='<tag:language.ERR_NO_EMAIL />';
          alert(email_again.innerHTML);
          document.getElementById('email_again').focus();
          return false;
         }
      }

    if (document.getElementById('email').value !=  document.getElementById('email_again').value)
      {
      var DIF_EMAIL=document.createElement('span');
      DIF_EMAIL.innerHTML='<tag:language.DIF_EMAIL />';
      alert(DIF_EMAIL.innerHTML);
      return false;
      }

   return true;
  }
</script>
<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top">
    <i class="material-icons left cyan-text" style="font-size: 27pt">assignment_ind
</i>
  Création de compte : utilisateur
</h4>
  <div class="row">
    <form name="utente" method="post" onsubmit="return form_control()" action="<tag:account_form_actionlink />" >
      <input type="hidden" name="act" value="<tag:account_action />" />
      <input type="hidden" name="uid" value="<tag:account_uid />" />
      <input type="hidden" name="returnto" value="<tag:account_returnto />" />
      <input type="hidden" name="language" value="<tag:account_IDlanguage />" />
      <input type="hidden" name="style" value="<tag:account_IDstyle />" />
      <input type="hidden" name="flag" value="<tag:account_IDcountry />" />
      <input type="hidden" name="username" value="<tag:account_username />"/>
      <div class="col input-field">
        <i class="material-icons prefix">account_box</i>
        <if:DEL>
          <input type="text" name="user" id="user" value="<tag:dati.username />" readonly />
        <else:DEL>
          <input type="text" name="user" id="user" value="<tag:dati.username />" class="validate" required />
        </if:DEL>
        <label for="user"><tag:language.USER_NAME /></label>
      </div>
      <if:DISPLAY_FULL>
       <!--  <p class="row container" style="clear: both;">
        <tag:language.SECSUI_ACC_PWD_1 /><br />
        <li>
          <tag:language.SECSUI_ACC_PWD_2 />
          <span style="color:blue;font-weight:bold;"><tag:pass_min_char /></span> <if:pass_char_plural><tag:language.SECSUI_ACC_PWD_3A /><else:pass_char_plural><tag:language.SECSUI_ACC_PWD_3 /></if:pass_char_plural>
        </li>
        <if:pass_lct_set>
          <li>
            <tag:language.SECSUI_ACC_PWD_4 />
            <span style="color:blue;font-weight:bold;"><tag:pass_min_lct /></span> <if:pass_lct_plural><tag:language.SECSUI_ACC_PWD_5A /><else:pass_lct_plural><tag:language.SECSUI_ACC_PWD_5 /></if:pass_lct_plural>
          </li>
        </if:pass_lct_set>
        <if:pass_uct_set>
          <li>
            <tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_uct /></span> <if:pass_uct_plural><tag:language.SECSUI_ACC_PWD_6A /><else:pass_uct_plural><tag:language.SECSUI_ACC_PWD_6 /></if:pass_uct_plural>
          </li>
        </if:pass_uct_set>
        <if:pass_num_set>
          <li>
            <tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_num /></span> <if:pass_num_plural><tag:language.SECSUI_ACC_PWD_7A /><else:pass_num_plural><tag:language.SECSUI_ACC_PWD_7 /></if:pass_num_plural>
          </li>
        </if:pass_num_set>
        <if:pass_sym_set>
          <li>
            <tag:language.SECSUI_ACC_PWD_4 /> <span style="color:blue;font-weight:bold;"><tag:pass_min_sym /></span> <if:pass_sym_plural><tag:language.SECSUI_ACC_PWD_8A /><else:pass_sym_plural><tag:language.SECSUI_ACC_PWD_8 /></if:pass_sym_plural>
          </li>
        </if:pass_sym_set>
        </p> -->
        <div class="col input-field">
          <i class="material-icons prefix">security</i>
          <input required type="password" id="want_password" name="pwd" 
               onkeyup="EvalPwdStrength(document.forms[0],this.value);"/> <!-- The textbox itself onkeyup-->
          <label for="want_password"><tag:language.USER_PWD /></label>
          <!-- ### Password strength tables and columns ### -->
          <span class="helper-text" data-error="wrongi" data-success="righti" id="pwdstrenght" style="display:none;">
            <span id="idSM1" class="pwdChkCon0">
              <span id="idSMT1" style="display: none;"><tag:language.WEEK /></span>
            </span>
            <span id="idSM2" class="pwdChkCon0">
              <span id="idSMT0" style="display: none;"><!-- NOT RATED --></span>
              <span id="idSMT2" style="display: none;"><tag:language.MEDIUM /></span>
            </span>
            <span id="idSM3" class="pwdChkCon0">
              <span id="idSMT3" style="display: none;"><tag:language.SAFE /></span>
            </span>
            <span id="idSM4" class="pwdChkCon0">
              <span id="idSMT4" style="display: none;"><tag:language.STRONG /></span>
            </span>
          </span>
          <!-- ### End ### -->
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">security</i>
          <input required type="password" id="check_password" name="pwd1" minlength="6" class="validate" />
          <label for="check_password"><tag:language.USER_PWD_AGAIN /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">email</i>
          <input required type="email" name="email" id="email" value="<tag:dati.email />" class="validate" />
          <label for="email"><tag:language.USER_EMAIL /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">email</i>
          <input required="required" type="text" name="email_again" id="email_again" autocomplete="off" value="<tag:dati.email />" class="validate" />
          <label for="email_again"><tag:language.USER_EMAIL_AGAIN /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">language</i>
          <tag:account_combo_language />
          <label><tag:language.USER_LANGUE /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">style</i>
          <tag:account_combo_style />
          <label><tag:language.USER_STYLE /></label>
        </div>
        <div class="input-field col">
          <i class="material-icons prefix">location_on</i>
          <tag:account_combo_country />
          <label><tag:language.COUNTRY /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">access_time</i>
          <tag:account_combo_timezone />
          <label><tag:language.TIMEZONE /></label>
        </div>
        <if:CAPTCHA>
          <div class="col input-field">
            <i class="material-icons prefix">settings</i>
            <input required="required" type="text" id="private_key" name="private_key" maxlength="6" value="" />
            <label for="private_key"><tag:language.IMAGE_CODE /></label>
            <span class="helper-text"><tag:account_captcha /></span>
          </div>
        <else:CAPTCHA>
          <div class="col input-field">
            <i class="material-icons prefix">settings</i>
            <input type="text" name="scode_answer" id="scode_answer" maxlength="6" value="" />
            <label for="scode_answer"><tag:language.SECURITY_CODE /></label>
            <span class="helper-text"><tag:scode_question /></span>
          </div>
        </if:CAPTCHA>
        <div class="row center" style="display: block; clear: both;">
          <!-- input/button for confirm or delete -->
          <tag:account_from_delete_confirm />
        </div>
      </if:DISPLAY_FULL>
    </form>
  </div>
</div>