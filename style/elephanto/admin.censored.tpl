<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Censored Words</h4>
  <div class="row">
    <form action="<tag:frm_action />" method="post" enctype="multipart/form-data">
      <div class="italic flow-text"><tag:language.CENSORED_NOTE /></div>
      <div class="col input-field l12 s12 m12">
        <textarea name="badwords" id="bwds" class="materialize-textarea"><tag:censored_text /></textarea>
        <label>Bad words</label>
      </div>
      <div class="col s12 l12 center">
        <input type="submit" name="write" class="btn" value="<tag:language.FRM_CONFIRM />" />&nbsp;&nbsp;
        <input type="submit" name="write" class="btn" value="<tag:language.FRM_CANCEL />" />
      </div>
    </form>
</div>
</div>
