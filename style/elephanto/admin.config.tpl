<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Tracker Settings</h4>
  <div class="row">
<script type="text/javascript" src="jscript/btit_functions.js"></script>
<form action="<tag:frm_action />" name="config" method="post" onsubmit="return test_smtp_password()">
    <if:config_saved>
      <div class="col s12 l12"><tag:language.CONFIG_SAVED /></div>
    </if:config_saved>
    <div class="col s12 l12 flow-text bold"><i class="material-icons">settings</i> <tag:language.XBTT_BACKEND /></div>
    <if:xbtt_error>
      <div class="s12 l12 red-text bold center">
        <tag:language.XBTT_TABLES_ERROR />
      </div>
    </if:xbtt_error>
    <div class="col s4 l5">
      <div class="input-field">
        <p>
          <label for="xbtt_use">
            <input type="checkbox" name="xbtt_use" id="xbtt_use" value="xbtt_use" <tag:config.xbtt_use /> />
            <span><tag:language.XBTT_USE /></span>
          </label>
        </p>
      </div>
    </div>
    <div class="col s8 l7">
      <div class="input-field">
        <i class="material-icons prefix">link</i>
        <input type="text" name="xbtt_url" value="<tag:config.xbtt_url />" id="xbtt_url" />
        <label for="xbtt_url"><tag:language.XBTT_URL /></label>
      </div>
    </div>
    <div class="col s12 l12 flow-text bold">
      <i class="material-icons">tune</i>
      <tag:language.GENERAL_SETTINGS /></td>
    </div>
    <div class="col input-field l6">
      <i class="material-icons prefix">title</i>
      <input type="text" name="trackername" value="<tag:config.name />" id="trackername" />
      <label for="trackername"><tag:language.TRACKER_NAME /></label>
    </div>
    <div class="col input-field l6">
      <i class="material-icons prefix">insert_link</i>
      <input type="text" name="trackerurl" value="<tag:config.url />" id="trackerurl" />
      <label for="trackerurl"><tag:language.TRACKER_BASEURL /></label>
    </div>
    <div class="col s11 l10 input-field">
      <i class="material-icons prefix">announcement</i>
      <textarea name="tracker_announceurl" id="tracker_announceurl" class="materialize-textarea"><tag:config.announce /></textarea>
      <label for="tracker_announceurl"><tag:language.TRACKER_ANNOUNCE /></label>
    </div>
    <div class="col input-field l6">
      <i class="material-icons prefix">mail</i>
      <input type="email" name="trackeremail" value="<tag:config.email />" id="trackeremail" />
      <label for="trackeremail"><tag:language.TRACKER_EMAIL /></label>
    </div>
    <div class="col input-field l6">
      <i class="material-icons prefix">folder_special</i>
      <input type="text" name="torrentdir" value="<tag:config.torrentdir />" id="torrentdir" />
      <label for="torrentdir"><tag:language.TORRENT_FOLDER /></label>
    </div>
    <div class="col input-field s12 l12">
      <p class="col l6">
        <label for="exttorrents">
          <input type="checkbox" name="exttorrents" value="exttorrents" id="exttorrents" <tag:config.external /> />
          <span><tag:language.ALLOW_EXTERNAL /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="gzip_enabled">
          <input type="checkbox" name="gzip_enabled" value="gzip_enabled" id="gzip_enabled"  <tag:config.gzip /> />
          <span><tag:language.ALLOW_GZIP /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="show_debug">
          <input type="checkbox" id="show_debug" name="show_debug" value="show_debug" <tag:config.debug /> />
          <span><tag:language.ALLOW_DEBUG /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="dht">
          <input type="checkbox" name="dht" value="dht" <tag:config.disable_dht /> id="dht"/>
          <span><tag:language.ALLOW_DHT /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="livestat">
          <input type="checkbox" name="livestat" value="livestat" <tag:config.livestat /> id="livestat" />
          <span><tag:language.ALLOW_LIVESTATS /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="logactive">
          <input id="logactive" type="checkbox" name="logactive" value="logactive" <tag:config.logactive /> />
          <span><tag:language.ALLOW_SITELOG /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="loghistory">
          <input id="loghistory" type="checkbox" name="loghistory" value="loghistory" <tag:config.loghistory /> />
          <span><tag:language.ALLOW_HISTORY /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="p_announce">
          <input id="p_announce" type="checkbox" name="p_announce" value="p_announce" <tag:config.p_announce /> />
          <span><tag:language.ALLOW_PRIVATE_ANNOUNCE /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="p_scrape">
          <input id="p_scrape" type="checkbox" name="p_scrape" value="p_scrape" <tag:config.p_scrape /> />
          <span><tag:language.ALLOW_PRIVATE_SCRAPE /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="show_uploader">
          <input id="show_uploader" type="checkbox" name="show_uploader" value="show_uploader" <tag:config.show_uploader /> />
          <span><tag:language.SHOW_UPLOADER /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="usepopup">
          <input id="usepopup" type="checkbox" name="usepopup" value="usepopup" <tag:config.usepopup /> />
          <span><tag:language.USE_POPUP /></span>
        </label>
      </p>
    </div>
    <div class="l6 col input-field">
      <i class="material-icons prefix">language</i>
      <tag:config.language_combo />
      <label><tag:language.DEFAULT_LANGUAGE /></label>
    </div>
    <div class="l6 col input-field">
      <i class="material-icons prefix">format_paint</i>
      <tag:config.charset_combo />
      <label><tag:language.DEFAULT_CHARSET /></label>
    </div>
    <div class="l6 col input-field">
      <i class="material-icons prefix">style</i>
      <tag:config.style_combo />
      <label><tag:language.DEFAULT_STYLE /></label>
    </div>
    <div class="l6 col input-field">
      <i class="material-icons prefix">filter_9_plus</i>
      <input type="number" name="maxusers" value="<tag:config.max_users />" id="maxusers" />
      <label for="maxusers"><tag:language.MAX_USERS /></label>
    </div>
    <div class="l6 col input-field">
      <i class="material-icons prefix">filter_9</i>
      <input type="number" name="ntorrents" value="<tag:config.max_torrents_per_page />" id="ntorrents" />
      <label for="ntorrents"><tag:language.MAX_TORRENTS_PER_PAGE /></label>
    </div>
    <div class="l6 col input-field">
      <p>
        <label for="phperror">
          <input type="checkbox" name="phperror" value="phperror" id="phperror" <tag:config.phperror /> />
          <span><tag:language.PHP_ERROR /></span>
        </label>
      </p>
    </div>
    <div class="col s10 l10 flow-text bold"><i class="material-icons">mail_outline</i> <tag:language.MAILER_SETTINGS /></div>
    <div class="col l6 input-field">
      <select id="mail_type" name="mail_type" size="1"><tag:config.mail_type_combo /></select>
      <label><tag:language.SETTING_MAIL_TYPE /></label>
    </div>
    <div class="input-field l6 col">
      <input type="text" name="smtp_server" value="<tag:config.smtp_server />" id="smtp_server" />
      <label for="smtp_server"><tag:language.SETTING_SMTP_SERVER /></label>
    </div>
    <div class="col l6 input-field">
      <input type="number" name="smtp_port" value="<tag:config.smtp_port />" id="smtp_port" />
      <label for="smtp_port"><tag:language.SETTING_SMTP_PORT /></label>
    </div>
    <div class="col l6 input-field">
      <input type="text" name="smtp_username" value="<tag:config.smtp_username />" id="smtp_username" />
      <label for="smtp_username"><tag:language.SETTING_SMTP_USERNAME /></label>
    </div>
    <div class="col l6 input-field">
      <input type="password" id="smtp_password" name="smtp_password" value="<tag:config.smtp_password />" />
      <label for="smtp_password"><tag:language.SETTING_SMTP_PASSWORD /></label>
    </div>
    <div class="col l6 input-field">
      <input type="password" id="smtp_pwd_repeat" name="smtp_pwd_repeat" value="<tag:config.smtp_password />" />
      <label for="smtp_pwd_repeat"><tag:language.SETTING_SMTP_PASSWORD_REPEAT /></label>
    </div>
    <div class="col s10 l10 flow-text bold"><i class="material-icons">settings_applications</i> <tag:language.SPECIFIC_SETTINGS /></div>
    <div class="col input-field l6">
      <input type="number" name="sinterval" value="<tag:config.sanity_update />" id="sinterval" />
      <label for="sinterval"><tag:language.SETTING_INTERVAL_SANITY /></label>
    </div>
    <div class="col l6 input-field">
      <input type="number" name="uinterval" value="<tag:config.external_update />" id="uinterval" />
      <label for="uinterval"><tag:language.SETTING_INTERVAL_EXTERNAL /></label>
    </div>
    <div class="col l6 input-field">
      <input type="number" name="rinterval" value="<tag:config.max_announce />" id="rinterval" />
      <label for="rinterval"><tag:language.SETTING_INTERVAL_MAX_REANNOUNCE /></label>
    </div>
    <div class="col l6 input-field">
      <input type="number" name="mininterval" value="<tag:config.min_announce />" id="mininterval" />
      <label for="mininterval"><tag:language.SETTING_INTERVAL_MIN_REANNOUNCE /></label>
    </div>
    <div class="col l6 input-field">
      <input type="number" name="maxpeers" value="<tag:config.max_peers_per_announce />" id="maxpeers" />
      <label for="maxpeers"><tag:language.SETTING_MAX_PEERS /></label>
    </div>
    <div class="input-field l6 col">
      <input type="number" name="cache_duration" value="<tag:config.cache_duration />" id="cache_duration" />
      <label for="cache_duration"><tag:language.CACHE_SITE /></label>
    </div>
    <div class="col input-field l12">
      <p class="col l6">
        <label for="nat">
          <input type="checkbox" name="nat" value="nat" id="nat" <tag:config.nat />/>
          <span><tag:language.SETTING_NAT_CHECK /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="persist">
          <input type="checkbox" name="persist" value="persist"  <tag:config.persist /> id="persist" />
          <span><tag:language.SETTING_PERSISTENT_DB /></span>
        </label>
      </p>
    </div>
    <div class="col input-field l12">
      <p class="col l6">
        <label for="override">
          <input type="checkbox" name="override" value="override"  <tag:config.allow_override_ip /> id="override" />
          <span><tag:language.SETTING_OVERRIDE_IP /></span>
        </label>
      </p>
      <p class="col l6">
        <label for="countbyte">
          <input type="checkbox" name="countbyte" value="countbyte" id="countbyte"  <tag:config.countbyte />/>
          <span><tag:language.SETTING_CALCULATE_SPEED /></span>
        </label>
      </p>
    </div>
    <div class="col input-field l6">
      <tag:config.validation_combo />
      <label><tag:language.SETTING_VALIDATION /></label>
    </div>
    <div class="col input-field l6">
      <p>
      <label for="imagecode">
        <input type="checkbox" name="imagecode" value="imagecode" id="imagecode" <tag:config.imagecode /> />
        <span><tag:language.SETTING_CAPTCHA /></span>
      </label>
      </p>
    </div>
    <div class="col input-field l6">
      <input type="number" name="maxseeds" value="<tag:config.maxpid_seeds />" id="maxseeds" />
      <label for="maxseeds"><tag:language.SETTING_SEEDS_PID /></label>
    </div>
    <div class="col input-field l6">
      <input type="number" name="maxleech" value="<tag:config.maxpid_leech />" id="maxleech" />
      <label for="maxleech"><tag:language.SETTING_LEECHERS_PID /></label>
    </div>
    <div class="input-field col l6">
      <input type="text" name="cut_name" value="<tag:config.cut_name />" id="cut_name" />
      <label for="cut_name"><tag:language.SETTING_CUT_LONG_NAME /></label>
    </div>
    <div class="col input-field l11 s12">
      <span><tag:language.SETTING_FORUM /></span>
      <br>
      <input type="text" name="f_link" value="<tag:config.forum />" id="f_link" />
      <label for="f_link">&nbsp;</label>
    </div>
    <if:ipb_in_use>      
        <div class="col input-field l6">
          <input type="text" name="ipb_autoposter" value="<tag:config.ipb_autoposter />" id="ipb_autoposter" />
          <label for="ipb_autoposter"><tag:language.IPB_AUTO_ID /></label>
        </div>
    </if:ipb_in_use>
    <div class="col s10 l10 flow-text bold"><i class="material-icons">select_all</i> <tag:language.BLOCKS_SETTING /></div>
    <div class="col l10 s10 bold"><i class="material-icons">access_time</i> <tag:language.SETTING_CLOCK /></div>
    <div class="col input-field s10 l10">
      <p class="col">
        <label for="clocktype1">
          <input id="clocktype1" class="with-gap" type="radio" name="clocktype" value="true" <tag:config.clockanalog /> />
          <span><tag:language.CLOCK_ANALOG /></span>
        </label>
      </p>
      <p class="col">
        <label for="clocktype2">
          <input id="clocktype2" class="with-gap" type="radio" name="clocktype" value="false" <tag:config.clockdigital /> />
          <span><tag:language.CLOCK_DIGITAL /></span>
        </label>
      </p>
    </div>
    <div class="col s10 l10 flow-text bold"><i class="material-icons">tune</i> <tag:language.SETTING_FORUMBLOCK /></div>
    <div class="col input-field s10 l10">
      <p class="col">
        <label for="forumblocktype1">
          <input id="forumblocktype1" class="with-gap" type="radio" name="forumblocktype" value="true" <tag:config.forumblockposts /> />
          <span><tag:language.FORUMBLOCK_POSTS /></span>
        </label>
      </p>
      <p class="col">
        <label for="forumblocktype2">
          <input type="radio" id="forumblocktype2" class="with-gap" name="forumblocktype" value="false" <tag:config.forumblocktopics /> />
          <span><tag:language.FORUMBLOCK_TOPICS /></span>
        </label>
      </p>
    </div>
    <div class="col input-field">
      <input type="number" name="newslimit" value="<tag:config.newslimit />" id="newslimit" maxlength="3" />
      <label for="newslimit"><tag:language.SETTING_NUM_NEWS /></label>
    </div>
    <div class="col input-field">
      <input type="number" name="forumlimit" value="<tag:config.forumlimit />" maxlength="3" id="forumlimit" />
      <label for="forumlimit"><tag:language.SETTING_NUM_POSTS /></label>
    </div>
    <div class="col input-field">
      <input type="text" name="last10limit" value="<tag:config.last10limit />" id="last10limit" maxlength="3" />
      <label for="last10limit"><tag:language.SETTING_NUM_LASTTORRENTS /></label>
    </div>
    <div class="col input-field">
      <input type="text" name="mostpoplimit" value="<tag:config.mostpoplimit />" id="mostpoplimit" maxlength="3" />
      <label for="mostpoplimit"><tag:language.SETTING_NUM_TOPTORRENTS /></label>
    </div>
    <div class="col flow-text bold l10 s10"><i class="material-icons">list</i> <tag:language.TORRENT_LIST /></div>
    <div class="col input-field l12">
      <p class="col">
        <label for="comment">
          <input id="comment" type="checkbox" name="comment" value="comment" <tag:config.comment /> />
          <span><tag:language.SETTING_SHOW_COMMENTS /></span>
        </label>
      </p>
      <p class="col">
        <label for="rating">
          <input id="rating" type="checkbox" name="rating" value="rating" <tag:config.rating /> />
          <span><tag:language.SETTING_SHOW_RATING /></span>
        </label>
      </p>
    </div>
    <div class="col center s12 l12">
      <input type="submit" name="write" class="btn" value="<tag:language.FRM_CONFIRM />" />
      &nbsp;&nbsp;&nbsp;
      <input type="submit" name="cancel" class="btn" value="<tag:language.FRM_CANCEL />" />
    </div>
  </form>
</div>
</div>