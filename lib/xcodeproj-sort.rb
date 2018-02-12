require 'xcodeproj'

module XcodeprojSort
  def sort(project_name, xcodeproj_sort_options)
    project = Xcodeproj::Project.open(project_name)
    project.sort xcodeproj_sort_options
    project.save
  end
  module_function :sort
end