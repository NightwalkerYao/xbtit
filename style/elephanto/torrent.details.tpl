<script type="text/javascript">
function ShowHide(id,id1) {
    obj = document.getElementsByTagName("div");
    if (obj[id].style.display == 'block'){
     obj[id].style.display = 'none';
     obj[id1].style.display = 'block';
    }
    else {
     obj[id].style.display = 'block';
     obj[id1].style.display = 'none';
    }
}

function windowunder(link)
{
  window.opener.document.location=link;
  window.close();
}
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head" style="padding: 4px 10px"><i class="material-icons left cyan-text" style="font-size: 27pt;">info</i>Détails du Torrent</h4>
  <div class="torrent-infos">
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.FILE />
        <if:MOD>
          <tag:mod_task />
        </if:MOD>
      </div>
      <div class="col l9 s8 m8 left-align bold">
        <tag:torrent.filename />
      </div>
    </div>
    <div class="row">
        <div class="col l3 s4 m4"> Lien Torrent</div>
        <div class="col l9 s8 m8 left-align"><a href="download.php?id=<tag:torrent.info_hash />&amp;f=<tag:torrent.filename />.torrent" class="btn btn-flat waves-effect waves-light bg-dark-neon"><i class="material-icons left">file_download</i>Télécharger le torrent</a></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><i class="material-icons tiny">security</i> <tag:language.INFO_HASH /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.info_hash /></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.CATEGORY_FULL /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.cat_name /></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.RATING /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.rating /></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.SIZE /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.size /></div>
    </div>

  <if:DISPLAY_FILES>
    <div class="row">
      <div class="col l3 s4 m4"><a name="expand" href="#!" class="btn transparent btn-flat waves-effect waves-light cyan-text" onclick="javascript:ShowHide('files','msgfile');"><tag:language.SHOW_HIDE /></a></div>
      <div class="col l9 s8 m8 left-align">
        <div style="display:none" id="files">
          <table class="liste-fichiers bg-like-head stripped">
            <tr>
              <td align="center" class="header"><tag:language.FILE /></td>
              <td align="center" class="header"><tag:language.SIZE /></td>
            </tr>
            <loop:files>
            <tr>
              <td align="center" class="lista" style="text-align:left;" valign="top"><tag:files[].filename /></td>
              <td align="center" class="lista" style="text-align:left;" valign="top"><tag:files[].size /></td>
            </tr>
            </loop:files>
          </table>
        </div>
        <div style="display:block" id="msgfile" align="left"><tag:torrent.numfiles /></div>
      </div>
    </div>
  </if:DISPLAY_FILES>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.ADDED /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.date /></div>
    </div>
  <if:SHOW_UPLOADER>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.UPLOADER /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.uploader /></div>
    </div>
  </if:SHOW_UPLOADER>
  <if:NOT_XBTT>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.SPEED /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.speed /></div>
    </div>
  </if:NOT_XBTT>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.DOWNLOADED /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.downloaded /></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.PEERS /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.seeds />, <tag:torrent.leechers /> = <tag:torrent.peers /></div>
    </div>
  <if:EXTERNAL>
    <div class="row">
      <div class="col l3 s4 m4">Tracker [<tag:torrent.update_url />]</div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.announce_url /></div>
    </div>
    <div class="row">
      <div class="col l3 s4 m4"><tag:language.LAST_UPDATE /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.lastupdate /> (<tag:torrent.lastsuccess />)</div>
    </div>
  </if:EXTERNAL>
    <div class="row bg-like-head">
      <div class="col l3 s4 m4"><tag:language.DESCRIPTION /></div>
      <div class="col l9 s8 m8 left-align"><tag:torrent.description /></div>
    </div>
  </div>
</div>
<div class="card-panel transparent" id="comments">
  <h4 class="bg-like-head no-margin-top" style="padding: 4px 10px;"><i class="material-icons left cyan-text" style="font-size: 28pt;">comment</i>Commentaires</h4>
    <div class="row bg-like-head" style="padding: 0 15px;">
        <if:INSERT_COMMENT>
        <div class="row">
          <div class="col l12 s12 m12 left-align">
             <a class="btn btn-flat waves-light waves-effect transparent cyan-text" href="index.php?page=comment&amp;id=<tag:torrent.info_hash />&amp;usern=<tag:current_username />"><tag:language.NEW_COMMENT /></a>
          </div>
        </div>
        </if:INSERT_COMMENT>
        <if:NO_COMMENTS>
        <div class="row">
          <div class="col red-text bold"><tag:language.NO_COMMENTS /></div>
        </div>
        <else:NO_COMMENTS>
        <loop:comments>
          <div class="row ligne-commentaires">
            <div class="col l2 m3 s3"><tag:comments[].user /></a></div>
            <div class="col l10 m9 s9 left-align">
              <tag:comments[].comment />
              <div class="row transparent"><tag:comments[].date /> | <tag:comments[].delete /></div>
            </div>
          </div>
        </loop:comments>
        </if:NO_COMMENTS>
    </div>
</div>
<div class="row center">
  <tag:torrent_footer />
</div>
