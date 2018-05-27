<script language="javascript" type="text/javascript">
<!--
function update_cat(newimage,blank)
{
  if (newimage!="")
     document.cat_image.src = "<tag:image_url />" + newimage;
  else
     document.cat_image.src = blank;
}
//-->
</script>
<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Manage Categories</h4>
  <div class="row">
    <if:category_add>
      <form name="category_add_new" action="<tag:frm_action />" method="post">
        <div class="col input-field">
          <i class="material-icons prefix">title</i>
          <input type="text" name="category_name" maxlength="20" value="<tag:category_name />" class="validate" id="cname" />
          <label for="cname"><tag:language.CATEGORY_NAME /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">group_work</i>
          <tag:subcat_combo />
          <label><tag:language.CATEGORY_SUB /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">short_text</i>
          <input  name="sort_index" value="<tag:category_sort />" maxlength="10" class="validate" id="cshortt" />
          <label for="cshortt"><tag:language.CATEGORY_SORT_INDEX /></label>
        </div>
        <div class="col input-field">
          <i class="material-icons prefix">image</i>
          <tag:image_combo />
          <label><tag:language.CATEGORY_IMAGE /></label>
        </div>
        <div class="col"><img name="cat_image" src="<tag:category_image />" alt="" border="0" style="float:left;" /></div>
        <div class="col l12 s12 m12 center">
          <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CONFIRM />" />&nbsp;&nbsp;&nbsp;
          <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CANCEL />" />
        </div>
      </form>
    <else:category_add>
  <table class="lista" width="100%" align="center">
  <tr>
    <td class="header" align="center"><tag:language.CATEGORY_SORT_INDEX /></td>
    <td class="header" align="center"><tag:language.CATEGORY_NAME /></td>
    <td class="header" align="center"><tag:language.CATEGORY_IMAGE /></td>
    <td class="header" align="center"><tag:language.EDIT /></td>
    <td class="header" align="center"><tag:language.DELETE /></td>
  </tr>
  <loop:categories>
  <tr>
    <td class="lista" align="center"><tag:categories[].sort_index /></td>
    <td class="lista" align="center"><tag:categories[].name /></td>
    <td class="lista" align="center"><tag:categories[].image /></td>
    <td class="lista" align="center"><tag:categories[].edit /></td>
    <td class="lista" align="center"><tag:categories[].delete /></td>
  </tr>
  </loop:categories>
  <tr>
    <td class="header" align="center" colspan="5"><tag:category_add_new /></td>
  </tr>
  </table>
</if:category_add>
    </div>
  </div>