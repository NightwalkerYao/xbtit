<script type="text/javascript">
function form_control()
  {
    if (document.getElementById('title').value.length==0)
      {
      var title=document.createElement('span');
      title.innerHTML='<tag:language.ERR_NO_TITLE />';
      alert(title.innerHTML);
      document.getElementById('title').focus();
      return false;
      }

   return true;
  }
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head"><i class="material-icons left cyan-text" style="font-size: 27pt;">edit</i>Ajouter / Editer une News</h4>
  <div class="row">
  <if:ADD_EDIT>
    <form action="<tag:news.action />" name="news" method="post" onsubmit="return form_control()">
    <div class="flow-text italic"><i class="material-icons">add</i> <tag:language.NEWS_INSERT /></div>
    <input type="hidden" name="action" value="<tag:news.hidden_action />"/>
    <input type="hidden" name="id" value="<tag:news.hidden_id />"/>
    <div class="input-field col block l8 s12 m10">
      <i class="material-icons prefix">edit</i>
      <input type="text" name="title" id="title" maxlength="40" class="validate" required value="<tag:news.news_title />"/>
      <label for="title"><tag:language.NEWS_TITLE /></label>
    </div>
    <div class="col s12 l12 m12 input-field block">
      <tag:language.NEWS_DESCRIPTION /> <br>
      <tag:news.bbcode />
    </div>
    <div class="row center l10 s12 m10 block">
      <button type="submit" class="btn btn-flat waves-effect waves-light blue lighten-1" name="conferma" value="<tag:language.FRM_CONFIRM />">
      <i class="material-icons left">save</i>
      <tag:language.FRM_CONFIRM />
      </button>&nbsp;&nbsp;&nbsp;
      <button type="submit" class="btn btn-flat waves-effect waves-light red lighten-1" name="conferma" value="<tag:language.FRM_CANCEL />">
      <i class="material-icons left">clear</i>
      <tag:language.FRM_CANCEL />
      </button>
    </div>
  </form>
</if:ADD_EDIT>
    </div>
  </div>
