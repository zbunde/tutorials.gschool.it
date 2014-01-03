module TutorialListHelpers
  def alphabetical_links(file_paths)
    file_paths.sort.map do |file_path|
      link_to file_name(file_path), file_name(file_path)
    end
  end

  def link_list(links)
    output = "<ul>"
    links.each do |link|
      output += "<li>#{link}</li>"
    end
    output += "</ul>"
  end

  def file_name(file_path)
    File.basename(file_path, File.extname(file_path)).split(".")[0]
  end
end
