# Add Shop Nav Links

Deface::Override.new(
  name: "custom_main_nav",
  virtual_path: "spree/shared/_main_nav_bar",
  replace: "div#main-nav-bar",
  text: "

  <div id=\"main-nav-bar\" class=\"navbar\">
    <ul class=\"nav navbar-nav\" data-hook>
      <li id=\"main-home-link\" data-hook><%= link_to '<i class=\"fa fa-arrow-left\"></i> Portfolio Site'.html_safe, main_app.root_path %></li>
      <li id=\"home-link\" data-hook><%= link_to \"Shop Home\", spree.root_path %></li>
    </ul>
    <ul class=\"nav navbar-nav navbar-right\" data-hook>
      <li id=\"link-to-cart\" data-hook>
        <noscript>
          <%= link_to Spree.t(:cart), '/cart' %>
        </noscript>
        &nbsp;
      </li>
      <script>Spree.fetch_cart()</script>
    </ul>
  </div>
  "

)
