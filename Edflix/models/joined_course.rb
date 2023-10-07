require 'require_all'
require 'sequel'

require_rel '../db/db'

class JoinedCourse < Sequel::Model

  def load(params)
    self.user_id = params[:user_id].strip.to_i
    self.course_id = params[:course_id].strip.to_i
  end

  def validate
    super
   
  end
end
