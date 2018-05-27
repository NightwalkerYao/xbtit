<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">person</i><tag:language.MNU_UCP_INFO /></h4>
  <div class="row">
    <form name="utente" method="post" action="<tag:profile.frm_action />">
      <div class="col s4 l3 m3"><i class="material-icons left">account_box</i><tag:language.USER_NAME /></div>
      <div class="col l9 s8 m8 left-align"><tag:profile.username /></div>
      <div class="col s12 l12 m12 container"><div class="divrider"></div></div>
  <if:AVATAR>
      <div class="col s12 l12 m12 center"><tag:profile.avatar /></div>
  </if:AVATAR>
      <div class="col input-field">
        <i class="material-icons prefix">insert_link</i>
        <input type="url" id="avatar" name="avatar" maxlength="100" value="<tag:profile.avatar_field />" class="validate" minlength="12" />
        <label for="avatar"><tag:language.AVATAR_URL /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">email</i>
        <input type="text" id="email" class="validate" minlength="7" name="email" maxlength="50" value="<tag:profile.email />"/>
        <label for="email"><tag:language.USER_EMAIL /></label>
      </div>
      <if:USER_VALIDATION>
        <div class="col s12 l12 m12 left-align"><tag:language.REVERIFY_MSG /></strong></font></div>
      </if:USER_VALIDATION>
      <div class="col input-field">
        <i class="material-icons prefix">language</i>
        <select id="langues" name="language"><tag:lang.language_combo /></select>
        <label for="langues"><tag:language.USER_LANGUE /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">style</i>
        <select id="style" name="style"><tag:style.style_combo /></select>
        <label for="style"><tag:language.USER_STYLE /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">location_on</i>
        <select id="pays" name="flag"><option value="0">--</option><tag:flag.flag_combo /></select>
        <label for="pays"><tag:language.PEER_COUNTRY /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">access_time</i>
        <select id="tmz" name="timezone"><tag:tz.tz_combo /></select>
        <label for="tmz"><tag:language.TIMEZONE /></label>
      </div>
      <if:INTERNAL_FORUM>
        <div class="col input-field">
          <i class="material-icons prefix">looks_two</i>
          <input type="number" name="topicsperpage" maxlength="3" value="<tag:profile.topicsperpage />" class="vaidate" id="tppge"/>
          <label for="tppge"><tag:language.TOPICS_PER_PAGE /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">looks_5</i>
          <input type="number" name="postsperpage" maxlength="3" value="<tag:profile.postsperpage />" class="validate" id="pstppge"/>
          <label for="pstppge"><tag:language.POSTS_PER_PAGE /></label>
        </div>
      </if:INTERNAL_FORUM>
      <div class="col input-field">
        <i class="material-icons prefix">looks_3</i>
        <input type="number" name="torrentsperpage" maxlength="3" value="<tag:profile.torrentsperpage />" class="validate" id="trppge"/>
        <label for="trppge"><tag:language.TORRENTS_PER_PAGE /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">security</i>
        <input type="password" name="passconf" value="" class="validate" id="pwd" minlength="6" />
        <label for="pwd"><tag:language.USER_PWD /></label>
        <span class="helper-text"><tag:language.MUST_ENTER_PASSWORD /></span>
      </div>
      <div class="col s12 m12 l12 center">
        <button type="submit" class="btn waves-effect waves-light blue lighten-1" name="confirm" value="<tag:language.FRM_CONFIRM />"> <i class="material-icons left">save</i> <tag:language.FRM_CONFIRM /></button>
        &nbsp;&nbsp;
        <button type="button" class="btn waves-effect waves-light red lighten-1" name="confirm" onclick="javascript:window.open('<tag:profile.frm_cancel />','_self');" value="<tag:language.FRM_CANCEL />"><i class="material-icons left">clear</i><tag:language.FRM_CANCEL /></button>
      </div>
</form>
    </div>
  </div>
