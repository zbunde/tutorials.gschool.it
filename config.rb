###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

class TerminalTag < Liquid::Block

  def initialize(tag_name, markup, tokens)
    super
  end

  def render(context)
    output = super(context)

    %{<div class="window">
          <nav class="control-window">
            <a href="#finder" class="close" data-rel="close">close</a>
            <a href="#" class="minimize">minimize</a>
            <a href="#" class="deactivate">deactivate</a>
          </nav>
          <h1 class="titleInside">Terminal</h1>
          <div class="container"><div class="terminal">#{promptize(output)}</div></div>
        </div>}
  end

  def promptize(content)
    content = content.strip
    gutters = content.lines.map { |line| gutter(line) }
    lines_of_code = content.lines.map { |line| line_of_code(line) }

    table = "<table><tr>"
    table += "<td class='gutter'><pre class='line-numbers'>#{gutters.join("\n")}</pre></td>"
    table += "<td class='code'><pre><code>#{lines_of_code.join("")}</code></pre></td>"
    table += "</tr></table>"
  end

  def gutter(line)
    gutter_value = line.start_with?(command_character) ? command_character : "&nbsp;"
    "<span class='line-number'>#{gutter_value}</span>"
  end

  def line_of_code(line)
    if line.start_with?(command_character)
      line_class = "command"
      line = line.sub(command_character, '').strip
    else
      line_class = "output"
    end
    "<span class='line #{line_class}'>#{line}</span>"
  end

  def command_character
    "$"
  end

end
Liquid::Template.register_tag('terminal', TerminalTag)
