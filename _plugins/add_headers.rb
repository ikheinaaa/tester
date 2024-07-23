# _plugins/add_headers.rb
Jekyll::Hooks.register :pages, :post_render do |page|
  if page.output_ext == ".html"
    # Add your header here
    page.content = page.content.gsub(
      /<\/head>/i,
      "<meta http-equiv='Permissions-Policy' content='interest-cohort=()' />\n</head>"
    )
  end
end
