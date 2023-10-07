require 'require_all'
require 'sequel'

class AdminSuspend 

  attr_reader :name

  def initialize( name )
    @name = name
  end

  def suspend_user( user )
    user.suspend
  end

  def reinstate_user( user )
    user.reinstate
  end
  
end