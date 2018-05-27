<div class="card-panel transparent">
  <h4 class="bg-like-head no-margin-top">
    <i class="material-icons left" style="font-size: 27pt">group</i>
    <tag:language.MNU_MEMBERS />
  </h4>
  <form action="index.php" name="ricerca" method="get">
    <input type="hidden" name="page" value="users" />
    <td class="block">&nbsp;</td>
    <div class="col input-field l5">
      <i class="material-icons prefix">account_circle</i>
      <input id="uname" type="text" name="searchtext" maxlength="50" value="<tag:users_search />" />
      <label for="uname"><tag:language.FIND_USER /></label>
    </div>
    <div class="col input-field">
      <i class="material-icons prefix">merge_type</i>
      <select name="level" id="lvl">
        <option value="0" <tag:users_search_level />><tag:language.ALL /></option>
        <tag:users_search_select />
      </select>
      <label for="lvl"><tag:language.USER_LEVEL /></label>
    </div>
    <div class="col">
      <button type="submit" class="btn btn-flat waves-effect waves-light bg-dark-neon" value="<tag:language.SEARCH />"><tag:language.SEARCH /><i class="material-icons left">search</i></button>
    </div>
  </form>
  <br>
  <div class="container" style="clear: both;"><div class="divider bg-dark-neon"></div></div>
  <br>
  <tag:users_pagertop />
    <table class="stripped" width="98%">
      <tr>
        <td class="header" align="center"><tag:users_sort_username /></td>
        <td class="header" align="center"><tag:users_sort_userlevel /></td>
        <td class="header" align="center"><tag:users_sort_joined /></td>
        <td class="header" align="center"><tag:users_sort_lastaccess /></td>
        <td class="header" align="center"><tag:users_sort_country /></td>
        <td class="header" align="center"><tag:users_sort_ratio /></td>
        <td class="header" align="center"><tag:users_pm /></td>
        <td class="header" align="center"><tag:users_edit /></td>
        <td class="header" align="center"><tag:users_delete /></td>
      </tr>
      <if:no_users>
        <tr>
          <td class="lista" colspan="9"><tag:language.NO_USERS_FOUND /></td>
        </tr>
      <else:no_users>
        <loop:users>
          <tr>
            <td class="lista" align="center" style="padding-left:10px;"><tag:users[].username /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].userlevel /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].joined /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].lastconnect /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].flag /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].ratio /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].pm /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].edit /></td>
            <td class="lista" align="center" style="text-align: center;"><tag:users[].delete /></td>
          </tr>
        </loop:users>
      </if:no_users>
    </table>
</div>