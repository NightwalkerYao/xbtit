<div class="collection in-lateral-lft">
  <loop:admin_menu>
    <a href="#!" class="collection-item grey-text text-lighten-2 menu">
        <tag:admin_menu[].title />
    </a>
  <loop:admin_menu[].menu>
    <a href="<tag:admin_menu[].menu[].url />" class="collection-item menu"><tag:admin_menu[].menu[].description /></a>
  </loop:admin_menu[].menu>
  </loop:admin_menu>
</div>