require 'pry'
class Backer
  attr_accessor :backed_projects, :project
  attr_reader :name
  
def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
  project.backer = self
  project.add_backer(self)
  if !@backed_projects.include?(project)
   @backed_projects << project
 end
end
# binding.pry
end