<div class="collection in-lateral-lft">
  <loop:usercp_menu>
    <a href="#!" class="collection-item menu blue-grey-text text-lighten-5">
        <tag:usercp_menu[].title />
    </a>
  <loop:usercp_menu[].menu>
    <a class="collection-item menu" href="<tag:usercp_menu[].menu[].url />"><tag:usercp_menu[].menu[].description /></a>
  </loop:usercp_menu[].menu>
  </loop:usercp_menu>
</div>