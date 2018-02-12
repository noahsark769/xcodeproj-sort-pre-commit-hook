require 'xcodeproj'

module XcodeprojSort
  def sort(project_name)
    project = Xcodeproj::Project.open(project_name)
    project.sort
    project.save
  end
  module_function :sort
end