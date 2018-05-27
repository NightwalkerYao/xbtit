<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head" style="padding: 5px 10px"><i class="material-icons left cyan-text" style="font-size: 27pt;">list</i>Torrents</h4>
  <div class="row card-panel formulaire rechercher">
    <form action="<tag:torrent_script />" method="get" name="torrent_search">
      <input type="hidden" name="page" value="torrents" />
      <div class="col input-field l9 m10 s12">
        <i class="material-icons prefix">search</i>
        <input type="search" name="search" maxlength="50" value="<tag:torrent_search />" id="searcher" />
        <label for="searcher"><tag:language.TORRENT_SEARCH /></label>
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">group_work</i>
        <tag:torrent_categories_combo />
        <label><tag:language.CATEGORY_FULL /></label> 
      </div>
      <div class="col input-field">
        <i class="material-icons prefix">blur_on</i>
        <select name="active" id="tstatus">
          <option value="0" <tag:torrent_selected_all />><tag:language.ALL /></option>
          <option value="1" <tag:torrent_selected_active />><tag:language.ACTIVE_ONLY /></option>
          <option value="2" <tag:torrent_selected_dead />><tag:language.DEAD_ONLY /></option>
        </select>
        <label for="tstatus"><tag:language.TORRENT_STATUS /></label>
      </div>
      <div class="row center" style="clear: both;">
        <button type="submit" class="btn btn-flat waves-effect waves-light white-text bg-dark-neon"><tag:language.SEARCH /></button>
      </div>
    </form>
  </div>

  <table width="100%">
  <tr>
    <td colspan="2" align="center"> <tag:torrent_pagertop /></td>
  </tr>
  <tr>
    <td>
      <table width="100%" class="lista stripped">      
        <tr class="bg-like-head">
          <td align="center" width="45" class="header"><tag:torrent_header_category /></td>
          <td align="center" class="header"><tag:torrent_header_filename /></td>
          <if:WT>
          <td align="center" width="20" class="header"><tag:torrent_header_waiting /></td>
          <else:WT>
          </if:WT>
          <!-- <td align="center" width="20" class="header"><tag:torrent_header_download /></td> -->
          <td align="center" width="85" class="header"><tag:torrent_header_added /></td>
          <td align="center" width="30" class="header"><tag:torrent_header_seeds /></td>
          <td align="center" width="30" class="header"><tag:torrent_header_leechers /></td>
          <td align="center" width="30" class="header"><tag:torrent_header_complete /></td>
          <if:COM>
          <td align="center" width="30"class="header"><tag:torrent_header_comments /></td>
          </if:COM>
          <else:COM>
           <!-- <if:RAT>
          <td align="center" width="30"class="header"><tag:torrent_header_rating /></td>
          </if:RAT>
          <else:RAT> -->
          <!-- <if:XBTT>
          <else:XBTT>
          <td align="center" width="45" class="header"><tag:torrent_header_speed /></td>
          </if:XBTT>
          <td align="center" width="45" class="header"><tag:torrent_header_average /></td> -->
        </tr>      
        <loop:torrents>
        <tr>
          <td align="center" width="45" class="lista" style="text-align: center;"><tag:torrents[].category /></td>
          <td class="lista" valign="middle" onMouseOver="this.className='post'" onMouseOut="this.className='lista'" style="padding-left:10px;overflow:auto;"><tag:torrents[].filename /></td>
          <if:WT1>
          <td align="center" width="20" class="lista" style="text-align: center;"><tag:torrents[].waiting /></td>
          <else:WT1>
          </if:WT1>
          <!-- <td align="center" width="20" class="lista" style="text-align: center;"><tag:torrents[].download /></td> -->
          <td align="center" width="85" class="lista" style="white-space:wrap; text-align:center;"><tag:torrents[].added /></td>
          <td align="center" width="30" class="lista <tag:torrents[].classe_seeds />" style="text-align: center;"><tag:torrents[].seeds /></td>
          <td align="center" width="30" class="lista <tag:torrents[].classe_leechers />" style="text-align: center;"><tag:torrents[].leechers /></td>
          <td align="center" width="30" class="lista" style="text-align: center;"><tag:torrents[].complete /></td>
           <if:COM1>
          <td align="center" width="30" class="lista" style="text-align: center;"><tag:torrents[].comments /></td>
          </if:COM1>
          <else:COM1>
           <!-- <if:RAT1>
          <td align="center" width="30" class="lista" style="text-align: center;"><tag:torrents[].rating /></td>
          </if:RAT1>
          <else:RAT1> -->
         <!-- <if:XBTT1>
          <else:XBTT1>
          <td align="center" width="45" class="lista" style="text-align: center;"><tag:torrents[].speed /></td>
          </if:XBTT1>
          <td align="center" width="45" class="lista" style="text-align: center;"><tag:torrents[].average /></td> -->
        </tr>
        </loop:torrents>
      </table>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"> <tag:torrent_pagerbottom /></td>
  </tr>
</table>
</div>
  <!-- fin-->