<div class="card-panel transparent">
<if:PREVIEW>
  <h4 class="bg-like-head no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">visibility</i>Prévisualisation</h4>
<div width="100%" align="center" class="lista bg-like-head">
<tag:comment_preview />
</div>
</if:PREVIEW>
<div>
    <h4 class="bg-like-head no-margin-top" style="font-size: 27pt"><i class="material-icons left cyan-text" style="font-size: 27pt">comment</i>Ajouter un commentaire</h4>
<div align="center">
  <form enctype="multipart/form-data" name="comment" method="post" action="index.php?page=comment&id=<tag:comment_id />">
  <input type="hidden" name="info_hash" value="<tag:comment_id />" />
    <div class="row no-margin-bottom">
        <div class="col l2 s3 m3"><tag:language.USER_NAME /></div>
        <div class="col l10 s9 m9 left-align"><input name="user" TYPE="text" size="20" value="<tag:comment_username />" maxlength="100" disabled; readonly /></div>
    </div>
    <div class="row no-margin-bottom bg-like-head">
      <div class="col l2 s3 m3"><tag:language.COMMENT_1 />:</div>
      <div class="col l10 s9 m9 left-align"><tag:comment_comment /></div>
    </div>
    <div class="row no-margin-bottom center">
      <div class="col right-align l6 s6 m6"><button type="submit" class="btn btn-flat waves-effect waves-light white-text blue lighten-3" name="confirm" value="<tag:language.FRM_CONFIRM />"><tag:language.FRM_CONFIRM /><i class="material-icons right">send</i></button></div>
      <div class="col left-align l6 s6 m6"><button type="submit" class="btn btn-flat waves-effect waves-light white-text amber lighten-2" name="confirm" value="<tag:language.FRM_PREVIEW />"><i class="material-icons right">visibility</i><tag:language.FRM_PREVIEW /></button></div>
    </div>
  </form>
</div>
</div>
  </div>
