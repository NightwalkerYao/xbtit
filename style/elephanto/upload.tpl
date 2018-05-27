<script type="text/javascript">
function checkExtension()
{
    // for mac/linux, else assume windows
    if (navigator.appVersion.indexOf('Mac') != -1 || navigator.appVersion.indexOf('Linux') != -1)
        var fileSplit = '/';
    else
        var fileSplit = '\\';

    var fileType      = '.torrent';
    var fileName      = document.getElementById('torrent').value; // current value
    var extension     = fileName.substr(fileName.lastIndexOf('.'), fileName.length);
        //extension = extension.toLowerCase();
    if (extension!=fileType)
      {
       alert('<tag:language.ERR_PARSER />');
       return false;
    }
    return true;
}

function CheckForm()
{
  // file extension
  if (checkExtension()==false)
     return false;

  var cat=document.getElementsByName('category')[0];
  // categories
  if (cat.value=='0')
    {
    alert('<tag:language.WRITE_CATEGORY />');
    cat.focus();
    return false;
    }

  var desc=document.getElementsByName('info')[0];

  // description
  if (desc.value.length==0)
    {
    alert('<tag:language.EMPTY_DESCRIPTION />');
    desc.focus();
    return false;
    }
  // all filled...
  return true;
}
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head"><i class="material-icons left cyan-text" style="font-size: 27pt;">cloud_upload</i>Upload de Torrent</h4>
  <div class="row">
    <div class="container left-align">
      <tag:language.INSERT_DATA /><br /><br />
      <tag:language.ANNOUNCE_URL /><br /><b class="cyan-text text-lighten-2"><tag:upload.announces /></b>
    </div>
    <br>
    <br>
    <form name="upload" method="post" onsubmit="return CheckForm();" action="index.php?page=upload" enctype="multipart/form-data">
      <input type="hidden" name="user_id" size="50" value="" />
      <div class="col l10 s12 m10 input-field file-field">
        <div class="btn">
          <span><i class="material-icons left">attach_file</i> <tag:language.TORRENT_FILE /></span>
          <input type="file" id="torrent" name="torrent">
        </div>
        <div class="file-path-wrapper">
          <input class="file-path validate" type="text">
        </div>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">group_work</i>
        <tag:upload_categories_combo />
        <label><tag:language.CATEGORY_FULL /></label>
      </div>
      <div class="col input-field s11 m10 l9" style="clear: both;">
        <i class="material-icons prefix">insert_drive_file</i>
        <input type="text" name="filename" maxlength="200" id="filename" class="validate" />
        <label for="filename"><tag:language.FILE_NAME /></label>
      </div>
      <div class="col input-fielde l9 s12 m10">
        <span><tag:language.TORRENT_ANONYMOUS /></span>
        <br>
        <p class="col"><label for="anonT">
          <input type="radio" id="anonT" name="anonymous" value="false" checked="checked" class="with-gap" />
          <span><tag:language.NO /></span>
          </label></p>
        <p class="col"><label for="anonF">
          <input type="radio" id="anonF" name="anonymous" value="true" class="with-gap" />
          <span><tag:language.YES /></span>
        </label></p>
      </div>
      <div class="row">
        <div class="col input-field l12 center s12 m12">
          <!-- <i class="material-icons prefix">description</i> -->
          <tag:textbbcode />
          <label for="descript"><tag:language.DESCRIPTION /></label>
        </div>
      </div>
    <div class="col l12 s12 m12 center">
      <button type="submit" class="btn btn-flat waves-effect waves-light blue lighten-1" value="<tag:language.FRM_SEND />"><i class="material-icons left">save</i><tag:language.FRM_SEND /></button>
      <button type="reset" class="btn btn-flat waves-effect waves-light red lighten-1" value="<tag:language.FRM_RESET />"><i class="material-icons left">clear</i><tag:language.FRM_RESET /></button>
    </div>
  </form>
</div>
</div>
