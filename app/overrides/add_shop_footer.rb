
Deface::Override.new(
  name: "Add Shop Footer",
  virtual_path: 'spree/layouts/spree_application',
  insert_after: "div.container",
  text: "
  <footer class=\"shop-footer\">
      <div class=\"container\">
        <div class=\"row\">
           <div class=\"col-sm-6 col-md-6\">
             <p class=\"text-muted\">Copyright ©2016 all rights reserved</p>
           </div>
           <div class=\"col-sm-4 col-md-4\">
                <ul class=\"footer-nav inline-footer-nav text-muted\">
                  <li><%= link_to \"Terms of Service\", main_app.disclaimers_terms_path %> | </li>
                  <li><%= link_to \"Refund Policy\", main_app.disclaimers_refund_path %> | </li>
                  <li><%= link_to \"Privacy Policy\", main_app.disclaimers_privacy_path %></li>
                </ul>
           </div>
      </div>
    </footer>
  "
)
