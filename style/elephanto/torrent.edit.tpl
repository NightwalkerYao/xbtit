<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head"><i class="material-icons left cyan-text" style="font-size: 27pt;">edit</i>Editer le Torrent</h4>
  <div class="row">
  <form action="<tag:torrent.link />" method="post" name="edit">
    <div class="col input-field block l8 s11 m10">
      <i class="material-icons prefix">title</i>
      <input type="text" name="name" value="<tag:torrent.filename />" class="validate" required id="fname" />
      <label for="fname"><tag:language.FILE /></label>
    </div>
    <div class="col input-field block l8 s11 m10">
      <i class="material-icons prefix">verified_user</i>
      <input type="text" id="hashcode" value="<tag:torrent.info_hash />" readonly class="disabled" />
      <label for="hashcode"><tag:language.INFO_HASH /></label>
    </div>
    <div class="block col input-field">
      <i class="material-icons prefix">group_work</i>
      <tag:torrent.cat_combo />
      <label><tag:language.CATEGORY_FULL /></label>
    </div>
    <div class="block col input-field l12 s12 m12">
      <span><tag:language.DESCRIPTION /></span><br>
      <tag:torrent.description />
    </div>
    <br>
    <div class="container block"><div class="divider bg-dark-neon"></div></div>
    <br>
     <br>
    <div class="col s3 m4 l2"><tag:language.SIZE /></div>
    <div class="col s9 m8 l10"><tag:torrent.size /></div>
    <div class="col s3 m4 l2"><tag:language.ADDED /></div>
    <div class="col s9 m8 l10"><tag:torrent.date /></div>
    <div class="col s3 m4 l2"><tag:language.DOWNLOADED /></div>
    <div class="col s9 m8 l10"><tag:torrent.complete /></div>
    <div class="col s3 m4 l2"><tag:language.PEERS /></div>
    <div class="col s9 m8 l10"><tag:torrent.peers /></div>
    <div class="block"></div>
    <br> <br> 
    <div class="block s12 m12 l10 center">
      <input type="hidden" name="info_hash" value="<tag:torrent.info_hash />" />
      <button type="submit" class="btn" value="<tag:language.FRM_CONFIRM />" name="action">
        <i class="material-icons left">save</i>
        <tag:language.FRM_CONFIRM />
      </button>
      <button type="submit" class="btn red" value="<tag:language.FRM_CANCEL />" name="action">
        <i class="material-icons left">clear</i>
        <tag:language.FRM_CANCEL />
      </button>
    </div>
  </form>
</div>
</div>