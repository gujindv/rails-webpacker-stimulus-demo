1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
  # scope macros

  # Concerns macros

  # Constants

  # Attributes related macros
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

  # association macros
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>

  # validation macros

  # callbacks

  # other

  private
    # callback methods
end
<% end -%>
