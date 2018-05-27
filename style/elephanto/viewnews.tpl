<div class="card-panel transparent">
  <h4 class="no-margin-top bg-like-head"><i class="material-icons left cyan-text" style="font-size: 28pt;">event</i><tag:language.MNU_NEWS /></h4>
  <div class="row bg-like-head">
  <if:news_exists>
    <loop:viewnews>
    <if:can_edit_news>
    <div class="row">
      <div class="col"><button type="button" class="white-text btn btn-flat waves-effect waves-light transparent"><i class="material-icons left">edit</i><tag:viewnews[].add_edit_news /></button></div>
      <if:can_delete_news>
        <div class="col"><button type="button" class="btn btn-flat waves-effect waves-light transparent white-text"><i class="material-icons left">delete</i><tag:viewnews[].delete_news /></button></div>
      </if:can_delete_news>
    </div>
  </if:can_edit_news>
  <div class="container nouvelles">
    <h1><tag:viewnews[].news_title /></h1>
    <div><tag:viewnews[].news /></div>
  </div>
  <div class="flow-text left-align sous-nvles">
    <tag:language.POSTED_BY />:&nbsp;<tag:viewnews[].user_posted /> | 
    <tag:language.POSTED_DATE />:&nbsp;<tag:viewnews[].posted_date />
  </div>
  </loop:viewnews>
  <else:news_exists>
    <div class="flow-text"><tag:language.NO_NEWS /></div>
    <if:can_edit_news_1>
      <tag:insert_news_link />
    </if:can_edit_news_1>
  </if:news_exists>