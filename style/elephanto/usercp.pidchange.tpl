<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">pets</i><tag:language.RESET_PID /></h4>
  <div class="row">
<form method="post" name="pid" action="<tag:pid_c.frm_action />">
 <if:IS_PEER>
    <div class="row">
      <tag:pid_c.ispeer />
    </div>
 </if:IS_PEER>
      <br>
      <div class="col l3 s4 m4"><tag:language.PID /> actuel:</div>
      <div class="col l9 s4 m4 left-align"><tag:pid_c.userpid /></div>
      <br>
      <br>
      <div class="col right-align">
        <input type="submit" class="btn btn-flat waves-effect waves-light green darken-3 blue-gey-text" name="confirm" <tag:pid_c.reset_disabled /> value="Réinitialiser le PID" />
      </div>
      <div class="col left-align">
        <input type="button" class="btn btn-flat waves-effect waves-light red darken-3 blue-gey-text" name="confirm" onclick="javascript:window.open('<tag:pid_c.frm_cancel />','_self');" value="<tag:language.FRM_CANCEL />" />
      </div>
</form>
        </div>
    </div>
