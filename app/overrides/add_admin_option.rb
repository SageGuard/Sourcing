# # Add dashboard_admin option when creating a new user in spree admin
#
# Deface::Override.new(
#   name: "Add Dashboard_admin option",
#   virtual_path: 'spree/admin/users/_form',
#   insert_after: "[data-hook=admin_user_form_roles]",
#   text: "
#   <strong><%= f.label :dashboard_admin %></strong>
#   <br>
#   <span>Yes </span><%= f.check_box :dashboard_admin %>
#   "
# )
