<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Module Settings</h4>
  <div class="row">
<table class="lista" width="100%" cellspacing="1" cellpadding="6">
  <tr>
    <td class="header" width="25"><tag:language.ID_MODULE /></td>
    <td class="header"><tag:language.NAME />         </td>
    <td class="header"><tag:language.TYPE />         </td>
    <td class="header"><tag:language.DATE_CHANGED /> </td>
    <td class="header"><tag:language.DATE_CREATED /> </td>
    <td class="header"><tag:language.ACTIVATED />    </td>
  </tr>
  <loop:modules>
    <tr>
      <td class="lista"><tag:modules[].module_id />             </td>
      <td class="lista"><tag:modules[].module_name />           </td>
      <td class="lista"><tag:modules[].module_type />           </td>
      <td class="lista"><tag:modules[].module_date_changed />   </td>
      <td class="lista"><tag:modules[].module_date_created />   </td>
      <td class="lista"><tag:modules[].module_activated />      </td>
    </tr>
  </loop:modules>
  <tr>
    <td class="lista" colspan="6" style="text-align:right;"><br />
    <tag:language.ACTIVE_MODULES /><tag:nr_active_modules /><br />
    <tag:language.NOT_ACTIVE_MODULES /><tag:nr_not_active_modules /><br />
    <hr align="right" width="100" />
    <tag:language.TOTAL_MODULES /><tag:nr_total_modules />
    </td>
  </tr>
</table>
<br />
<form name="add_module" action="<tag:form_action />" method="post">
  <div class="italic s12 l12"><tag:language.ADD_NEW_MODULE /></div>
  <div class="col input-field">
    <i class="material-icons prefix">title</i>
    <input type="text" name="module_name" id="module_name" />
    <label for="module_name"><tag:language.NAME /></label>
  </div>
  <div class="col input-field">
    <i class="material-icons prefix">group_work</i>
    <select name="module_type">
      <option value="staff"><tag:language.STAFF /></option>
      <option value="misc" selected="selected"><tag:language.MISC /></option>
      <option value="torrent"><tag:language.TORRENT /></option>
      <option value="style"><tag:language.STYLE /></option>
    </select>
    <label><tag:language.TYPE /></label>
  </div>
  <div class="col">
    <input type="submit" class="btn" name="confirm" value="<tag:language.FRM_CONFIRM />" />
  </div>
</form>
    </div>
  </div>