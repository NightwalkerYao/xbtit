<script type="text/javascript">

window.onload=function()
{
    <if:not_gazelle>
    var elm= document.getElementById('gazelle');
    elm.style.visibility = 'hidden';
    </if:not_gazelle>
    <if:not_session>
    var elm2= document.getElementById('cookie_extra');
    elm2.style.visibility = 'hidden';
    </if:not_session>
    <if:not_ip_options>
    var elm3= document.getElementById('ip_options');
    elm3.style.visibility = 'hidden';
    </if:not_ip_options>
}

function hide(obj)
  {
      obj1 = document.getElementById(obj);
      obj1.style.visibility = 'hidden';
  }
function show(obj)
  {
      obj1 = document.getElementById(obj);
      obj1.style.visibility = 'visible';
  }
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Security Suite</h4>
  <div class="row">
    <form name='security_suite' method='post' action='index.php?page=admin&user=<tag:uid />&code=<tag:random />&do=security_suite'>
    <div class="bold flow-text"><tag:language.SECSUI_QUAR_SETTING /></div>
    <div class="italic block"><tag:language.SECSUI_QUAR_TERMS_1 /></div>
    <div class="col block input-field l12 s12 m12">
      <textarea rows="5" class="materialize-textarea" name="secsui_quarantine_search_terms"><tag:config.secsui_quarantine_search_terms /></textarea>
      <label><tag:language.SECSUI_QUAR_TERMS_2 /></label>
    </div>
    <div class="italic">
      <tag:language.SECSUI_QUAR_TERMS_3 /><tag:short_open_tag />
    </div>
    <br>
    <div><b><tag:language.SECSUI_QUAR_DIR_1 /></b></div>
    <div><tag:language.SECSUI_QUAR_DIR_2 /><br /><b><tag:recommended /></b><br /></div>
    <div class="col input-field block l8 s12 m10">
      <i class="material-icons prefix">folder_special</i>
      <input type="text" name="secsui_quarantine_dir" value="<tag:config.secsui_quarantine_dir />" maxlength="200" id="ssqd" />
      <label for="ssqd">Quarantine Dir</label>
    </div>
    <div class="italic block"><tag:language.SECSUI_QUAR_DIR_3 /></div>
    <br>
    <br>
    <div><b><tag:language.SECSUI_QUAR_PM /></b></div>
    <div class="input-field col block l6 s12 m8">
      <i class="material-icons prefix">person_outline</i>
      <input type="text" name="secsui_quarantine_pm" value="<tag:config.secsui_quarantine_pm />" maxlength="10" id="qpmuid" />
      <label for="qpmuid">(Current user: <tag:config.secsui_quarantine_user />)</label>
    </div>
    <br>
    <div class="block"></div>
    <br>
    <div class="flow-text bold"> <tag:language.SECSUI_PASS_SETTINGS /></div>
    <div><b><tag:language.SECSUI_PASS_TYPE /></b></div>
    <div class="col l8 block"><tag:language.SECSUI_PASS_INFO /><br /><tag:secsui_pass_type /></div>
    <div id="gazelle" class="col l8 block"><b><tag:language.SECSUI_GAZ_TITLE />:</b>&nbsp;&nbsp;<input type="text" name="secsui_ss" value="<tag:config.secsui_ss />"><span style="color:red"><b><tag:language.SECSUI_GAZ_DESC /></b></span></div>
    <div class="block"></div>
    <!-- <br> -->
    <div><b><tag:language.SECSUI_PASS_MUST /></b></div>
    <div class="col input-field">
      <i class="material-icons prefix">compare_arrows</i>
      <input type="text" name="pass_min_char" value="<tag:pass_min_char />" id="pwdminlen" />
      <label for="pwdminlen"><tag:language.SECSUI_PASS_BE_AT_LEAST /></label>
      <span class="helper-text"><tag:min_char_lang /></span>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">bubble_chart</i>
      <input id="pwdchrlen" type="text" name="pass_min_lct" value="<tag:pass_min_lct />" />
      <label for="pwdchrlen"><tag:language.SECSUI_PASS_HAVE_AT_LEAST /></label>
      <span class="helper-text"><tag:min_lc_lang /></span>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">bubble_chart</i>
      <input id="pwdminmaj" type="text" name="pass_min_uct" value="<tag:pass_min_uct />" />
      <label for="pwdminmaj"><tag:language.SECSUI_PASS_HAVE_AT_LEAST /></label>
      <span class="helper-text"><tag:min_uc_lang /></span>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">bubble_chart</i>
      <input id="pwdminblabla" type="text" name="pass_min_num" value="<tag:pass_min_num />" />
      <label for="pwdminblabla"><tag:language.SECSUI_PASS_HAVE_AT_LEAST /></label>
      <span class="helper-text"><tag:min_num_lang /></span>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">bubble_chart</i>
      <input id="pwdminsym" type="text" name="pass_min_sym" value="<tag:pass_min_sym />" />
      <label for="pwdminsym"><tag:language.SECSUI_PASS_HAVE_AT_LEAST /></label>
      <span class="helper-text"><tag:min_sym_lang /></span>
    </div>
    <div class="block"></div>
    <br>
    <div class="flow-text bold"><tag:language.SECSUI_COOKIE_SETTINGS /></div>
    <br>
    <div class="bold"><tag:language.SECSUI_COOKIE_PRIMARY /></div>
    <div class="col input-field">
      <i class="material-icons prefix">color_lens</i>
      <tag:secsui_cookie_type />
      <label><tag:language.SECSUI_COOKIE_TYPE /></label>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">title</i>
      <input type="text" name="secsui_cookie_name" value="<tag:config.secsui_cookie_name />" id="cookieN" />
      <label for="cookieN"><tag:language.SECSUI_COOKIE_NAME /></label>
    </div>
    <div class="italic block"><tag:language.SECSUI_COOKIE_PD /></div>
    <div class="col input-field">
      <i class="material-icons prefix">looks_3</i>
      <input type="text" name="secsui_cookie_exp1" value="<tag:config.secsui_cookie_exp1 />" id="cookExp0">
      <label for="cookExp0"><tag:language.SECSUI_COOKIE_EXPIRE /></label>
    </div>
    <div class="col input-field"><tag:secsui_cookie_exp2 /></div>
    <div class="col input-field">
      <i class="material-icons prefix">folder</i>
      <input type="text" name="secsui_cookie_path" value="<tag:config.secsui_cookie_path />" id="cpath">
      <label for="cpath"><tag:language.SECSUI_COOKIE_PATH /></label>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">public</i>
      <input type="text" name="secsui_cookie_domain" value="<tag:config.secsui_cookie_domain />" id="cdom" />
      <label for="cdom"><tag:language.SECSUI_COOKIE_DOMAIN /></label>
    </div>
    <div class="block"></div>
    <h5><tag:language.SECSUI_COOKIE_ITEMS /></h5>
    <div class="col input-field">
      <span><tag:language.USERNAME />:</span>
      <br>
      <p class="col">
        <label for="unameY">
        <input type="radio" name="username" value="yes" id="unameY" class="with-gap" <tag:4a_checked /> /> <span><tag:language.YES /></span>
        </label>
      </p>
      <p class="col">
        <label for="unameN"><input id="unameN" type="radio" name="username" value="no" <tag:4b_checked /> class="with-gap" />
        <span><tag:language.NO /></span>
        </label>
      </p>
    </div>
    <div class="col block">
      <tag:language.SECSUI_COOKIE_DEF />
    </div>
    <div class="block"></div>
    <div class="col input-field">
      <span><tag:language.SECSUI_COOKIE_PSALT />:</span>
      <br>
      <p class="col">
        <label for="saltiY"><input id="saltiY" type="radio" name="pass_salt" value="yes" <tag:5a_checked /> class="with-gap" />
          <span><tag:language.YES /></span>
        </label>
      </p>
      <p class="col">
        <label for="saltiN">
          <input id="saltiN" type="radio" name="pass_salt" value="no" <tag:5b_checked /> class="with-gap"/>
          <span><tag:language.NO /></span>
        </label>
      </p>
    </div>
    <div class="col input-field">
      <span><tag:language.SECSUI_COOKIE_UAGENT />:</span>
      <br>
      <p class="col">
        <label for="uaY">
          <input id="uaY" type="radio" name="uagent" value="yes" <tag:6a_checked /> class="with-gap" />
          <span><tag:language.YES /></span>
        </label>
      </p>
      <p class="col">
        <label for="uaN">
          <input id="uaN" type="radio" name="uagent" value="no" <tag:6b_checked /> class="with-gap" />
          <span><tag:language.NO /></span>
        </label>
      </p>
    </div>
    <div class="col input-field">
      <span><tag:language.SECSUI_COOKIE_ALANG />:</span>
      <br>
      <p class="col">
        <label for="langY">
          <input id="langY" class="with-gap" type="radio" name="alang" value="yes" <tag:7a_checked /> />
          <span><tag:language.YES /></span>
        </label>
      </p>
      <p class="col">
        <label for="langN">
          <input id="langN" class="with-gap" type="radio" name="alang" value="no" <tag:7b_checked /> />
          <span><tag:language.NO /></span>
        </label>
      </p>
    </div>
    <div class="col input-field">
      <span><tag:language.SECSUI_COOKIE_IP />:</span>
      <br>
      <p class="col">
        <label for="ipY">
          <input type="radio" id="ipY" class="with-gap" name="ipadd" value="yes" <tag:8a_checked /> onclick="show('ip_options');" />
          <span><tag:language.YES /></span>
        </label>
      </p>
      <p class="col">
        <label for="ipN">
          <input id="ipN" class="with-gap" type="radio" name="ipadd" value="no" <tag:8b_checked /> onclick="hide('ip_options');" />
          <span><tag:language.NO /></span>
        </label>
      </p>
    </div>
    <div class="col input-field">
      <div id="ip_options"><tag:secsui_ip_octets /></div>
    </div>
    <div class="block"></div>
    <div class="col center l12 s12 m12">
      <input type='submit' name='submit' value='<tag:language.SUBMIT />' class='btn btn-flat green lighten-1'>
    </div>
  </div>
</div>
