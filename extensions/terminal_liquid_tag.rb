class TerminalTag < Liquid::Block

  def initialize(tag_name, markup, tokens)
    super
  end

  def render(context)
    output = super(context)

    %{<div class="window">
          <nav class="control-window">
            <a href="#" class="close" data-rel="close">close</a>
            <a href="#" class="minimize">minimize</a>
            <a href="#" class="deactivate">deactivate</a>
          </nav>
          <h1 class="titleInside">Terminal</h1>
          <div class="terminal">#{promptize(output)}</div>
        </div>}
  end

  def promptize(content)
    content.strip.lines.map { |line| "<div>#{gutter(line)}#{line_of_code(line)}</div>" }.join("\n")
  end

  def gutter(line)
    gutter_value = line.start_with?(command_character) ? command_character : "&nbsp;"
    "<span class='gutter'>#{gutter_value}</span>"
  end

  def line_of_code(line)
    if line.start_with?(command_character)
      line_class = "command"
      line = line.sub(command_character, '').strip
    else
      line_class = "output"
    end
    "<span class='#{line_class}'>#{line.strip}</span>"
  end

  def command_character
    "$"
  end

end
Liquid::Template.register_tag('terminal', TerminalTag)
