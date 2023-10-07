require 'require_all'
require 'sequel'

class Suspend 

  attr_reader :name

  def initialize( name )
    @name = name
    @suspended = false
  end
  
  def suspend
    @suspended = true
  end
  
  def reinstate
    @suspended = false
  end
  
end