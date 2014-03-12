module TutorialListHelpers
  def alphabetical_links(file_paths)
    complete_files(file_paths).sort.map do |file_path|
      link_to titleize(file_name(file_path)), file_name(file_path)
    end
  end

  def link_list(links)
    output = "<ul>"
    links.each do |link|
      output += "<li>#{link}</li>"
    end
    output + "</ul>"
  end

  def file_name(file_path)
    File.basename(file_path, File.extname(file_path)).split(".")[0]
  end

  def titleize(file_name)
    file_name.gsub("_", " ").capitalize.gsub(/http/i, 'HTTP').gsub(/html/i, 'HTML')
  end

  def complete_files(file_paths)
    file_paths.reject{|f| f.include?("wip")}
  end
end

# branch git testing